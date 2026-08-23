                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__rtest:
                        sub              rsp, 4336
                        mov              qword ptr [rsp + 4312], rcx
                        mov              qword ptr [rsp + 4320], rdx
                        mov              rdi, rsp
                        add              rdi, 4256
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
rtest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 3312], 0
                        mov              qword ptr [rsp + 3320], 0
                        mov              dword ptr [rsp + 3328], 0;           jmp   n1_var_ref_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 3328]
                        cmp              eax, 0;                              jne   .Lx149_0
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n42_call_builtin_icon_α
.Lx149_0:                                                                     jmp   n42_call_builtin_icon_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 3328];         jmp   n42_call_builtin_icon_α
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 3328], 1
                        mov              eax, dword ptr [rsp + 3328];         jmp   n42_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        mov              rdx, 1879052352                      # rtest__INITFLAG__0
                        mov              qword ptr [rsp + 4192], rax
                        mov              qword ptr [rsp + 4200], rdx;         jmp   n2_nulltest_var_α
n1_var_ref_β:           mov              r11, 2;                              jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_nulltest_var_α:      mov              r11, 3
                        mov              eax, dword ptr [rsp + 4192]
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              rdi, qword ptr [rsp + 4192]
                        mov              rsi, qword ptr [rsp + 4200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n0_disjunction_af
                        cmp              eax, 0;                              jne   n0_disjunction_af
                        mov              rax, qword ptr [rsp + 4192]
                        mov              qword ptr [rsp + 4208], rax
                        mov              rax, qword ptr [rsp + 4200]
                        mov              qword ptr [rsp + 4216], rax;         jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 4240], 3            # result
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 4248], rax;         jmp   n4_assign_var_α
.Lx153_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_var_α:        mov              r11, 5
                        mov              rdi, qword ptr [rsp + 4208]
                        mov              rsi, qword ptr [rsp + 4216]
                        mov              rdx, qword ptr [rsp + 4240]
                        mov              rcx, qword ptr [rsp + 4248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx;         jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rsp + 4032], 3            # result
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n6_lit_integer_α
.Lx155_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rsp + 4048], 3            # result
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 4056], rax;         jmp   n7_lit_integer_α
.Lx156_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rsp + 4064], 3            # result
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 4072], rax;         jmp   n8_lit_integer_α
.Lx157_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              r11, 9
                        mov              qword ptr [rsp + 4080], 3            # result
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 4088], rax;         jmp   n9_lit_integer_α
.Lx158_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              r11, 10
                        mov              qword ptr [rsp + 4096], 3            # result
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 4104], rax;         jmp   n10_lit_integer_α
.Lx159_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rsp + 4112], 3            # result
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 4120], rax;         jmp   n11_lit_integer_α
.Lx160_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rsp + 4128], 3            # result
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 4136], rax;         jmp   n12_lit_integer_α
.Lx161_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rsp + 4144], 3            # result
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n13_lit_integer_α
.Lx162_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              r11, 14
                        mov              qword ptr [rsp + 4160], 3            # result
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 4168], rax;         jmp   n14_lit_integer_α
.Lx163_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              r11, 15
                        mov              qword ptr [rsp + 4176], 3            # result
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 4184], rax;         jmp   n15_call_α
.Lx164_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n15_call_α:             mov              r11, 16
                        mov              rax, qword ptr [rsp + 4176]
                        mov              qword ptr [rsp + 4000], rax
                        mov              rax, qword ptr [rsp + 4184]
                        mov              qword ptr [rsp + 4008], rax
                        mov              rax, qword ptr [rsp + 4160]
                        mov              qword ptr [rsp + 3984], rax
                        mov              rax, qword ptr [rsp + 4168]
                        mov              qword ptr [rsp + 3992], rax
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 3976], rax
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 3952], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 3960], rax
                        mov              rax, qword ptr [rsp + 4112]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 4120]
                        mov              qword ptr [rsp + 3944], rax
                        mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 3920], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 3928], rax
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 3912], rax
                        mov              rax, qword ptr [rsp + 4064]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 4072]
                        mov              qword ptr [rsp + 3896], rax
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 3872], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 3880], rax
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 3856], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 3864], rax
                        .section         .rodata
.Lrkfn166:              .string          "r10"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn166]
                        lea              rsi, [rsp + 3856]
                        mov              edx, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3840], rax
                        mov              qword ptr [rsp + 3848], rdx
                        cmp              al, 104;                             je    n17_make_list_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_assign_α
n15_call_β:             mov              r11, 16;                             jmp   n17_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              r11, 17
                        mov              rax, qword ptr [rsp + 3840]
                        mov              rdx, qword ptr [rsp + 3848]
                        mov              qword ptr [r9 + 48], rax             # rtest__STATIC__R
                        mov              qword ptr [r9 + 56], rdx;            jmp   n17_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n17_make_list_α:        mov              r11, 18
                        lea              rdi, [rsp + 3840]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3824], rax
                        mov              qword ptr [rsp + 3832], rdx;         jmp   n18_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rsp + 3824]
                        mov              rdx, qword ptr [rsp + 3832]
                        mov              qword ptr [r9 + 0], rax              # rtest__STATIC__L
                        mov              qword ptr [r9 + 8], rdx;             jmp   n19_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              r11, 20
                        .section         .rodata
