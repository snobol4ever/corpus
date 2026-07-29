                        .intel_syntax    noprefix
                        .text
proc_startup:
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
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 3336
                        mov              rdi, rsp
                        mov              ecx, 3336
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 3328], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_α:
                        .section         .rodata
.Lrkfn147:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rbp + 3280]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 99
                                                                                        je    n2_var_α
                                                                                        jmp   n1_assign_α
n0_call_β:
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 3264]
                        mov              rdx, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n3_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx151_0]
                        mov              rsi, qword ptr [rbp + 3216]
                        mov              rdx, qword ptr [rbp + 3224]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n4_var_α
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                                                                                        jmp   n5_lit_integer_α
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n6_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 3248], 6
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n8_assign_var_α
.Lx154_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n6_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx155_0]
                        mov              rsi, qword ptr [rbp + 3152]
                        mov              rdx, qword ptr [rbp + 3160]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n7_var_α
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                                                                                        jmp   n9_lit_integer_α
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n10_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3200]
                        mov              rsi, qword ptr [rbp + 3208]
                        mov              rdx, qword ptr [rbp + 3248]
                        mov              rcx, qword ptr [rbp + 3256]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n4_var_α
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 3184], 6
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n12_assign_var_α
.Lx159_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n10_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx160_0]
                        mov              rsi, qword ptr [rbp + 3072]
                        mov              rdx, qword ptr [rbp + 3080]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n11_lit_integer_α
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                                                                                        jmp   n13_lit_string_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rbp + 2960], 6
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n14_call_α
.Lx161_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3136]
                        mov              rsi, qword ptr [rbp + 3144]
                        mov              rdx, qword ptr [rbp + 3184]
                        mov              rcx, qword ptr [rbp + 3192]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n7_var_α
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 3088], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n15_var_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2936], rax
                        .section         .rodata
.Lrkfn165:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]
                        lea              rsi, [rbp + 2928]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n17_var_α
                                                                                        jmp   n16_assign_α
n14_call_β:
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n18_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              rdx, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n19_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx171_0]
                        mov              rsi, qword ptr [rbp + 3120]
                        mov              rdx, qword ptr [rbp + 3128]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n11_lit_integer_α
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                                                                                        jmp   n21_call_builtin_icon_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n19_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx172_0]
                        mov              rsi, qword ptr [rbp + 2864]
                        mov              rdx, qword ptr [rbp + 2872]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n20_var_α
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                                                                                        jmp   n22_lit_integer_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n23_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3000], rax
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3032], rax
                        .section         .rodata
.Lrkfn176:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn176]
                        lea              rsi, [rbp + 2992]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 99
                                                                                        je    n11_lit_integer_α
                                                                                        jmp   n11_lit_integer_α
n21_call_builtin_icon_β:
                                                                                        jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 2896], 6
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n25_assign_var_α
.Lx177_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n23_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx178_0]
                        mov              rsi, qword ptr [rbp + 2784]
                        mov              rdx, qword ptr [rbp + 2792]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n24_lit_integer_α
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                                                                                        jmp   n26_lit_string_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rbp + 2656], 6
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n27_lit_integer_α
.Lx179_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2848]
                        mov              rsi, qword ptr [rbp + 2856]
                        mov              rdx, qword ptr [rbp + 2896]
                        mov              rcx, qword ptr [rbp + 2904]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n20_var_α
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 2800], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n28_var_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:
                        mov              qword ptr [rbp + 2672], 6
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n29_call_α
.Lx182_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n30_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2616], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2632], rax
                        .section         .rodata
.Lrkfn186:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn186]
                        lea              rsi, [rbp + 2608]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              eax, 99
                                                                                        je    n32_var_α
                                                                                        jmp   n31_assign_α
n29_call_β:
                                                                                        jmp   n32_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx187_0]
                        mov              rsi, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n24_lit_integer_α
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                                                                                        jmp   n33_call_builtin_icon_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              rdx, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                                                                                        jmp   n32_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n34_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2728], rax
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2744], rax
                        .section         .rodata
.Lrkfn192:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn192]
                        lea              rsi, [rbp + 2704]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              eax, 99
                                                                                        je    n24_lit_integer_α
                                                                                        jmp   n24_lit_integer_α
