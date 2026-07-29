                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_rtest_α
proc_rtest_α:
                        .global          proc_rtest_α
                        .global          proc_rtest_β
                        .global          proc_rtest_γ
                        .global          proc_rtest_ω
                        sub              rsp, 4304
                        mov              [rsp + 4280], rcx
                        mov              [rsp + 4288], rdx
                        mov              [rsp + 4296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 4256
                        mov              edx, 4272
                        call             rt_jmp_frame_lexprep2@PLT
proc_rtest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 3312], 0
                        mov              qword ptr [rbp + 3320], 0
                        mov              dword ptr [rbp + 3328], 0
                                                                                        jmp   n2_var_ref_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 3328]
                        cmp              eax, 0
                                                                                        jne   .Lx149_0
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n1_call_builtin_icon_α
.Lx149_0:
                                                                                        jmp   n1_call_builtin_icon_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 3328]
                                                                                        jmp   n1_call_builtin_icon_α
n0_disjunction_af:
                        add              dword ptr [rbp + 3328], 1
                        mov              eax, dword ptr [rbp + 3328]
                                                                                        jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn151:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rbp + 3296]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                        cmp              eax, 99
                                                                                        je    n4_keyword_icon_α
                                                                                        jmp   n4_keyword_icon_α
n1_call_builtin_icon_β:
                                                                                        jmp   n4_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052352
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                                                                                        jmp   n5_nulltest_var_α
n2_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n3_conjunction_α:
                                                                                        jmp   n0_disjunction_as
n3_conjunction_β:
                                                                                        jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n4_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx155_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n11_keyword_icon_α
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n6_lit_integer_α
n4_keyword_icon_β:
                                                                                        jmp   n11_keyword_icon_α
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n5_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 4192]
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 4192]
                        mov              rsi, qword ptr [rbp + 4200]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4208], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4216], rax
                                                                                        jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 3200], 6
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n8_call_builtin_icon_α
.Lx157_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 4240], 6
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rbp + 4248], rax
                                                                                        jmp   n9_assign_var_α
.Lx158_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3128], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3144], rax
                        .section         .rodata
.Lrkfn160:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn160]
                        lea              rsi, [rbp + 3120]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 99
                                                                                        je    n11_keyword_icon_α
                                                                                        jmp   n10_lit_string_α
n8_call_builtin_icon_β:
                                                                                        jmp   n11_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_var_α:
                        mov              rdi, qword ptr [rbp + 4208]
                        mov              rsi, qword ptr [rbp + 4216]
                        mov              rdx, qword ptr [rbp + 4240]
                        mov              rcx, qword ptr [rbp + 4248]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx
                                                                                        jmp   n12_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 3216], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n13_lit_integer_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "  i  "
#-----------------------------------------------------------------------------------------------------------------------
n11_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx163_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n21_keyword_icon_α
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n14_lit_integer_α
n11_keyword_icon_β:
                                                                                        jmp   n21_keyword_icon_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 4032], 6
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n15_lit_integer_α
.Lx164_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 3248], 6
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n16_random_α
.Lx165_0:
                        .quad            9999
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 2944], 6
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n17_call_builtin_icon_α
.Lx166_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 4048], 6
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 4056], rax
                                                                                        jmp   n18_lit_integer_α
.Lx167_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n16_random_α:
                        mov              rdi, qword ptr [rbp + 3248]
                        mov              rsi, qword ptr [rbp + 3256]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n11_keyword_icon_α
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                                                                                        jmp   n19_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2872], rax
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2888], rax
                        .section         .rodata
.Lrkfn170:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn170]
                        lea              rsi, [rbp + 2864]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              eax, 99
                                                                                        je    n21_keyword_icon_α
                                                                                        jmp   n20_lit_string_α
n17_call_builtin_icon_β:
                                                                                        jmp   n21_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rbp + 4064], 6
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 4072], rax
                                                                                        jmp   n22_lit_integer_α