.Lrkfn172:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn172]
                        lea              rsi, [rsp + 3808]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx
                        cmp              al, 104;                             je    n21_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_assign_α
n19_call_builtin_icon_β:
                        mov              r11, 20;                             jmp   n21_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rsp + 3792]
                        mov              rdx, qword ptr [rsp + 3800]
                        mov              qword ptr [r9 + 32], rax             # rtest__STATIC__T
                        mov              qword ptr [r9 + 40], rdx;            jmp   n21_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              r11, 22
                        mov              qword ptr [rsp + 3488], 3            # result
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 3496], rax;         jmp   n22_lit_integer_α
.Lx174_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              r11, 23
                        mov              qword ptr [rsp + 3504], 3            # result
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n23_to_α
.Lx175_0:               .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n23_to_α:               mov              r11, 24
                        mov              rdi, qword ptr [rsp + 3488]
                        mov              rsi, qword ptr [rsp + 3496]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3488], 3
                        mov              qword ptr [rsp + 3496], rax
                        mov              rdi, qword ptr [rsp + 3504]
                        mov              rsi, qword ptr [rsp + 3512]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3504], 3
                        mov              qword ptr [rsp + 3512], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 3472], rax
.Lx177_0:               mov              rax, qword ptr [rsp + 3472]
                        mov              rcx, qword ptr [rsp + 3512]
                        cmp              rax, rcx;                            jg    n38_var_α
                        mov              qword ptr [rsp + 3456], 3
                        mov              qword ptr [rsp + 3464], rax;         jmp   n24_assign_α
n23_to_β:               mov              r11, 24
                        inc              qword ptr [rsp + 3472];              jmp   .Lx177_0
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rsp + 3456]
                        mov              rdx, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx;         jmp   n25_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n25_bound_α:            mov              r11, 26
                        mov              qword ptr [rsp + 3520], rsp;         jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              r11, 27
                        mov              rax, qword ptr [r9 + 0]              # rtest__STATIC__L
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 3760], rax          # result
                        mov              qword ptr [rsp + 3768], rdx;         jmp   n27_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              mov              r11, 28
                        mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 3776], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 3784], rax;         jmp   n28_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 3776]
                        mov              qword ptr [rsp + 3728], rax
                        mov              rax, qword ptr [rsp + 3784]
                        mov              qword ptr [rsp + 3736], rax
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 3712], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 3720], rax
                        .section         .rodata
.Lrkfn185:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn185]
                        lea              rsi, [rsp + 3712]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx
                        cmp              al, 104;                             je    n29_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n29_var_ref_α
n28_call_builtin_icon_β:
                        mov              r11, 29;                             jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        mov              rdx, 1879052320                      # rtest__STATIC__T
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx;         jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              mov              r11, 31
                        mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 3600], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n31_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n31_subscript_α:        mov              r11, 32
                        mov              rdi, qword ptr [rsp + 3584]
                        mov              rsi, qword ptr [rsp + 3592]
                        mov              rdx, qword ptr [rsp + 3600]
                        mov              rcx, qword ptr [rsp + 3608]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n37_unmark_α
                        mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx;         jmp   n32_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              mov              r11, 33
                        mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 3688], rax;         jmp   n33_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n33_coerce_numeric_α:   mov              r11, 34
                        mov              eax, dword ptr [rsp + 4256]
                        cmp              al, 5;                               je    .Lx194_1
                        cmp              al, 3;                               jne   .Lx194_0
                        mov              eax, dword ptr [rsp + 4256]
                        cmp              al, 3;                               jne   .Lx194_0
.Lx194_1:               mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 3664], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n34_unop_α
.Lx194_0:               lea              rdi, [rsp + 4256]
                        lea              rsi, [rsp + 4256]
                        lea              rdx, [rsp + 3664]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n34_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n34_unop_α:             mov              r11, 35
                        mov              rdi, qword ptr [rsp + 3664]
                        mov              rsi, qword ptr [rsp + 3672]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx;         jmp   n35_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_var_α:       mov              r11, 36
                        mov              rdi, qword ptr [rsp + 3616]
                        mov              rsi, qword ptr [rsp + 3624]
                        mov              rdx, qword ptr [rsp + 3648]
                        mov              rcx, qword ptr [rsp + 3656]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n37_unmark_α
                        mov              qword ptr [rsp + 3632], rax
                        mov              qword ptr [rsp + 3640], rdx;         jmp   n36_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n36_conjunction_α:      mov              r11, 37
                        mov              rax, qword ptr [rsp + 3632]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3640]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n37_unmark_α
n36_conjunction_β:      mov              r11, 37;                             jmp   n37_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n37_unmark_α:           mov              r11, 38
                        mov              rsp, qword ptr [rsp + 3520];         jmp   n23_to_β
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              mov              r11, 39
                        mov              rax, qword ptr [r9 + 0]              # rtest__STATIC__L
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 3424], rax          # result
                        mov              qword ptr [rsp + 3432], rdx;         jmp   n39_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              r11, 40
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 3392], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 3400], rax
                        .section         .rodata
.Lrkfn202:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn202]
                        lea              rsi, [rsp + 3392]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx
                        cmp              al, 104;                             je    n42_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n40_assign_α