n33_call_builtin_icon_β:
                                                                                        jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx193_0]
                        mov              rsi, qword ptr [rbp + 2528]
                        mov              rdx, qword ptr [rbp + 2536]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n35_var_α
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n36_lit_string_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n37_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n39_var_α
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n37_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx197_0]
                        mov              rsi, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n38_var_α
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n40_lit_integer_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n41_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n43_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:
                        mov              qword ptr [rbp + 2416], 6
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n44_assign_var_α
.Lx202_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n41_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx203_0]
                        mov              rsi, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n42_var_α
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n45_lit_integer_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n46_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n43_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx206_0]
                        mov              rsi, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n35_var_α
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n48_call_builtin_icon_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2368]
                        mov              rsi, qword ptr [rbp + 2376]
                        mov              rdx, qword ptr [rbp + 2416]
                        mov              rcx, qword ptr [rbp + 2424]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n38_var_α
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        mov              qword ptr [rbp + 2352], 6
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n49_assign_var_α
.Lx208_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n46_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx209_0]
                        mov              rsi, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n47_lit_integer_α
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n50_lit_string_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n51_lit_integer_α
.Lx210_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2488], rax
                        .section         .rodata
.Lrkfn212:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn212]
                        lea              rsi, [rbp + 2448]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    n35_var_α
                                                                                        jmp   n35_var_α
n48_call_builtin_icon_β:
                                                                                        jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2304]
                        mov              rsi, qword ptr [rbp + 2312]
                        mov              rdx, qword ptr [rbp + 2352]
                        mov              rcx, qword ptr [rbp + 2360]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n42_var_α
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n52_var_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        mov              qword ptr [rbp + 2112], 6
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n53_lit_integer_α
.Lx215_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n54_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:
                        mov              qword ptr [rbp + 2128], 6
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n55_call_α
.Lx218_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n54_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx219_0]
                        mov              rsi, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n47_lit_integer_α
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n56_call_builtin_icon_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2072], rax
                        .section         .rodata
.Lrkfn221:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn221]
                        lea              rsi, [rbp + 2032]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    n58_var_α
                                                                                        jmp   n57_assign_α
n55_call_β:
                                                                                        jmp   n58_var_α
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2200], rax
                        .section         .rodata
.Lrkfn223:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]
                        lea              rsi, [rbp + 2160]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    n47_lit_integer_α
                                                                                        jmp   n47_lit_integer_α
n56_call_builtin_icon_β:
                                                                                        jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                                                                                        jmp   n58_var_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n59_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n59_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx227_0]
                        mov              rsi, qword ptr [rbp + 1952]
                        mov              rdx, qword ptr [rbp + 1960]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n60_lit_integer_α
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n61_lit_string_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        mov              qword ptr [rbp + 1824], 6
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n62_lit_integer_α
.Lx228_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n63_var_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:
                        mov              qword ptr [rbp + 1840], 6
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n64_call_α
.Lx230_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n65_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1800], rax
                        .section         .rodata
.Lrkfn234:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn234]
                        lea              rsi, [rbp + 1776]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n67_var_α
                                                                                        jmp   n66_assign_α
n64_call_β:
                                                                                        jmp   n67_var_α
#-----------------------------------------------------------------------------------------------------------------------
n65_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx235_0]
                        mov              rsi, qword ptr [rbp + 2000]
                        mov              rdx, qword ptr [rbp + 2008]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n60_lit_integer_α
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n68_call_builtin_icon_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                                                                                        jmp   n67_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n69_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1912], rax
                        .section         .rodata
.Lrkfn240:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn240]
                        lea              rsi, [rbp + 1872]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n60_lit_integer_α
                                                                                        jmp   n60_lit_integer_α
n68_call_builtin_icon_β:
                                                                                        jmp   n60_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n69_iterate_α:
                        mov              qword ptr [rbp + 1728], 0
.Lx242_0:
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        mov              rdx, qword ptr [rbp + 1728]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              rax, 99
                                                                                        je    n70_var_ref_α
                                                                                        jmp   n71_call_builtin_icon_α
n69_iterate_β:
                        inc              qword ptr [rbp + 1728]
                                                                                        jmp   .Lx242_0
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3296]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n72_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        .section         .rodata
.Lrkfn246:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn246]
                        lea              rsi, [rbp + 1680]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n69_iterate_β
                                                                                        jmp   n69_iterate_β
n71_call_builtin_icon_β:
                                                                                        jmp   n69_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n72_iterate_α:
                        mov              qword ptr [rbp + 1600], 0
.Lx248_0:
                        mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              rdx, qword ptr [rbp + 1600]
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              rax, 99
                                                                                        je    n75_var_α
                                                                                        jmp   n73_lit_integer_α