.Lx171_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n19_deref_α:
                        mov              rdi, qword ptr [rbp + 3232]
                        mov              rsi, qword ptr [rbp + 3240]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n11_keyword_icon_α
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                                                                                        jmp   n23_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 2960], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n24_lit_integer_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "  i  "
#-----------------------------------------------------------------------------------------------------------------------
n21_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx174_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n32_keyword_icon_α
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n25_lit_integer_α
n21_keyword_icon_β:
                                                                                        jmp   n32_keyword_icon_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 4080], 6
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rbp + 4088], rax
                                                                                        jmp   n26_lit_integer_α
.Lx175_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3048], rax
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3064], rax
                        mov              rax, qword ptr [rbp + 3264]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 3080], rax
                        .section         .rodata
.Lrkfn177:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn177]
                        lea              rsi, [rbp + 3040]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 99
                                                                                        je    n11_keyword_icon_α
                                                                                        jmp   n11_keyword_icon_α
n23_call_builtin_icon_β:
                                                                                        jmp   n11_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rbp + 2992], 6
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n27_random_α
.Lx178_0:
                        .quad            9999
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        mov              qword ptr [rbp + 2592], 6
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n28_call_builtin_icon_α
.Lx179_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        mov              qword ptr [rbp + 4096], 6
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   n29_lit_integer_α
.Lx180_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n27_random_α:
                        mov              rdi, qword ptr [rbp + 2992]
                        mov              rsi, qword ptr [rbp + 3000]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n21_keyword_icon_α
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   n30_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2520], rax
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2536], rax
                        .section         .rodata
.Lrkfn183:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn183]
                        lea              rsi, [rbp + 2512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              eax, 99
                                                                                        je    n32_keyword_icon_α
                                                                                        jmp   n31_lit_string_α
n28_call_builtin_icon_β:
                                                                                        jmp   n32_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        mov              qword ptr [rbp + 4112], 6
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rbp + 4120], rax
                                                                                        jmp   n33_lit_integer_α
.Lx184_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n30_deref_α:
                        mov              rdi, qword ptr [rbp + 2976]
                        mov              rsi, qword ptr [rbp + 2984]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n21_keyword_icon_α
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n34_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 2608], 1
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n35_lit_integer_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "  r  "
#-----------------------------------------------------------------------------------------------------------------------
n32_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx187_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n43_keyword_icon_α
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n36_lit_integer_α
n32_keyword_icon_β:
                                                                                        jmp   n43_keyword_icon_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        mov              qword ptr [rbp + 4128], 6
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n37_lit_integer_α
.Lx188_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2792], rax
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2824], rax
                        .section         .rodata
.Lrkfn190:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn190]
                        lea              rsi, [rbp + 2784]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 99
                                                                                        je    n21_keyword_icon_α
                                                                                        jmp   n21_keyword_icon_α
n34_call_builtin_icon_β:
                                                                                        jmp   n21_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rbp + 2704], 6
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n38_lit_integer_α
.Lx191_0:
                        .quad            10000
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 6
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n39_call_builtin_icon_α
.Lx192_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        mov              qword ptr [rbp + 4144], 6
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n40_lit_integer_α
.Lx193_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        mov              qword ptr [rbp + 2736], 6
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n41_random_α
.Lx194_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2184], rax
                        .section         .rodata
.Lrkfn196:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn196]
                        lea              rsi, [rbp + 2160]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    n43_keyword_icon_α
                                                                                        jmp   n42_lit_string_α
n39_call_builtin_icon_β:
                                                                                        jmp   n43_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:
                        mov              qword ptr [rbp + 4160], 6
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 4168], rax
                                                                                        jmp   n44_lit_integer_α
.Lx197_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n41_random_α:
                        mov              rdi, qword ptr [rbp + 2736]
                        mov              rsi, qword ptr [rbp + 2744]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n32_keyword_icon_α
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n45_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n46_lit_integer_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "  r  "
#-----------------------------------------------------------------------------------------------------------------------
n43_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx200_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n57_keyword_icon_α
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n47_lit_integer_α
n43_keyword_icon_β:
                                                                                        jmp   n57_keyword_icon_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:
                        mov              qword ptr [rbp + 4176], 6
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rbp + 4184], rax
                                                                                        jmp   n48_call_α