n39_call_builtin_icon_β:
                        mov              r11, 40;                             jmp   n42_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              r11, 41
                        mov              rax, qword ptr [rsp + 3376]
                        mov              rdx, qword ptr [rsp + 3384]
                        mov              qword ptr [r9 + 16], rax             # rtest__STATIC__S
                        mov              qword ptr [r9 + 24], rdx
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx;         jmp   n41_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n41_conjunction_α:      mov              r11, 42
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 3352], rax;         jmp   n0_disjunction_as
n41_conjunction_β:      mov              r11, 42;                             jmp   n42_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        mov              r11, 43
                        .section         .rodata
.Lrkfn206:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn206]
                        lea              rsi, [rsp + 3296]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx
                        cmp              al, 104;                             je    n43_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_keyword_icon_α
n42_call_builtin_icon_β:
                        mov              r11, 43;                             jmp   n43_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n43_keyword_icon_α:     mov              r11, 44
                        mov              rdi, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n51_keyword_icon_α
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx;         jmp   n44_lit_integer_α
n43_keyword_icon_β:     mov              r11, 44;                             jmp   n51_keyword_icon_α
.Lx207_0:               .quad            .Lx207_0_s
.Lx207_0_s:             .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      mov              r11, 45
                        mov              qword ptr [rsp + 3200], 3            # result
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n45_call_builtin_icon_α
.Lx208_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_icon_α:
                        mov              r11, 46
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3144], rax
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3128], rax
                        .section         .rodata
.Lrkfn210:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]
                        lea              rsi, [rsp + 3120]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              al, 104;                             je    n51_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n46_lit_string_α
n45_call_builtin_icon_β:
                        mov              r11, 46;                             jmp   n51_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       mov              r11, 47
                        mov              qword ptr [rsp + 3216], 2            # result
                        mov              dword ptr [rsp + 3220], 5
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rsp + 3224], rax;         jmp   n47_lit_integer_α
.Lx211_0:               .quad            .Lx211_0_s
.Lx211_0_s:             .string          "  i  "
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      mov              r11, 48
                        mov              qword ptr [rsp + 3248], 3            # result
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 3256], rax;         jmp   n48_random_α
.Lx212_0:               .quad            9999
#-----------------------------------------------------------------------------------------------------------------------
n48_random_α:           mov              r11, 49
                        mov              rdi, qword ptr [rsp + 3248]
                        mov              rsi, qword ptr [rsp + 3256]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n51_keyword_icon_α
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx;         jmp   n49_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n49_deref_α:            mov              r11, 50
                        mov              rdi, qword ptr [rsp + 3232]
                        mov              rsi, qword ptr [rsp + 3240]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n51_keyword_icon_α
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx;         jmp   n50_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_icon_α:
                        mov              r11, 51
                        mov              rax, qword ptr [rsp + 3264]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 3272]
                        mov              qword ptr [rsp + 3080], rax
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3064], rax
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 3048], rax
                        .section         .rodata
.Lrkfn216:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rsp + 3040]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx
                        cmp              al, 104;                             je    n51_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_keyword_icon_α
n50_call_builtin_icon_β:
                        mov              r11, 51;                             jmp   n51_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n51_keyword_icon_α:     mov              r11, 52
                        mov              rdi, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n59_keyword_icon_α
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx;         jmp   n52_lit_integer_α
n51_keyword_icon_β:     mov              r11, 52;                             jmp   n59_keyword_icon_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      mov              r11, 53
                        mov              qword ptr [rsp + 2944], 3            # result
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n53_call_builtin_icon_α
.Lx218_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_icon_α:
                        mov              r11, 54
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2888], rax
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2872], rax
                        .section         .rodata
.Lrkfn220:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]
                        lea              rsi, [rsp + 2864]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2848], rax
                        mov              qword ptr [rsp + 2856], rdx
                        cmp              al, 104;                             je    n59_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n54_lit_string_α
n53_call_builtin_icon_β:
                        mov              r11, 54;                             jmp   n59_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       mov              r11, 55
                        mov              qword ptr [rsp + 2960], 2            # result
                        mov              dword ptr [rsp + 2964], 5
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n55_lit_integer_α
.Lx221_0:               .quad            .Lx221_0_s
.Lx221_0_s:             .string          "  i  "
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      mov              r11, 56
                        mov              qword ptr [rsp + 2992], 3            # result
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n56_random_α
.Lx222_0:               .quad            9999
#-----------------------------------------------------------------------------------------------------------------------
n56_random_α:           mov              r11, 57
                        mov              rdi, qword ptr [rsp + 2992]
                        mov              rsi, qword ptr [rsp + 3000]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n59_keyword_icon_α
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n57_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n57_deref_α:            mov              r11, 58
                        mov              rdi, qword ptr [rsp + 2976]
                        mov              rsi, qword ptr [rsp + 2984]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n59_keyword_icon_α
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx;         jmp   n58_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_icon_α:
                        mov              r11, 59
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 2824], rax
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2808], rax
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2792], rax
                        .section         .rodata
.Lrkfn226:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn226]
                        lea              rsi, [rsp + 2784]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx
                        cmp              al, 104;                             je    n59_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_keyword_icon_α