n72_iterate_β:
                        inc              qword ptr [rbp + 1600]
                                                                                        jmp   .Lx248_0
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:
                        mov              qword ptr [rbp + 1648], 6
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n74_assign_var_α
.Lx249_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        mov              rdx, qword ptr [rbp + 1648]
                        mov              rcx, qword ptr [rbp + 1656]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n75_var_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n72_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n76_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n76_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx253_0]
                        mov              rsi, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n77_lit_integer_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n78_call_builtin_icon_α
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:
                        mov              qword ptr [rbp + 1488], 6
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n79_call_α
.Lx254_0:
                        .quad            14
#-----------------------------------------------------------------------------------------------------------------------
n78_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lrkfn256:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rbp + 1520]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n77_lit_integer_α
                                                                                        jmp   n77_lit_integer_α
n78_call_builtin_icon_β:
                                                                                        jmp   n77_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn258:              .string          "simple"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn258]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n81_var_ref_α
                                                                                        jmp   n80_assign_α
n79_call_β:
                                                                                        jmp   n81_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                                                                                        jmp   n81_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n82_random_α
#-----------------------------------------------------------------------------------------------------------------------
n82_random_α:
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n84_var_ref_α
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n83_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_deref_α:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n84_var_ref_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n85_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n86_random_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lrkfn267:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn267]
                        lea              rsi, [rbp + 1360]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n84_var_ref_α
                                                                                        jmp   n84_var_ref_α
n85_call_builtin_icon_β:
                                                                                        jmp   n84_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n86_random_α:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n88_var_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n87_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:
                        mov              qword ptr [rbp + 1328], 6
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n89_assign_var_α
.Lx269_0:
                        .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n90_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              rdx, qword ptr [rbp + 1328]
                        mov              rcx, qword ptr [rbp + 1336]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n88_var_α
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n88_var_α
#-----------------------------------------------------------------------------------------------------------------------
n90_iterate_α:
                        mov              qword ptr [rbp + 1248], 0
.Lx274_0:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1248]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              rax, 99
                                                                                        je    n91_lit_integer_α
                                                                                        jmp   n92_call_builtin_icon_α
n90_iterate_β:
                        inc              qword ptr [rbp + 1248]
                                                                                        jmp   .Lx274_0
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 6
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n93_lit_integer_α
.Lx275_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn277:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n90_iterate_β
                                                                                        jmp   n91_lit_integer_α
n92_call_builtin_icon_β:
                                                                                        jmp   n90_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:
                        mov              qword ptr [rbp + 1168], 6
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n94_call_α
.Lx278_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n94_call_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lrkfn280:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n96_var_ref_α
                                                                                        jmp   n95_assign_α
n94_call_β:
                                                                                        jmp   n96_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                                                                                        jmp   n96_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n97_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n98_lit_integer_α
.Lx284_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        mov              qword ptr [rbp + 1040], 6
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n99_to_α
.Lx285_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n99_to_α:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1024], 6
                        mov              qword ptr [rbp + 1032], rax
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1040], 6
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1008], rax
.Lx287_0:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rcx, qword ptr [rbp + 1048]
                        cmp              rax, rcx
                                                                                        jg    n103_var_ref_α
                        mov              qword ptr [rbp + 992], 6
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n100_subscript_α
n99_to_β:
                        inc              qword ptr [rbp + 1008]
                                                                                        jmp   .Lx287_0
#-----------------------------------------------------------------------------------------------------------------------
n100_subscript_α:
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n99_to_β
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n101_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n101_deref_α:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n99_to_β
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n102_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn291:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn291]
                        lea              rsi, [rbp + 944]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n99_to_β
                                                                                        jmp   n99_to_β
n102_call_builtin_icon_β:
                                                                                        jmp   n99_to_β
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n104_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n105_lit_integer_α
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n106_lit_integer_α
.Lx295_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:
                        mov              qword ptr [rbp + 880], 6
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n107_to_α
.Lx296_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n107_to_α:
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 864], 6
                        mov              qword ptr [rbp + 872], rax
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 880], 6
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 848], rax
.Lx298_0:
                        mov              rax, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 888]
                        cmp              rax, rcx
                                                                                        jg    n109_lit_integer_α
                        mov              qword ptr [rbp + 832], 6
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n108_binop_α
n107_to_β:
                        inc              qword ptr [rbp + 848]
                                                                                        jmp   .Lx298_0
#-----------------------------------------------------------------------------------------------------------------------
n108_binop_α:
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n110_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:
                        mov              qword ptr [rbp + 704], 6
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n111_lit_integer_α
.Lx300_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n110_subscript_α:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n107_to_β
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n112_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_integer_α:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n113_call_α
.Lx302_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n112_deref_α:
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n107_to_β
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n114_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn305:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn305]
                        lea              rsi, [rbp + 656]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n116_lit_integer_α
                                                                                        jmp   n115_assign_α