.Lx201_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n45_deref_α:
                        mov              rdi, qword ptr [rbp + 2720]
                        mov              rsi, qword ptr [rbp + 2728]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n32_keyword_icon_α
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   n49_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:
                        mov              qword ptr [rbp + 2352], 6
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n50_lit_integer_α
.Lx203_0:
                        .quad            10000
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rbp + 1984], 6
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n51_call_builtin_icon_α
.Lx204_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n48_call_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 3864], rax
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 3880], rax
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 3896], rax
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 3912], rax
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 3928], rax
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 3944], rax
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 3960], rax
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 3976], rax
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 3992], rax
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4008], rax
                        .section         .rodata
.Lrkfn206:              .string          "r10"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn206]
                        lea              rsi, [rbp + 3856]
                        mov              edx, 10
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        cmp              eax, 99
                                                                                        je    n53_make_list_α
                                                                                        jmp   n52_assign_α
n48_call_β:
                                                                                        jmp   n53_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n49_op75_α:
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 7
                                                                                        je    .Lx208_1
                        cmp              eax, 6
                                                                                        jne   .Lx208_0
                        mov              eax, dword ptr [rbp + 2704]
                        cmp              eax, 6
                                                                                        jne   .Lx208_0
.Lx208_1:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n54_binop_α
.Lx208_0:
                        lea              rdi, [rbp + 2752]
                        lea              rsi, [rbp + 2704]
                        lea              rdx, [rbp + 2688]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n54_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        mov              qword ptr [rbp + 2384], 6
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n55_random_α
.Lx209_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn211:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn211]
                        lea              rsi, [rbp + 1904]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n57_keyword_icon_α
                                                                                        jmp   n56_lit_string_α
n51_call_builtin_icon_β:
                                                                                        jmp   n57_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              rdx, qword ptr [rbp + 3848]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n53_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n53_make_list_α:
                        lea              rdi, [rbp + 3840]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                                                                                        jmp   n58_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_α:
                        mov              eax, dword ptr [rbp + 2688]
                        cmp              eax, 6
                                                                                        jne   .Lx215_0
                        mov              rax, 10000
                        mov              rcx, qword ptr [rbp + 2696]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 2672], 6
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n59_call_builtin_icon_α
.Lx215_0:
                        mov              rdi, qword ptr [rbp + 2704]
                        mov              rsi, qword ptr [rbp + 2712]
                        mov              rdx, qword ptr [rbp + 2688]
                        mov              rcx, qword ptr [rbp + 2696]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n32_keyword_icon_α
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n59_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n55_random_α:
                        mov              rdi, qword ptr [rbp + 2384]
                        mov              rsi, qword ptr [rbp + 2392]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n43_keyword_icon_α
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n60_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 2000], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n61_lit_string_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "  s  "
#-----------------------------------------------------------------------------------------------------------------------
n57_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx218_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n73_keyword_icon_α
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n62_lit_integer_α
n57_keyword_icon_β:
                                                                                        jmp   n73_keyword_icon_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              rdx, qword ptr [rbp + 3832]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n63_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                        .section         .rodata
.Lrkfn221:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn221]
                        lea              rsi, [rbp + 2640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    n32_keyword_icon_α
                                                                                        jmp   n64_call_builtin_icon_α
n59_call_builtin_icon_β:
                                                                                        jmp   n32_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n60_deref_α:
                        mov              rdi, qword ptr [rbp + 2368]
                        mov              rsi, qword ptr [rbp + 2376]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n43_keyword_icon_α
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n65_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n66_random_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:
                        mov              qword ptr [rbp + 1728], 6
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n67_call_builtin_icon_α
.Lx224_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn226:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn226]
                        lea              rsi, [rbp + 3808]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              eax, 99
                                                                                        je    n69_lit_integer_α
                                                                                        jmp   n68_assign_α
n63_call_builtin_icon_β:
                                                                                        jmp   n69_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2472], rax
                        .section         .rodata
.Lrkfn228:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rbp + 2432]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 99
                                                                                        je    n32_keyword_icon_α
                                                                                        jmp   n32_keyword_icon_α
n64_call_builtin_icon_β:
                                                                                        jmp   n32_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n65_op75_α:
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 7
                                                                                        je    .Lx230_1
                        cmp              eax, 6
                                                                                        jne   .Lx230_0
                        mov              eax, dword ptr [rbp + 2352]
                        cmp              eax, 6
                                                                                        jne   .Lx230_0