n58_call_builtin_icon_β:
                        mov              r11, 59;                             jmp   n59_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n59_keyword_icon_α:     mov              r11, 60
                        mov              rdi, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n71_keyword_icon_α
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n60_lit_integer_α
n59_keyword_icon_β:     mov              r11, 60;                             jmp   n71_keyword_icon_α
.Lx227_0:               .quad            .Lx227_0_s
.Lx227_0_s:             .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:      mov              r11, 61
                        mov              qword ptr [rsp + 2592], 3            # result
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n61_call_builtin_icon_α
.Lx228_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_icon_α:
                        mov              r11, 62
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2536], rax
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2520], rax
                        .section         .rodata
.Lrkfn230:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rsp + 2512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              al, 104;                             je    n71_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n62_lit_string_α
n61_call_builtin_icon_β:
                        mov              r11, 62;                             jmp   n71_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              r11, 63
                        mov              qword ptr [rsp + 2608], 2            # result
                        mov              dword ptr [rsp + 2612], 5
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n63_lit_integer_α
.Lx231_0:               .quad            .Lx231_0_s
.Lx231_0_s:             .string          "  r  "
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      mov              r11, 64
                        mov              qword ptr [rsp + 2704], 3            # result
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n64_lit_integer_α
.Lx232_0:               .quad            10000
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      mov              r11, 65
                        mov              qword ptr [rsp + 2736], 3            # result
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n65_random_α
.Lx233_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n65_random_α:           mov              r11, 66
                        mov              rdi, qword ptr [rsp + 2736]
                        mov              rsi, qword ptr [rsp + 2744]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n71_keyword_icon_α
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx;         jmp   n66_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n66_deref_α:            mov              r11, 67
                        mov              rdi, qword ptr [rsp + 2720]
                        mov              rsi, qword ptr [rsp + 2728]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n71_keyword_icon_α
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx;         jmp   n67_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n67_coerce_numeric_α:   mov              r11, 68
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              al, 5;                               je    .Lx237_1
                        cmp              al, 3;                               jne   .Lx237_0
                        mov              eax, dword ptr [rsp + 2704]
                        cmp              al, 3;                               jne   .Lx237_0
.Lx237_1:               mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n68_binop_α
.Lx237_0:               lea              rdi, [rsp + 2752]
                        lea              rsi, [rsp + 2704]
                        lea              rdx, [rsp + 2688]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n68_binop_α:            mov              r11, 69
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 2688]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx238_2
                        mov              rax, 10000
                        mov              rdx, qword ptr [rsp + 2696]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 2672], 3
                        mov              qword ptr [rsp + 2680], rax;         jmp   .Lx238_7
.Lx238_2:               and              edx, 1;                              jz    .Lx238_0
                        mov              rsi, 10000
                        mov              rdi, qword ptr [rsp + 2696]
                        cmp              al, 5;                               je    .Lx238_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx238_4
.Lx238_3:               movq             xmm0, rsi
.Lx238_4:               cmp              cl, 5;                               je    .Lx238_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx238_6
.Lx238_5:               movq             xmm1, rdi
.Lx238_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 2672], 5
                        mov              qword ptr [rsp + 2680], rax
.Lx238_7:                                                                     jmp   n69_call_builtin_icon_α
.Lx238_0:               mov              rdi, qword ptr [rsp + 2704]
                        mov              rsi, qword ptr [rsp + 2712]
                        mov              rdx, qword ptr [rsp + 2688]
                        mov              rcx, qword ptr [rsp + 2696]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             je    n71_keyword_icon_α
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n69_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_icon_α:
                        mov              r11, 70
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2648], rax
                        .section         .rodata
.Lrkfn240:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn240]
                        lea              rsi, [rsp + 2640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        cmp              al, 104;                             je    n71_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n70_call_builtin_icon_α
n69_call_builtin_icon_β:
                        mov              r11, 70;                             jmp   n71_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_icon_α:
                        mov              r11, 71
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2472], rax
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2456], rax
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2440], rax
                        .section         .rodata
.Lrkfn242:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn242]
                        lea              rsi, [rsp + 2432]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                        cmp              al, 104;                             je    n71_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n71_keyword_icon_α
n70_call_builtin_icon_β:
                        mov              r11, 71;                             jmp   n71_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n71_keyword_icon_α:     mov              r11, 72
                        mov              rdi, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n83_keyword_icon_α
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx;         jmp   n72_lit_integer_α
n71_keyword_icon_β:     mov              r11, 72;                             jmp   n83_keyword_icon_α
.Lx243_0:               .quad            .Lx243_0_s
.Lx243_0_s:             .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      mov              r11, 73
                        mov              qword ptr [rsp + 2240], 3            # result
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n73_call_builtin_icon_α
.Lx244_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_icon_α:
                        mov              r11, 74
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2184], rax
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2168], rax
                        .section         .rodata
.Lrkfn246:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn246]
                        lea              rsi, [rsp + 2160]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        cmp              al, 104;                             je    n83_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n74_lit_string_α