n113_call_β:
                                                                                        jmp   n116_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn307:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn307]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n107_to_β
                                                                                        jmp   n107_to_β
n114_call_builtin_icon_β:
                                                                                        jmp   n107_to_β
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                                                                                        jmp   n116_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n117_lit_integer_α
.Lx309_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n118_call_α
.Lx310_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn312:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn312]
                        lea              rsi, [rbp + 560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n120_var_α
                                                                                        jmp   n119_assign_α
n118_call_β:
                                                                                        jmp   n120_var_α
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                                                                                        jmp   n120_var_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n121_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n121_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx316_0]
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n122_var_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n123_deref_α
.Lx316_0:
                        .quad            .Lx316_0_s
.Lx316_0_s:
                        .string          "f1"
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n124_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n123_deref_α:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n122_var_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n126_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n124_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx320_0]
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n125_var_ref_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n127_deref_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "f2"
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n128_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n129_binop_α
.Lx323_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n127_deref_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n125_var_ref_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n130_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n128_iterate_α:
                        mov              qword ptr [rbp + 240], 0
.Lx326_0:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 240]
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              rax, 99
                                                                                        je    n132_lit_string_α
                                                                                        jmp   n131_deref_α
n128_iterate_β:
                        inc              qword ptr [rbp + 240]
                                                                                        jmp   .Lx326_0
#-----------------------------------------------------------------------------------------------------------------------
n129_binop_α:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 6
                                                                                        jne   .Lx327_0
                        mov              rax, qword ptr [rbp + 504]
                        mov              rcx, 10
                        add              rax, rcx
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n133_assign_var_α
.Lx327_0:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n122_var_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n133_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n134_binop_α
.Lx328_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n131_deref_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n132_lit_string_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n135_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n136_disjunction_α
.Lx330_0:
                        .quad            .Lx330_0_s
.Lx330_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_var_α:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n122_var_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n134_binop_α:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 6
                                                                                        jne   .Lx332_0
                        mov              rax, qword ptr [rbp + 408]
                        mov              rcx, 20
                        add              rax, rcx
                        mov              qword ptr [rbp + 384], 6
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n137_assign_var_α
.Lx332_0:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n125_var_ref_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n137_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n138_binop_α
.Lx333_0:
                        .quad            70
#-----------------------------------------------------------------------------------------------------------------------
n136_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n140_var_α
n136_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx335_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n139_call_builtin_icon_α
.Lx335_0:
                        cmp              eax, 1
                                                                                        jne   .Lx335_1
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n139_call_builtin_icon_α
.Lx335_1:
                        cmp              eax, 2
                                                                                        jne   .Lx335_2
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n139_call_builtin_icon_α
.Lx335_2:
                                                                                        jmp   n139_call_builtin_icon_α
n136_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n141_iterate_β
                        cmp              eax, 1
                                                                                        je    n143_iterate_β
                                                                                        jmp   n136_disjunction_af
n136_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n142_var_α
                        cmp              eax, 2
                                                                                        je    n144_lit_string_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_var_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n125_var_ref_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n125_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n138_binop_α:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 6
                                                                                        jne   .Lx337_0
                        mov              rax, qword ptr [rbp + 312]
                        mov              rcx, 70
                        add              rax, rcx
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n145_assign_var_α
.Lx337_0:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n132_lit_string_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n145_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn339:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn339]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n136_disjunction_β
                                                                                        jmp   n136_disjunction_β
n139_call_builtin_icon_β:
                                                                                        jmp   n136_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n141_iterate_α
n140_var_β:
                                                                                        jmp   n136_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n141_iterate_α:
                        mov              qword ptr [rbp + 128], 0
.Lx343_0:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 128]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              rax, 99
                                                                                        je    n136_disjunction_af
                                                                                        jmp   n136_disjunction_as
n141_iterate_β:
                        inc              qword ptr [rbp + 128]
                                                                                        jmp   .Lx343_0
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n143_iterate_α
n142_var_β:
                                                                                        jmp   n136_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n143_iterate_α:
                        mov              qword ptr [rbp + 176], 0
.Lx347_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 176]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              rax, 99
                                                                                        je    n136_disjunction_af
                                                                                        jmp   n136_disjunction_as
n143_iterate_β:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx347_0
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n136_disjunction_as
n144_lit_string_β:
                                                                                        jmp   n136_disjunction_af
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n145_assign_var_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n132_lit_string_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n128_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 3328]
                        add              rsp, 3336
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 3328]
                        add              rsp, 3336
                        ret
                        .section         .note.GNU-stack,"",@progbits