.Lx230_1:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n70_binop_α
.Lx230_0:
                        lea              rdi, [rbp + 2400]
                        lea              rsi, [rbp + 2352]
                        lea              rdx, [rbp + 2336]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n70_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n66_random_α:
                        mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n57_keyword_icon_α
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n71_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1672], rax
                        .section         .rodata
.Lrkfn233:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]
                        lea              rsi, [rbp + 1648]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n73_keyword_icon_α
                                                                                        jmp   n72_lit_string_α
n67_call_builtin_icon_β:
                                                                                        jmp   n73_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              rdx, qword ptr [rbp + 3800]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n69_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:
                        mov              qword ptr [rbp + 3488], 6
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n74_lit_integer_α
.Lx235_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n70_binop_α:
                        mov              eax, dword ptr [rbp + 2336]
                        cmp              eax, 6
                                                                                        jne   .Lx236_0
                        mov              rax, 10000
                        mov              rcx, qword ptr [rbp + 2344]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 2320], 6
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n75_call_builtin_icon_α
.Lx236_0:
                        mov              rdi, qword ptr [rbp + 2352]
                        mov              rsi, qword ptr [rbp + 2360]
                        mov              rdx, qword ptr [rbp + 2336]
                        mov              rcx, qword ptr [rbp + 2344]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n43_keyword_icon_α
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n75_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n71_deref_α:
                        mov              rdi, qword ptr [rbp + 2016]
                        mov              rsi, qword ptr [rbp + 2024]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n57_keyword_icon_α
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n76_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n77_lit_string_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "  s  "
#-----------------------------------------------------------------------------------------------------------------------
n73_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx239_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n86_keyword_icon_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n78_lit_integer_α
n73_keyword_icon_β:
                                                                                        jmp   n86_keyword_icon_α
.Lx239_0:
                        .quad            .Lx239_0_s
.Lx239_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:
                        mov              qword ptr [rbp + 3504], 6
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n79_to_α
.Lx240_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2296], rax
                        .section         .rodata
.Lrkfn242:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn242]
                        lea              rsi, [rbp + 2288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n43_keyword_icon_α
                                                                                        jmp   n80_call_builtin_icon_α
n75_call_builtin_icon_β:
                                                                                        jmp   n43_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1864], rax
                        .section         .rodata
.Lrkfn244:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]
                        lea              rsi, [rbp + 1824]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n57_keyword_icon_α
                                                                                        jmp   n57_keyword_icon_α
n76_call_builtin_icon_β:
                                                                                        jmp   n57_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 1776], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n81_random_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        mov              qword ptr [rbp + 1472], 6
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n82_call_builtin_icon_α
.Lx246_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n79_to_α:
                        mov              rdi, qword ptr [rbp + 3488]
                        mov              rsi, qword ptr [rbp + 3496]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3488], 6
                        mov              qword ptr [rbp + 3496], rax
                        mov              rdi, qword ptr [rbp + 3504]
                        mov              rsi, qword ptr [rbp + 3512]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3504], 6
                        mov              qword ptr [rbp + 3512], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3472], rax
.Lx248_0:
                        mov              rax, qword ptr [rbp + 3472]
                        mov              rcx, qword ptr [rbp + 3512]
                        cmp              rax, rcx
                                                                                        jg    n145_var_α
                        mov              qword ptr [rbp + 3456], 6
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n83_assign_α
n79_to_β:
                        inc              qword ptr [rbp + 3472]
                                                                                        jmp   .Lx248_0
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2120], rax
                        .section         .rodata
.Lrkfn250:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn250]
                        lea              rsi, [rbp + 2080]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n43_keyword_icon_α
                                                                                        jmp   n43_keyword_icon_α
n80_call_builtin_icon_β:
                                                                                        jmp   n43_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n81_random_α:
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n73_keyword_icon_α
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n84_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1416], rax
                        .section         .rodata
.Lrkfn253:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn253]
                        lea              rsi, [rbp + 1392]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n86_keyword_icon_α
                                                                                        jmp   n85_lit_string_α