n73_call_builtin_icon_β:
                        mov              r11, 74;                             jmp   n83_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       mov              r11, 75
                        mov              qword ptr [rsp + 2256], 2            # result
                        mov              dword ptr [rsp + 2260], 5
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 2264], rax;         jmp   n75_lit_integer_α
.Lx247_0:               .quad            .Lx247_0_s
.Lx247_0_s:             .string          "  r  "
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:      mov              r11, 76
                        mov              qword ptr [rsp + 2352], 3            # result
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n76_lit_integer_α
.Lx248_0:               .quad            10000
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:      mov              r11, 77
                        mov              qword ptr [rsp + 2384], 3            # result
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n77_random_α
.Lx249_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n77_random_α:           mov              r11, 78
                        mov              rdi, qword ptr [rsp + 2384]
                        mov              rsi, qword ptr [rsp + 2392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n83_keyword_icon_α
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx;         jmp   n78_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_deref_α:            mov              r11, 79
                        mov              rdi, qword ptr [rsp + 2368]
                        mov              rsi, qword ptr [rsp + 2376]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n83_keyword_icon_α
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx;         jmp   n79_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n79_coerce_numeric_α:   mov              r11, 80
                        mov              eax, dword ptr [rsp + 2400]
                        cmp              al, 5;                               je    .Lx253_1
                        cmp              al, 3;                               jne   .Lx253_0
                        mov              eax, dword ptr [rsp + 2352]
                        cmp              al, 3;                               jne   .Lx253_0
.Lx253_1:               mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n80_binop_α
.Lx253_0:               lea              rdi, [rsp + 2400]
                        lea              rsi, [rsp + 2352]
                        lea              rdx, [rsp + 2336]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n80_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n80_binop_α:            mov              r11, 81
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 2336]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx254_2
                        mov              rax, 10000
                        mov              rdx, qword ptr [rsp + 2344]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 2320], 3
                        mov              qword ptr [rsp + 2328], rax;         jmp   .Lx254_7
.Lx254_2:               and              edx, 1;                              jz    .Lx254_0
                        mov              rsi, 10000
                        mov              rdi, qword ptr [rsp + 2344]
                        cmp              al, 5;                               je    .Lx254_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx254_4
.Lx254_3:               movq             xmm0, rsi
.Lx254_4:               cmp              cl, 5;                               je    .Lx254_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx254_6
.Lx254_5:               movq             xmm1, rdi
.Lx254_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 2320], 5
                        mov              qword ptr [rsp + 2328], rax
.Lx254_7:                                                                     jmp   n81_call_builtin_icon_α
.Lx254_0:               mov              rdi, qword ptr [rsp + 2352]
                        mov              rsi, qword ptr [rsp + 2360]
                        mov              rdx, qword ptr [rsp + 2336]
                        mov              rcx, qword ptr [rsp + 2344]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             je    n83_keyword_icon_α
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n81_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_icon_α:
                        mov              r11, 82
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2296], rax
                        .section         .rodata
.Lrkfn256:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rsp + 2288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        cmp              al, 104;                             je    n83_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n82_call_builtin_icon_α
n81_call_builtin_icon_β:
                        mov              r11, 82;                             jmp   n83_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_icon_α:
                        mov              r11, 83
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2120], rax
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2104], rax
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2088], rax
                        .section         .rodata
.Lrkfn258:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn258]
                        lea              rsi, [rsp + 2080]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        cmp              al, 104;                             je    n83_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n83_keyword_icon_α
n82_call_builtin_icon_β:
                        mov              r11, 83;                             jmp   n83_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n83_keyword_icon_α:     mov              r11, 84
                        mov              rdi, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n91_keyword_icon_α
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n84_lit_integer_α
n83_keyword_icon_β:     mov              r11, 84;                             jmp   n91_keyword_icon_α
.Lx259_0:               .quad            .Lx259_0_s
.Lx259_0_s:             .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      mov              r11, 85
                        mov              qword ptr [rsp + 1984], 3            # result
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n85_call_builtin_icon_α
.Lx260_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_icon_α:
                        mov              r11, 86
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1912], rax
                        .section         .rodata
.Lrkfn262:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn262]
                        lea              rsi, [rsp + 1904]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    n91_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n86_lit_string_α
n85_call_builtin_icon_β:
                        mov              r11, 86;                             jmp   n91_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              r11, 87
                        mov              qword ptr [rsp + 2000], 2            # result
                        mov              dword ptr [rsp + 2004], 5
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n87_lit_string_α
.Lx263_0:               .quad            .Lx263_0_s
.Lx263_0_s:             .string          "  s  "
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       mov              r11, 88
                        mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 26
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n88_random_α
.Lx264_0:               .quad            .Lx264_0_s
.Lx264_0_s:             .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n88_random_α:           mov              r11, 89
                        mov              rdi, qword ptr [rsp + 2032]
                        mov              rsi, qword ptr [rsp + 2040]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n91_keyword_icon_α
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx;         jmp   n89_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n89_deref_α:            mov              r11, 90
                        mov              rdi, qword ptr [rsp + 2016]
                        mov              rsi, qword ptr [rsp + 2024]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n91_keyword_icon_α
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n90_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_icon_α:
                        mov              r11, 91
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 1864], rax
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1832], rax
                        .section         .rodata
.Lrkfn268:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn268]
                        lea              rsi, [rsp + 1824]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              al, 104;                             je    n91_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n91_keyword_icon_α