n82_call_builtin_icon_β:
                                                                                        jmp   n86_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              rdx, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                                                                                        jmp   n87_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n84_deref_α:
                        mov              rdi, qword ptr [rbp + 1760]
                        mov              rsi, qword ptr [rbp + 1768]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n73_keyword_icon_α
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n88_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n89_lit_charset_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "  c  "
#-----------------------------------------------------------------------------------------------------------------------
n86_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx257_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n98_keyword_icon_α
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n90_lit_integer_α
n86_keyword_icon_β:
                                                                                        jmp   n98_keyword_icon_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n87_bound_α:
                        mov              qword ptr [rbp + 3520], rsp
                                                                                        jmp   n91_var_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lrkfn261:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn261]
                        lea              rsi, [rbp + 1568]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n73_keyword_icon_α
                                                                                        jmp   n73_keyword_icon_α
n88_call_builtin_icon_β:
                                                                                        jmp   n73_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_charset_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              dword ptr [rbp + 1524], -1
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n92_random_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 6
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n93_call_builtin_icon_α
.Lx263_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                                                                                        jmp   n94_var_α
#-----------------------------------------------------------------------------------------------------------------------
n92_random_α:
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n86_keyword_icon_α
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n96_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lrkfn267:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn267]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n98_keyword_icon_α
                                                                                        jmp   n97_lit_string_α
n93_call_builtin_icon_β:
                                                                                        jmp   n98_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 3784], rax
                                                                                        jmp   n99_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052320
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n96_deref_α:
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n86_keyword_icon_α
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n101_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n102_lit_charset_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "  c  "
#-----------------------------------------------------------------------------------------------------------------------
n98_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx274_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n111_keyword_icon_α
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n103_lit_integer_α
n98_keyword_icon_β:
                                                                                        jmp   n111_keyword_icon_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3720], rax
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3736], rax
                        .section         .rodata
.Lrkfn276:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rbp + 3712]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              eax, 99
                                                                                        je    n95_var_ref_α
                                                                                        jmp   n95_var_ref_α
n99_call_builtin_icon_β:
                                                                                        jmp   n95_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n104_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lrkfn280:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n86_keyword_icon_α
                                                                                        jmp   n86_keyword_icon_α
n101_call_builtin_icon_β:
                                                                                        jmp   n86_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_charset_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              dword ptr [rbp + 1268], -1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n106_random_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n107_call_builtin_icon_α
.Lx282_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n104_subscript_α:
                        mov              rdi, qword ptr [rbp + 3584]
                        mov              rsi, qword ptr [rbp + 3592]
                        mov              rdx, qword ptr [rbp + 3600]
                        mov              rcx, qword ptr [rbp + 3608]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n105_unmark_α
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                                                                                        jmp   n108_var_α
#-----------------------------------------------------------------------------------------------------------------------
n105_unmark_α:
                        mov              rsp, qword ptr [rbp + 3520]
                                                                                        jmp   n79_to_β
#-----------------------------------------------------------------------------------------------------------------------
n106_random_α:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n98_keyword_icon_α
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n109_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn288:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]
                        lea              rsi, [rbp + 880]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n111_keyword_icon_α
                                                                                        jmp   n110_lit_string_α
n107_call_builtin_icon_β:
                                                                                        jmp   n111_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n112_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n109_deref_α:
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n98_keyword_icon_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n113_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n114_var_ref_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          "  L  "
#-----------------------------------------------------------------------------------------------------------------------
n111_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx293_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n122_keyword_icon_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n115_lit_integer_α
n111_keyword_icon_β:
                                                                                        jmp   n122_keyword_icon_α
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n112_op75_α:
                        mov              eax, dword ptr [rbp + 4256]
                        cmp              eax, 7
                                                                                        je    .Lx295_1
                        cmp              eax, 6
                                                                                        jne   .Lx295_0
                        mov              eax, dword ptr [rbp + 4256]
                        cmp              eax, 6
                                                                                        jne   .Lx295_0
.Lx295_1:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n116_unop_α
.Lx295_0:
                        lea              rdi, [rbp + 4256]
                        lea              rsi, [rbp + 4256]
                        lea              rdx, [rbp + 3664]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n116_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn297:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn297]
                        lea              rsi, [rbp + 1056]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n98_keyword_icon_α
                                                                                        jmp   n98_keyword_icon_α
n113_call_builtin_icon_β:
                                                                                        jmp   n98_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n117_random_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:
                        mov              qword ptr [rbp + 704], 6
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n118_call_builtin_icon_α
.Lx300_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n116_unop_α:
                        mov              rdi, qword ptr [rbp + 3664]
                        mov              rsi, qword ptr [rbp + 3672]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                                                                                        jmp   n119_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n117_random_α:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n111_keyword_icon_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n120_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn304:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn304]
                        lea              rsi, [rbp + 624]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n122_keyword_icon_α
                                                                                        jmp   n121_lit_string_α
n118_call_builtin_icon_β:
                                                                                        jmp   n122_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3616]
                        mov              rsi, qword ptr [rbp + 3624]
                        mov              rdx, qword ptr [rbp + 3648]
                        mov              rcx, qword ptr [rbp + 3656]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n105_unmark_α
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                                                                                        jmp   n123_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n120_deref_α:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n111_keyword_icon_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n124_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n125_var_ref_α
.Lx307_0:
                        .quad            .Lx307_0_s
.Lx307_0_s:
                        .string          "  L  "
#-----------------------------------------------------------------------------------------------------------------------
n122_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx308_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n131_keyword_icon_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n126_lit_integer_α
n122_keyword_icon_β:
                                                                                        jmp   n131_keyword_icon_α
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n123_conjunction_α:
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n105_unmark_α
n123_conjunction_β:
                                                                                        jmp   n105_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn311:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn311]
                        lea              rsi, [rbp + 800]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n111_keyword_icon_α
                                                                                        jmp   n111_keyword_icon_α
n124_call_builtin_icon_β:
                                                                                        jmp   n111_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n127_random_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n128_call_builtin_icon_α
.Lx314_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n127_random_α:
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n122_keyword_icon_α
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n129_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn317:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn317]
                        lea              rsi, [rbp + 368]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n131_keyword_icon_α
                                                                                        jmp   n130_lit_string_α
n128_call_builtin_icon_β:
                                                                                        jmp   n131_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n129_deref_α:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n122_keyword_icon_α
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n132_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n133_var_ref_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "  R  "
#-----------------------------------------------------------------------------------------------------------------------
n131_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx320_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n139_return_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n134_lit_integer_α
n131_keyword_icon_β:
                                                                                        jmp   n139_return_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn322:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn322]
                        lea              rsi, [rbp + 544]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n122_keyword_icon_α
                                                                                        jmp   n122_keyword_icon_α
n132_call_builtin_icon_β:
                                                                                        jmp   n122_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n135_random_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n136_call_builtin_icon_α
.Lx325_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n135_random_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n131_keyword_icon_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n137_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn328:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn328]
                        lea              rsi, [rbp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n139_return_α
                                                                                        jmp   n138_lit_string_α
n136_call_builtin_icon_β:
                                                                                        jmp   n139_return_α
#-----------------------------------------------------------------------------------------------------------------------
n137_deref_α:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n131_keyword_icon_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n140_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n141_var_ref_α
.Lx330_0:
                        .quad            .Lx330_0_s
.Lx330_0_s:
                        .string          "  R  "
#-----------------------------------------------------------------------------------------------------------------------
n139_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_rtest_γ
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn333:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn333]
                        lea              rsi, [rbp + 288]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n131_keyword_icon_α
                                                                                        jmp   n131_keyword_icon_α
n140_call_builtin_icon_β:
                                                                                        jmp   n131_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n142_random_α
#-----------------------------------------------------------------------------------------------------------------------
n142_random_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n139_return_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n143_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n143_deref_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n139_return_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n144_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn339:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn339]
                        lea              rsi, [rbp + 32]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n139_return_α
                                                                                        jmp   n139_return_α
n144_call_builtin_icon_β:
                                                                                        jmp   n139_return_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                                                                                        jmp   n146_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3400], rax
                        .section         .rodata
.Lrkfn342:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn342]
                        lea              rsi, [rbp + 3392]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              eax, 99
                                                                                        je    n1_call_builtin_icon_α
                                                                                        jmp   n147_assign_α