n90_call_builtin_icon_β:
                        mov              r11, 91;                             jmp   n91_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n91_keyword_icon_α:     mov              r11, 92
                        mov              rdi, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n99_keyword_icon_α
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n92_lit_integer_α
n91_keyword_icon_β:     mov              r11, 92;                             jmp   n99_keyword_icon_α
.Lx269_0:               .quad            .Lx269_0_s
.Lx269_0_s:             .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:      mov              r11, 93
                        mov              qword ptr [rsp + 1728], 3            # result
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n93_call_builtin_icon_α
.Lx270_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_icon_α:
                        mov              r11, 94
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1656], rax
                        .section         .rodata
.Lrkfn272:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn272]
                        lea              rsi, [rsp + 1648]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n99_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n94_lit_string_α
n93_call_builtin_icon_β:
                        mov              r11, 94;                             jmp   n99_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       mov              r11, 95
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 5
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n95_lit_string_α
.Lx273_0:               .quad            .Lx273_0_s
.Lx273_0_s:             .string          "  s  "
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              r11, 96
                        mov              qword ptr [rsp + 1776], 2            # result
                        mov              dword ptr [rsp + 1780], 26
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n96_random_α
.Lx274_0:               .quad            .Lx274_0_s
.Lx274_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n96_random_α:           mov              r11, 97
                        mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n99_keyword_icon_α
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n97_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n97_deref_α:            mov              r11, 98
                        mov              rdi, qword ptr [rsp + 1760]
                        mov              rsi, qword ptr [rsp + 1768]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n99_keyword_icon_α
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n98_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n98_call_builtin_icon_α:
                        mov              r11, 99
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1608], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1592], rax
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1576], rax
                        .section         .rodata
.Lrkfn278:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn278]
                        lea              rsi, [rsp + 1568]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    n99_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n99_keyword_icon_α
n98_call_builtin_icon_β:
                        mov              r11, 99;                             jmp   n99_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n99_keyword_icon_α:     mov              r11, 100
                        mov              rdi, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n107_keyword_icon_α
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n100_lit_integer_α
n99_keyword_icon_β:     mov              r11, 100;                            jmp   n107_keyword_icon_α
.Lx279_0:               .quad            .Lx279_0_s
.Lx279_0_s:             .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:     mov              r11, 101
                        mov              qword ptr [rsp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n101_call_builtin_icon_α
.Lx280_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_icon_α:
                        mov              r11, 102
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1400], rax
                        .section         .rodata
.Lrkfn282:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn282]
                        lea              rsi, [rsp + 1392]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    n107_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n102_lit_string_α
n101_call_builtin_icon_β:
                        mov              r11, 102;                            jmp   n107_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              r11, 103
                        mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], 5
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n103_lit_charset_α
.Lx283_0:               .quad            .Lx283_0_s
.Lx283_0_s:             .string          "  c  "
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_charset_α:     mov              r11, 104
                        mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], -1
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n104_random_α
.Lx284_0:               .quad            .Lx284_0_s
.Lx284_0_s:             .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n104_random_α:          mov              r11, 105
                        mov              rdi, qword ptr [rsp + 1520]
                        mov              rsi, qword ptr [rsp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n107_keyword_icon_α
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n105_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n105_deref_α:           mov              r11, 106
                        mov              rdi, qword ptr [rsp + 1504]
                        mov              rsi, qword ptr [rsp + 1512]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n107_keyword_icon_α
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n106_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_icon_α:
                        mov              r11, 107
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1320], rax
                        .section         .rodata
.Lrkfn288:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]
                        lea              rsi, [rsp + 1312]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n107_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n107_keyword_icon_α
n106_call_builtin_icon_β:
                        mov              r11, 107;                            jmp   n107_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n107_keyword_icon_α:    mov              r11, 108
                        mov              rdi, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n115_keyword_icon_α
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n108_lit_integer_α
n107_keyword_icon_β:    mov              r11, 108;                            jmp   n115_keyword_icon_α
.Lx289_0:               .quad            .Lx289_0_s
.Lx289_0_s:             .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:     mov              r11, 109
                        mov              qword ptr [rsp + 1216], 3            # result
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n109_call_builtin_icon_α
.Lx290_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_icon_α:
                        mov              r11, 110
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1144], rax
                        .section         .rodata
.Lrkfn292:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn292]
                        lea              rsi, [rsp + 1136]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n115_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n110_lit_string_α
n109_call_builtin_icon_β:
                        mov              r11, 110;                            jmp   n115_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              r11, 111
                        mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 5
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n111_lit_charset_α
.Lx293_0:               .quad            .Lx293_0_s
.Lx293_0_s:             .string          "  c  "
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_charset_α:     mov              r11, 112
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], -1
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n112_random_α
.Lx294_0:               .quad            .Lx294_0_s
.Lx294_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n112_random_α:          mov              r11, 113
                        mov              rdi, qword ptr [rsp + 1264]
                        mov              rsi, qword ptr [rsp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n115_keyword_icon_α
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n113_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n113_deref_α:           mov              r11, 114
                        mov              rdi, qword ptr [rsp + 1248]
                        mov              rsi, qword ptr [rsp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n115_keyword_icon_α
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n114_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_icon_α:
                        mov              r11, 115
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1064], rax
                        .section         .rodata
.Lrkfn298:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn298]
                        lea              rsi, [rsp + 1056]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n115_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n115_keyword_icon_α
n114_call_builtin_icon_β:
                        mov              r11, 115;                            jmp   n115_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n115_keyword_icon_α:    mov              r11, 116
                        mov              rdi, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n123_keyword_icon_α
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n116_lit_integer_α
n115_keyword_icon_β:    mov              r11, 116;                            jmp   n123_keyword_icon_α
.Lx299_0:               .quad            .Lx299_0_s
.Lx299_0_s:             .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:     mov              r11, 117
                        mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n117_call_builtin_icon_α
.Lx300_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n117_call_builtin_icon_α:
                        mov              r11, 118
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn302:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn302]
                        lea              rsi, [rsp + 880]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n123_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n118_lit_string_α
n117_call_builtin_icon_β:
                        mov              r11, 118;                            jmp   n123_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      mov              r11, 119
                        mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 5
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n119_var_ref_α
.Lx303_0:               .quad            .Lx303_0_s
.Lx303_0_s:             .string          "  L  "
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # rtest__STATIC__L
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n120_random_α
#-----------------------------------------------------------------------------------------------------------------------
n120_random_α:          mov              r11, 121
                        mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n123_keyword_icon_α
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n121_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n121_deref_α:           mov              r11, 122
                        mov              rdi, qword ptr [rsp + 992]
                        mov              rsi, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n123_keyword_icon_α
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n122_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_icon_α:
                        mov              r11, 123
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 808], rax
                        .section         .rodata
.Lrkfn309:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]
                        lea              rsi, [rsp + 800]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n123_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n123_keyword_icon_α
n122_call_builtin_icon_β:
                        mov              r11, 123;                            jmp   n123_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n123_keyword_icon_α:    mov              r11, 124
                        mov              rdi, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n131_keyword_icon_α
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n124_lit_integer_α
n123_keyword_icon_β:    mov              r11, 124;                            jmp   n131_keyword_icon_α
.Lx310_0:               .quad            .Lx310_0_s
.Lx310_0_s:             .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:     mov              r11, 125
                        mov              qword ptr [rsp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n125_call_builtin_icon_α
.Lx311_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_icon_α:
                        mov              r11, 126
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn313:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn313]
                        lea              rsi, [rsp + 624]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n131_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n126_lit_string_α
n125_call_builtin_icon_β:
                        mov              r11, 126;                            jmp   n131_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      mov              r11, 127
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 5
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n127_var_ref_α
.Lx314_0:               .quad            .Lx314_0_s
.Lx314_0_s:             .string          "  L  "
#-----------------------------------------------------------------------------------------------------------------------
n127_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # rtest__STATIC__L
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n128_random_α
#-----------------------------------------------------------------------------------------------------------------------
n128_random_α:          mov              r11, 129
                        mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n131_keyword_icon_α
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n129_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_deref_α:           mov              r11, 130
                        mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n131_keyword_icon_α
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n130_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_icon_α:
                        mov              r11, 131
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn320:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn320]
                        lea              rsi, [rsp + 544]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n131_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n131_keyword_icon_α
n130_call_builtin_icon_β:
                        mov              r11, 131;                            jmp   n131_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n131_keyword_icon_α:    mov              r11, 132
                        mov              rdi, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n139_keyword_icon_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n132_lit_integer_α
n131_keyword_icon_β:    mov              r11, 132;                            jmp   n139_keyword_icon_α
.Lx321_0:               .quad            .Lx321_0_s
.Lx321_0_s:             .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:     mov              r11, 133
                        mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n133_call_builtin_icon_α
.Lx322_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_icon_α:
                        mov              r11, 134
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn324:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn324]
                        lea              rsi, [rsp + 368]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n139_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n134_lit_string_α
n133_call_builtin_icon_β:
                        mov              r11, 134;                            jmp   n139_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:      mov              r11, 135
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 5
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n135_var_ref_α
.Lx325_0:               .quad            .Lx325_0_s
.Lx325_0_s:             .string          "  R  "
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # rtest__STATIC__R
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n136_random_α
#-----------------------------------------------------------------------------------------------------------------------
n136_random_α:          mov              r11, 137
                        mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n139_keyword_icon_α
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n137_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n137_deref_α:           mov              r11, 138
                        mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n139_keyword_icon_α
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n138_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_builtin_icon_α:
                        mov              r11, 139
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn331:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn331]
                        lea              rsi, [rsp + 288]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n139_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n139_keyword_icon_α
n138_call_builtin_icon_β:
                        mov              r11, 139;                            jmp   n139_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n139_keyword_icon_α:    mov              r11, 140
                        mov              rdi, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n147_return_α
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n140_lit_integer_α
n139_keyword_icon_β:    mov              r11, 140;                            jmp   n147_return_α
.Lx332_0:               .quad            .Lx332_0_s
.Lx332_0_s:             .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:     mov              r11, 141
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n141_call_builtin_icon_α
.Lx333_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_icon_α:
                        mov              r11, 142
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn335:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn335]
                        lea              rsi, [rsp + 112]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n147_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n142_lit_string_α