n146_call_builtin_icon_β:
                                                                                        jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              rdx, qword ptr [rbp + 3384]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   n3_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_rtest_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_rtest_β:
                                                                                        jmp   proc_rtest_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_rtest_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 4280]
                        lea              rsp, [rbp + 4304]
                        mov              rbp, [rbp + 4296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_rtest_ω:
                        mov              rax, [rbp + 4288]
                        lea              rsp, [rbp + 4304]
                        mov              rbp, [rbp + 4296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_rtest_dcα:
                        pop              r11
                        sub              rsp, 4320
                        mov              qword ptr [rsp + 4296], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 4272], r11
                        lea              rax, [rip + .Lx344_2]
                        mov              qword ptr [rbp + 4280], rax
                        lea              rax, [rip + .Lx344_3]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rdi, rbp
                        mov              esi, 4256
                        mov              edx, 4272
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_rtest_α_body
.Lx344_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -4304
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx344_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -4304
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "r10(a,b,c,d,e,f,g,h,i,j)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "rtest"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_rtest_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 4272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_rtest_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "rtest__STATIC__L"
.Lgvan1:                .string          "rtest__STATIC__S"
.Lgvan2:                .string          "rtest__STATIC__T"
.Lgvan3:                .string          "rtest__STATIC__R"
.Lgvan4:                .string          "rtest__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 5
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 5
                        call             gva_register@PLT
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
                        sub              rsp, 328
                        mov              rdi, rsp
                        mov              ecx, 328
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n345_call_proc_staged_α:
                        call             proc_rtest_dcα
                                                                                        jmp   .Lx359_2
.Lx359_2:
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n346_keyword_icon_α
                                                                                        jmp   n346_keyword_icon_α
n345_call_proc_staged_β:
                                                                                        jmp   n346_keyword_icon_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "rtest"
#-----------------------------------------------------------------------------------------------------------------------
n346_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx360_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n348_call_proc_staged_α
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                                                                                        jmp   n347_assign_α
n346_keyword_icon_β:
                                                                                        jmp   n348_call_proc_staged_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n347_assign_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n348_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n348_call_proc_staged_α:
                        call             proc_rtest_dcα
                                                                                        jmp   .Lx363_2
.Lx363_2:
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n349_lit_integer_α
                                                                                        jmp   n349_lit_integer_α
n348_call_proc_staged_β:
                                                                                        jmp   n349_lit_integer_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          "rtest"
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_integer_α:
                        mov              qword ptr [rsp + 176], 6
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n350_keyword_assign_α
.Lx364_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n350_keyword_assign_α:
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        call             rt_keyword_random_set@PLT
                        cmp              eax, 99
                                                                                        je    n351_call_proc_staged_α
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n351_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n351_call_proc_staged_α:
                        call             proc_rtest_dcα
                                                                                        jmp   .Lx367_2
.Lx367_2:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n352_var_α
                                                                                        jmp   n352_var_α
n351_call_proc_staged_β:
                                                                                        jmp   n352_var_α
.Lx367_0:
                        .quad            .Lx367_0_s
.Lx367_0_s:
                        .string          "rtest"
#-----------------------------------------------------------------------------------------------------------------------
n352_var_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n353_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n353_keyword_assign_α:
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        call             rt_keyword_random_set@PLT
                        cmp              eax, 99
                                                                                        je    n354_call_proc_staged_α
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n354_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n354_call_proc_staged_α:
                        call             proc_rtest_dcα
                                                                                        jmp   .Lx372_2
.Lx372_2:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n355_lit_integer_α
                                                                                        jmp   n355_lit_integer_α
n354_call_proc_staged_β:
                                                                                        jmp   n355_lit_integer_α
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "rtest"
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_integer_α:
                        mov              qword ptr [rsp + 48], 6
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n356_keyword_assign_α
.Lx373_0:
                        .quad            11213
#-----------------------------------------------------------------------------------------------------------------------
n356_keyword_assign_α:
                        mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        call             rt_keyword_random_set@PLT
                        cmp              eax, 99
                                                                                        je    n357_call_proc_staged_α
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                                                                                        jmp   n357_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n357_call_proc_staged_α:
                        call             proc_rtest_dcα
                                                                                        jmp   .Lx376_2
.Lx376_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n357_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          "rtest"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 328
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 328
                        ret
                        .section         .note.GNU-stack,"",@progbits