n141_call_builtin_icon_β:
                        mov              r11, 142;                            jmp   n147_return_α
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:      mov              r11, 143
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 5
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n143_var_ref_α
.Lx336_0:               .quad            .Lx336_0_s
.Lx336_0_s:             .string          "  R  "
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # rtest__STATIC__R
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n144_random_α
#-----------------------------------------------------------------------------------------------------------------------
n144_random_α:          mov              r11, 145
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n147_return_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n145_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n145_deref_α:           mov              r11, 146
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n147_return_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n146_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_icon_α:
                        mov              r11, 147
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn342:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn342]
                        lea              rsi, [rsp + 32]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    n147_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n147_return_α
n146_call_builtin_icon_β:
                        mov              r11, 147;                            jmp   n147_return_α
#-----------------------------------------------------------------------------------------------------------------------
n147_return_α:          mov              r11, 148
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   rtest_γ
#-----------------------------------------------------------------------------------------------------------------------
rtest_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
rtest_β:
                                                                              jmp   rtest_ω
#-----------------------------------------------------------------------------------------------------------------------
rtest_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 4312]
                        add              rsp, 4336;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
rtest_ω:
                        mov              rcx, qword ptr [rsp + 4320]
                        add              rsp, 4336;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
rtest_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx344_2]
                        lea              rdx, [rip + .Lx344_3];               jmp   FN__rtest
.Lx344_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx344_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 5
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 5
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
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
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 384
                        mov              qword ptr [rsp + 360], rcx
                        mov              qword ptr [rsp + 368], rdx
                        mov              rdi, rsp
                        add              rdi, 304
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n345_call_proc_staged_α:
                        mov              r11, 149
                        call             rtest_dcα;                           jmp   .Lx359_2
.Lx359_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx359_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
.Lx359_29:              mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n346_keyword_icon_α
                                                                              jmp   n346_keyword_icon_α
n345_call_proc_staged_β:
                        mov              r11, 149;                            jmp   n346_keyword_icon_α
.Lx359_0:               .quad            .Lx359_0_s
.Lx359_0_s:             .string          "rtest"
#-----------------------------------------------------------------------------------------------------------------------
n346_keyword_icon_α:    mov              r11, 150
                        mov              rdi, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n348_call_proc_staged_α
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n347_assign_α
n346_keyword_icon_β:    mov              r11, 150;                            jmp   n348_call_proc_staged_α
.Lx360_0:               .quad            .Lx360_0_s
.Lx360_0_s:             .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n347_assign_α:          mov              r11, 151
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n348_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n348_call_proc_staged_α:
                        mov              r11, 152
                        call             rtest_dcα;                           jmp   .Lx363_2
.Lx363_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx363_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
.Lx363_29:              mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n349_lit_integer_α
                                                                              jmp   n349_lit_integer_α
n348_call_proc_staged_β:
                        mov              r11, 152;                            jmp   n349_lit_integer_α
.Lx363_0:               .quad            .Lx363_0_s
.Lx363_0_s:             .string          "rtest"
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_integer_α:     mov              r11, 153
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n350_keyword_assign_α
.Lx364_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n350_keyword_assign_α:  mov              r11, 154
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_random_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n351_call_proc_staged_α
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n351_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n351_call_proc_staged_α:
                        mov              r11, 155
                        call             rtest_dcα;                           jmp   .Lx367_2
.Lx367_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx367_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lx367_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n352_var_α
                                                                              jmp   n352_var_α
n351_call_proc_staged_β:
                        mov              r11, 155;                            jmp   n352_var_α
.Lx367_0:               .quad            .Lx367_0_s
.Lx367_0_s:             .string          "rtest"
#-----------------------------------------------------------------------------------------------------------------------
n352_var_α:             mov              r11, 156
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 120], rax;          jmp   n353_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n353_keyword_assign_α:  mov              r11, 157
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_random_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n354_call_proc_staged_α
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n354_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n354_call_proc_staged_α:
                        mov              r11, 158
                        call             rtest_dcα;                           jmp   .Lx372_2
.Lx372_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx372_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
.Lx372_29:              mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n355_lit_integer_α
                                                                              jmp   n355_lit_integer_α
n354_call_proc_staged_β:
                        mov              r11, 158;                            jmp   n355_lit_integer_α
.Lx372_0:               .quad            .Lx372_0_s
.Lx372_0_s:             .string          "rtest"
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_integer_α:     mov              r11, 159
                        mov              qword ptr [rsp + 48], 3              # result
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n356_keyword_assign_α
.Lx373_0:               .quad            11213
#-----------------------------------------------------------------------------------------------------------------------
n356_keyword_assign_α:  mov              r11, 160
                        mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_random_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n357_call_proc_staged_α
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx;           jmp   n357_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n357_call_proc_staged_α:
                        mov              r11, 161
                        call             rtest_dcα;                           jmp   .Lx376_2
.Lx376_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx376_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx376_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n357_call_proc_staged_β:
                        mov              r11, 161;                            jmp   main_ω
.Lx376_0:               .quad            .Lx376_0_s
.Lx376_0_s:             .string          "rtest"
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
.Lclassspec0:           .string          "r10(a,b,c,d,e,f,g,h,i,j)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "rtest"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__rtest
                        .quad            rtest_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4272
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
