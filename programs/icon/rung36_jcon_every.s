                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__f:
f_α_body:
                        lea              rax, [rip + n1_suspend_β]
                        mov              qword ptr [rsp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n5_var_α
n0_disjunction_as:      mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx7_0
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rax;           jmp   n1_suspend_α
.Lx7_0:                 cmp              eax, 1;                              jne   .Lx7_1
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax;           jmp   n1_suspend_α
.Lx7_1:                                                                       jmp   n1_suspend_α
n0_disjunction_β:       mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    n0_disjunction_af
                                                                              jmp   n0_disjunction_af
n0_disjunction_af:      add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n2_var_α
                                                                              jmp   f_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_suspend_α:           lea              rax, [rip + n1_suspend_β]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   f_γ
n1_suspend_β:                                                                 jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax;          jmp   n3_coerce_numeric_α
n2_var_β:                                                                     jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_numeric_α:    mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lx13_1
                        cmp              al, 3;                               jne   .Lx13_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx13_0
.Lx13_1:                mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 104], rax;          jmp   n4_unop_α
.Lx13_0:                lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 96]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n4_unop_α:              mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n0_disjunction_as
n4_unop_β:                                                                    jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax;           jmp   n0_disjunction_as
n5_var_β:                                                                     jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
f_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
f_β:
                                                                              jmp   n1_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
f_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
f_ω:
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
                        sub              rsp, 3920
                        mov              qword ptr [rsp + 3896], rcx
                        mov              qword ptr [rsp + 3904], rdx
                        mov              rdi, rsp
                        add              rdi, 3840
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              qword ptr [rsp + 3824], 2            # result
                        mov              dword ptr [rsp + 3828], 3
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 3832], rax;         jmp   n18_call_builtin_icon_α
.Lx154_0:               .quad            .Lx154_0_s
.Lx154_0_s:             .string          "a. "
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3824]
                        mov              qword ptr [rsp + 3792], rax
                        mov              rax, qword ptr [rsp + 3832]
                        mov              qword ptr [rsp + 3800], rax
                        .section         .rodata
.Lrkfn156:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn156]
                        lea              rsi, [rsp + 3792]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx
                        cmp              al, 104;                             je    n19_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_lit_string_α
n18_call_builtin_icon_β:
                                                                              jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              qword ptr [rsp + 3744], 2            # result
                        mov              dword ptr [rsp + 3748], 3
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 3752], rax;         jmp   n20_lit_integer_α
.Lx157_0:               .quad            .Lx157_0_s
.Lx157_0_s:             .string          "b. "
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              qword ptr [rsp + 3760], 3            # result
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 3768], rax;         jmp   n21_call_builtin_icon_α
.Lx158_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 3712], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 3720], rax
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3704], rax
                        .section         .rodata
.Lrkfn160:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn160]
                        lea              rsi, [rsp + 3696]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        cmp              al, 104;                             je    n22_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_lit_string_α
n21_call_builtin_icon_β:
                                                                              jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 3
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n23_lit_integer_α
.Lx161_0:               .quad            .Lx161_0_s
.Lx161_0_s:             .string          "c. "
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:      mov              qword ptr [rsp + 3648], 3            # result
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 3656], rax;         jmp   n24_lit_integer_α
.Lx162_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              qword ptr [rsp + 3664], 3            # result
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n25_to_α
.Lx163_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n25_to_α:               mov              rdi, qword ptr [rsp + 3648]
                        mov              rsi, qword ptr [rsp + 3656]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3648], 3
                        mov              qword ptr [rsp + 3656], rax
                        mov              rdi, qword ptr [rsp + 3664]
                        mov              rsi, qword ptr [rsp + 3672]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3664], 3
                        mov              qword ptr [rsp + 3672], rax
                        mov              rax, qword ptr [rsp + 3656]
                        mov              qword ptr [rsp + 3632], rax
.Lx165_0:               mov              rax, qword ptr [rsp + 3632]
                        mov              rcx, qword ptr [rsp + 3672]
                        cmp              rax, rcx;                            jg    n27_lit_string_α
                        mov              qword ptr [rsp + 3616], 3
                        mov              qword ptr [rsp + 3624], rax;         jmp   n26_call_builtin_icon_α
n25_to_β:               inc              qword ptr [rsp + 3632];              jmp   .Lx165_0
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3616]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3624]
                        mov              qword ptr [rsp + 3576], rax
                        mov              rax, qword ptr [rsp + 3600]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3608]
                        mov              qword ptr [rsp + 3560], rax
                        .section         .rodata
.Lrkfn167:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn167]
                        lea              rsi, [rsp + 3552]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx
                        cmp              al, 104;                             je    n25_to_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n25_to_β
n26_call_builtin_icon_β:
                                                                              jmp   n25_to_β
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              qword ptr [rsp + 3440], 2            # result
                        mov              dword ptr [rsp + 3444], 3
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 3448], rax;         jmp   n28_lit_integer_α
.Lx168_0:               .quad            .Lx168_0_s
.Lx168_0_s:             .string          "d. "
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      mov              qword ptr [rsp + 3488], 3            # result
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 3496], rax;         jmp   n29_lit_integer_α
.Lx169_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      mov              qword ptr [rsp + 3504], 3            # result
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n30_lit_integer_α
.Lx170_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              qword ptr [rsp + 3520], 3            # result
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 3528], rax;         jmp   n31_to_by_α
.Lx171_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n31_to_by_α:            mov              rdi, qword ptr [rsp + 3488]
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
                        mov              rdi, qword ptr [rsp + 3520]
                        mov              rsi, qword ptr [rsp + 3528]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3520], 3
                        mov              qword ptr [rsp + 3528], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 3472], rax
.Lx173_0:               mov              rax, qword ptr [rsp + 3472]
                        mov              rcx, qword ptr [rsp + 3512]
                        mov              rdx, qword ptr [rsp + 3528]
                        cmp              rdx, 0;                              jl    .Lx173_1
                        cmp              rax, rcx;                            jg    n33_lit_string_α
                                                                              jmp   .Lx173_2
.Lx173_1:               cmp              rax, rcx;                            jl    n33_lit_string_α
.Lx173_2:               mov              qword ptr [rsp + 3456], 3
                        mov              qword ptr [rsp + 3464], rax;         jmp   n32_call_builtin_icon_α
n31_to_by_β:            mov              rdx, qword ptr [rsp + 3528]
                        mov              rax, qword ptr [rsp + 3472]
                        add              rax, rdx
                        mov              qword ptr [rsp + 3472], rax;         jmp   .Lx173_0
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 3408], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 3416], rax
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3392], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3400], rax
                        .section         .rodata
.Lrkfn175:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rsp + 3392]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx
                        cmp              al, 104;                             je    n31_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_to_by_β
n32_call_builtin_icon_β:
                                                                              jmp   n31_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              qword ptr [rsp + 3280], 2            # result
                        mov              dword ptr [rsp + 3284], 3
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 3288], rax;         jmp   n34_lit_integer_α
.Lx176_0:               .quad            .Lx176_0_s
.Lx176_0_s:             .string          "e. "
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      mov              qword ptr [rsp + 3328], 3            # result
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n35_lit_integer_α
.Lx177_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      mov              qword ptr [rsp + 3344], 3            # result
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 3352], rax;         jmp   n36_lit_integer_α
.Lx178_0:               .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      mov              qword ptr [rsp + 3360], 3            # result
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rsp + 3368], rax;         jmp   n37_to_by_α
.Lx179_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n37_to_by_α:            mov              rdi, qword ptr [rsp + 3328]
                        mov              rsi, qword ptr [rsp + 3336]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3328], 3
                        mov              qword ptr [rsp + 3336], rax
                        mov              rdi, qword ptr [rsp + 3344]
                        mov              rsi, qword ptr [rsp + 3352]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3344], 3
                        mov              qword ptr [rsp + 3352], rax
                        mov              rdi, qword ptr [rsp + 3360]
                        mov              rsi, qword ptr [rsp + 3368]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3360], 3
                        mov              qword ptr [rsp + 3368], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3312], rax
.Lx181_0:               mov              rax, qword ptr [rsp + 3312]
                        mov              rcx, qword ptr [rsp + 3352]
                        mov              rdx, qword ptr [rsp + 3368]
                        cmp              rdx, 0;                              jl    .Lx181_1
                        cmp              rax, rcx;                            jg    n39_lit_string_α
                                                                              jmp   .Lx181_2
.Lx181_1:               cmp              rax, rcx;                            jl    n39_lit_string_α
.Lx181_2:               mov              qword ptr [rsp + 3296], 3
                        mov              qword ptr [rsp + 3304], rax;         jmp   n38_call_builtin_icon_α
n37_to_by_β:            mov              rdx, qword ptr [rsp + 3368]
                        mov              rax, qword ptr [rsp + 3312]
                        add              rax, rdx
                        mov              qword ptr [rsp + 3312], rax;         jmp   .Lx181_0
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3256], rax
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3240], rax
                        .section         .rodata
.Lrkfn183:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn183]
                        lea              rsi, [rsp + 3232]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        cmp              al, 104;                             je    n37_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_to_by_β
n38_call_builtin_icon_β:
                                                                              jmp   n37_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              qword ptr [rsp + 3120], 2            # result
                        mov              dword ptr [rsp + 3124], 3
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n40_lit_integer_α
.Lx184_0:               .quad            .Lx184_0_s
.Lx184_0_s:             .string          "f. "
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      mov              qword ptr [rsp + 3168], 3            # result
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n41_lit_integer_α
.Lx185_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      mov              qword ptr [rsp + 3184], 3            # result
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n42_lit_integer_α
.Lx186_0:               .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      mov              qword ptr [rsp + 3200], 3            # result
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n43_to_by_α
.Lx187_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n43_to_by_α:            mov              rdi, qword ptr [rsp + 3168]
                        mov              rsi, qword ptr [rsp + 3176]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3168], 3
                        mov              qword ptr [rsp + 3176], rax
                        mov              rdi, qword ptr [rsp + 3184]
                        mov              rsi, qword ptr [rsp + 3192]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3184], 3
                        mov              qword ptr [rsp + 3192], rax
                        mov              rdi, qword ptr [rsp + 3200]
                        mov              rsi, qword ptr [rsp + 3208]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3200], 3
                        mov              qword ptr [rsp + 3208], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3152], rax
.Lx189_0:               mov              rax, qword ptr [rsp + 3152]
                        mov              rcx, qword ptr [rsp + 3192]
                        mov              rdx, qword ptr [rsp + 3208]
                        cmp              rdx, 0;                              jl    .Lx189_1
                        cmp              rax, rcx;                            jg    n45_lit_string_α
                                                                              jmp   .Lx189_2
.Lx189_1:               cmp              rax, rcx;                            jl    n45_lit_string_α
.Lx189_2:               mov              qword ptr [rsp + 3136], 3
                        mov              qword ptr [rsp + 3144], rax;         jmp   n44_call_builtin_icon_α
n43_to_by_β:            mov              rdx, qword ptr [rsp + 3208]
                        mov              rax, qword ptr [rsp + 3152]
                        add              rax, rdx
                        mov              qword ptr [rsp + 3152], rax;         jmp   .Lx189_0
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3096], rax
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3080], rax
                        .section         .rodata
.Lrkfn191:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rsp + 3072]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        cmp              al, 104;                             je    n43_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_to_by_β
n44_call_builtin_icon_β:
                                                                              jmp   n43_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              qword ptr [rsp + 2960], 2            # result
                        mov              dword ptr [rsp + 2964], 3
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n46_lit_integer_α
.Lx192_0:               .quad            .Lx192_0_s
.Lx192_0_s:             .string          "g. "
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      mov              qword ptr [rsp + 3008], 3            # result
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n47_lit_integer_α
.Lx193_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      mov              qword ptr [rsp + 3024], 3            # result
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 3032], rax;         jmp   n48_lit_integer_α
.Lx194_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      mov              qword ptr [rsp + 3040], 3            # result
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n49_to_by_α
.Lx195_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n49_to_by_α:            mov              rdi, qword ptr [rsp + 3008]
                        mov              rsi, qword ptr [rsp + 3016]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3008], 3
                        mov              qword ptr [rsp + 3016], rax
                        mov              rdi, qword ptr [rsp + 3024]
                        mov              rsi, qword ptr [rsp + 3032]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3024], 3
                        mov              qword ptr [rsp + 3032], rax
                        mov              rdi, qword ptr [rsp + 3040]
                        mov              rsi, qword ptr [rsp + 3048]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3040], 3
                        mov              qword ptr [rsp + 3048], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 2992], rax
.Lx197_0:               mov              rax, qword ptr [rsp + 2992]
                        mov              rcx, qword ptr [rsp + 3032]
                        mov              rdx, qword ptr [rsp + 3048]
                        cmp              rdx, 0;                              jl    .Lx197_1
                        cmp              rax, rcx;                            jg    n51_lit_string_α
                                                                              jmp   .Lx197_2
.Lx197_1:               cmp              rax, rcx;                            jl    n51_lit_string_α
.Lx197_2:               mov              qword ptr [rsp + 2976], 3
                        mov              qword ptr [rsp + 2984], rax;         jmp   n50_call_builtin_icon_α
n49_to_by_β:            mov              rdx, qword ptr [rsp + 3048]
                        mov              rax, qword ptr [rsp + 2992]
                        add              rax, rdx
                        mov              qword ptr [rsp + 2992], rax;         jmp   .Lx197_0
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2936], rax
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2920], rax
                        .section         .rodata
.Lrkfn199:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]
                        lea              rsi, [rsp + 2912]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx
                        cmp              al, 104;                             je    n49_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n49_to_by_β
n50_call_builtin_icon_β:
                                                                              jmp   n49_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              qword ptr [rsp + 2800], 2            # result
                        mov              dword ptr [rsp + 2804], 3
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n52_lit_integer_α
.Lx200_0:               .quad            .Lx200_0_s
.Lx200_0_s:             .string          "h. "
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      mov              qword ptr [rsp + 2848], 3            # result
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n53_lit_integer_α
.Lx201_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      mov              qword ptr [rsp + 2864], 3            # result
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n54_lit_integer_α
.Lx202_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      mov              qword ptr [rsp + 2880], 3            # result
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n55_to_by_α
.Lx203_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n55_to_by_α:            mov              rdi, qword ptr [rsp + 2848]
                        mov              rsi, qword ptr [rsp + 2856]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2848], 3
                        mov              qword ptr [rsp + 2856], rax
                        mov              rdi, qword ptr [rsp + 2864]
                        mov              rsi, qword ptr [rsp + 2872]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2864], 3
                        mov              qword ptr [rsp + 2872], rax
                        mov              rdi, qword ptr [rsp + 2880]
                        mov              rsi, qword ptr [rsp + 2888]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2880], 3
                        mov              qword ptr [rsp + 2888], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2832], rax
.Lx205_0:               mov              rax, qword ptr [rsp + 2832]
                        mov              rcx, qword ptr [rsp + 2872]
                        mov              rdx, qword ptr [rsp + 2888]
                        cmp              rdx, 0;                              jl    .Lx205_1
                        cmp              rax, rcx;                            jg    n57_lit_string_α
                                                                              jmp   .Lx205_2
.Lx205_1:               cmp              rax, rcx;                            jl    n57_lit_string_α
.Lx205_2:               mov              qword ptr [rsp + 2816], 3
                        mov              qword ptr [rsp + 2824], rax;         jmp   n56_call_builtin_icon_α
n55_to_by_β:            mov              rdx, qword ptr [rsp + 2888]
                        mov              rax, qword ptr [rsp + 2832]
                        add              rax, rdx
                        mov              qword ptr [rsp + 2832], rax;         jmp   .Lx205_0
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2776], rax
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2760], rax
                        .section         .rodata
.Lrkfn207:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn207]
                        lea              rsi, [rsp + 2752]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx
                        cmp              al, 104;                             je    n55_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n55_to_by_β
n56_call_builtin_icon_β:
                                                                              jmp   n55_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              qword ptr [rsp + 2640], 2            # result
                        mov              dword ptr [rsp + 2644], 3
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n58_lit_integer_α
.Lx208_0:               .quad            .Lx208_0_s
.Lx208_0_s:             .string          "i. "
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              qword ptr [rsp + 2688], 3            # result
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n59_lit_integer_α
.Lx209_0:               .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:      mov              qword ptr [rsp + 2704], 3            # result
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n60_lit_integer_α
.Lx210_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:      mov              qword ptr [rsp + 2720], 3            # result
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n61_to_by_α
.Lx211_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n61_to_by_α:            mov              rdi, qword ptr [rsp + 2688]
                        mov              rsi, qword ptr [rsp + 2696]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2688], 3
                        mov              qword ptr [rsp + 2696], rax
                        mov              rdi, qword ptr [rsp + 2704]
                        mov              rsi, qword ptr [rsp + 2712]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2704], 3
                        mov              qword ptr [rsp + 2712], rax
                        mov              rdi, qword ptr [rsp + 2720]
                        mov              rsi, qword ptr [rsp + 2728]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2720], 3
                        mov              qword ptr [rsp + 2728], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 2672], rax
.Lx213_0:               mov              rax, qword ptr [rsp + 2672]
                        mov              rcx, qword ptr [rsp + 2712]
                        mov              rdx, qword ptr [rsp + 2728]
                        cmp              rdx, 0;                              jl    .Lx213_1
                        cmp              rax, rcx;                            jg    n63_lit_string_α
                                                                              jmp   .Lx213_2
.Lx213_1:               cmp              rax, rcx;                            jl    n63_lit_string_α
.Lx213_2:               mov              qword ptr [rsp + 2656], 3
                        mov              qword ptr [rsp + 2664], rax;         jmp   n62_call_builtin_icon_α
n61_to_by_β:            mov              rdx, qword ptr [rsp + 2728]
                        mov              rax, qword ptr [rsp + 2672]
                        add              rax, rdx
                        mov              qword ptr [rsp + 2672], rax;         jmp   .Lx213_0
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2616], rax
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2600], rax
                        .section         .rodata
.Lrkfn215:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn215]
                        lea              rsi, [rsp + 2592]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                        cmp              al, 104;                             je    n61_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n61_to_by_β
n62_call_builtin_icon_β:
                                                                              jmp   n61_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       mov              qword ptr [rsp + 2480], 2            # result
                        mov              dword ptr [rsp + 2484], 3
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n64_lit_integer_α
.Lx216_0:               .quad            .Lx216_0_s
.Lx216_0_s:             .string          "j. "
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      mov              qword ptr [rsp + 2528], 3            # result
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n65_lit_integer_α
.Lx217_0:               .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      mov              qword ptr [rsp + 2544], 3            # result
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n66_lit_integer_α
.Lx218_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:      mov              qword ptr [rsp + 2560], 3            # result
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n67_to_by_α
.Lx219_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n67_to_by_α:            mov              rdi, qword ptr [rsp + 2528]
                        mov              rsi, qword ptr [rsp + 2536]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2528], 3
                        mov              qword ptr [rsp + 2536], rax
                        mov              rdi, qword ptr [rsp + 2544]
                        mov              rsi, qword ptr [rsp + 2552]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2544], 3
                        mov              qword ptr [rsp + 2552], rax
                        mov              rdi, qword ptr [rsp + 2560]
                        mov              rsi, qword ptr [rsp + 2568]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2560], 3
                        mov              qword ptr [rsp + 2568], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2512], rax
.Lx221_0:               mov              rax, qword ptr [rsp + 2512]
                        mov              rcx, qword ptr [rsp + 2552]
                        mov              rdx, qword ptr [rsp + 2568]
                        cmp              rdx, 0;                              jl    .Lx221_1
                        cmp              rax, rcx;                            jg    n69_lit_string_α
                                                                              jmp   .Lx221_2
.Lx221_1:               cmp              rax, rcx;                            jl    n69_lit_string_α
.Lx221_2:               mov              qword ptr [rsp + 2496], 3
                        mov              qword ptr [rsp + 2504], rax;         jmp   n68_call_builtin_icon_α
n67_to_by_β:            mov              rdx, qword ptr [rsp + 2568]
                        mov              rax, qword ptr [rsp + 2512]
                        add              rax, rdx
                        mov              qword ptr [rsp + 2512], rax;         jmp   .Lx221_0
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2456], rax
                        mov              rax, qword ptr [rsp + 2480]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2488]
                        mov              qword ptr [rsp + 2440], rax
                        .section         .rodata
.Lrkfn223:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]
                        lea              rsi, [rsp + 2432]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                        cmp              al, 104;                             je    n67_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n67_to_by_β
n68_call_builtin_icon_β:
                                                                              jmp   n67_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       mov              qword ptr [rsp + 2224], 2            # result
                        mov              dword ptr [rsp + 2228], 3
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n70_disjunction_α
.Lx224_0:               .quad            .Lx224_0_s
.Lx224_0_s:             .string          "k. "
#-----------------------------------------------------------------------------------------------------------------------
n70_disjunction_α:      mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              dword ptr [rsp + 2304], 0;           jmp   n89_lit_integer_α
n70_disjunction_as:     mov              eax, dword ptr [rsp + 2304]
                        cmp              eax, 0;                              jne   .Lx226_0
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n71_disjunction_α
.Lx226_0:               cmp              eax, 1;                              jne   .Lx226_1
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n71_disjunction_α
.Lx226_1:                                                                     jmp   n71_disjunction_α
n70_disjunction_β:      mov              eax, dword ptr [rsp + 2304]
                        cmp              eax, 0;                              je    n70_disjunction_af
                                                                              jmp   n70_disjunction_af
n70_disjunction_af:     add              dword ptr [rsp + 2304], 1
                        mov              eax, dword ptr [rsp + 2304]
                        cmp              eax, 1;                              je    n88_lit_real_α
                                                                              jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n71_disjunction_α:      mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              dword ptr [rsp + 2368], 0;           jmp   n87_lit_integer_α
n71_disjunction_as:     mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 0;                              jne   .Lx228_0
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n72_coerce_numeric_α
.Lx228_0:               cmp              eax, 1;                              jne   .Lx228_1
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n72_coerce_numeric_α
.Lx228_1:                                                                     jmp   n72_coerce_numeric_α
n71_disjunction_β:      mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 0;                              je    n71_disjunction_af
                                                                              jmp   n71_disjunction_af
n71_disjunction_af:     add              dword ptr [rsp + 2368], 1
                        mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 1;                              je    n86_lit_real_α
                                                                              jmp   n70_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n72_coerce_numeric_α:   mov              eax, dword ptr [rsp + 2288]
                        cmp              al, 5;                               je    .Lx230_1
                        cmp              al, 3;                               jne   .Lx230_0
                        mov              eax, dword ptr [rsp + 2352]
                        cmp              al, 3;                               jne   .Lx230_0
.Lx230_1:               mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n73_coerce_numeric_α
.Lx230_0:               lea              rdi, [rsp + 2288]
                        lea              rsi, [rsp + 2352]
                        lea              rdx, [rsp + 2272]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n73_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n73_coerce_numeric_α:   mov              eax, dword ptr [rsp + 2352]
                        cmp              al, 5;                               je    .Lx232_1
                        cmp              al, 3;                               jne   .Lx232_0
                        mov              eax, dword ptr [rsp + 2288]
                        cmp              al, 3;                               jne   .Lx232_0
.Lx232_1:               mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2264], rax;         jmp   n74_binop_α
.Lx232_0:               lea              rdi, [rsp + 2352]
                        lea              rsi, [rsp + 2288]
                        lea              rdx, [rsp + 2256]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n74_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_α:            mov              eax, dword ptr [rsp + 2272]
                        mov              ecx, dword ptr [rsp + 2256]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx233_2
                        mov              rax, qword ptr [rsp + 2280]
                        mov              rdx, qword ptr [rsp + 2264]
                        add              rax, rdx
                        mov              qword ptr [rsp + 2240], 3
                        mov              qword ptr [rsp + 2248], rax;         jmp   .Lx233_7
.Lx233_2:               and              edx, 1;                              jz    .Lx233_0
                        mov              rsi, qword ptr [rsp + 2280]
                        mov              rdi, qword ptr [rsp + 2264]
                        cmp              al, 5;                               je    .Lx233_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx233_4
.Lx233_3:               movq             xmm0, rsi
.Lx233_4:               cmp              cl, 5;                               je    .Lx233_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx233_6
.Lx233_5:               movq             xmm1, rdi
.Lx233_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 2240], 5
                        mov              qword ptr [rsp + 2248], rax
.Lx233_7:                                                                     jmp   n75_call_builtin_icon_α
.Lx233_0:               mov              rdi, qword ptr [rsp + 2272]
                        mov              rsi, qword ptr [rsp + 2280]
                        mov              rdx, qword ptr [rsp + 2256]
                        mov              rcx, qword ptr [rsp + 2264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n76_lit_string_α
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n75_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2200], rax
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2184], rax
                        .section         .rodata
.Lrkfn235:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn235]
                        lea              rsi, [rsp + 2176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              al, 104;                             je    n71_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n71_disjunction_β
n75_call_builtin_icon_β:
                                                                              jmp   n71_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], 3
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n77_keyword_icon_α
.Lx236_0:               .quad            .Lx236_0_s
.Lx236_0_s:             .string          "l. "
#-----------------------------------------------------------------------------------------------------------------------
n77_keyword_icon_α:     mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0;           jmp   n78_disjunction_α
n77_keyword_icon_β:                                                           jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n78_disjunction_α:      mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              dword ptr [rsp + 2032], 0;           jmp   n85_lit_string_α
n78_disjunction_as:     mov              eax, dword ptr [rsp + 2032]
                        cmp              eax, 0;                              jne   .Lx239_0
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n79_lit_string_α
.Lx239_0:               cmp              eax, 1;                              jne   .Lx239_1
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n79_lit_string_α
.Lx239_1:                                                                     jmp   n79_lit_string_α
n78_disjunction_β:      mov              eax, dword ptr [rsp + 2032]
                        cmp              eax, 0;                              je    n78_disjunction_af
                                                                              jmp   n78_disjunction_af
n78_disjunction_af:     add              dword ptr [rsp + 2032], 1
                        mov              eax, dword ptr [rsp + 2032]
                        cmp              eax, 1;                              je    n84_lit_string_α
                                                                              jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              qword ptr [rsp + 2080], 2            # result
                        mov              dword ptr [rsp + 2084], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n80_disjunction_α
.Lx240_0:               .quad            .Lx240_0_s
.Lx240_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n80_disjunction_α:      mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              dword ptr [rsp + 2112], 0;           jmp   n83_lit_string_α
n80_disjunction_as:     mov              eax, dword ptr [rsp + 2112]
                        cmp              eax, 0;                              jne   .Lx242_0
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n81_call_builtin_icon_α
.Lx242_0:               cmp              eax, 1;                              jne   .Lx242_1
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n81_call_builtin_icon_α
.Lx242_1:                                                                     jmp   n81_call_builtin_icon_α
n80_disjunction_β:      mov              eax, dword ptr [rsp + 2112]
                        cmp              eax, 0;                              je    n80_disjunction_af
                                                                              jmp   n80_disjunction_af
n80_disjunction_af:     add              dword ptr [rsp + 2112], 1
                        mov              eax, dword ptr [rsp + 2112]
                        cmp              eax, 1;                              je    n82_lit_string_α
                                                                              jmp   n78_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1944], rax
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1896], rax
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1880], rax
                        .section         .rodata
.Lrkfn244:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]
                        lea              rsi, [rsp + 1872]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              al, 104;                             je    n80_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n80_disjunction_β
n81_call_builtin_icon_β:
                                                                              jmp   n80_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              qword ptr [rsp + 2144], 2            # result
                        mov              dword ptr [rsp + 2148], 3
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n80_disjunction_as
n82_lit_string_β:                                                             jmp   n80_disjunction_af
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          "mom"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 5
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n80_disjunction_as
n83_lit_string_β:                                                             jmp   n80_disjunction_af
.Lx246_0:               .quad            .Lx246_0_s
.Lx246_0_s:             .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       mov              qword ptr [rsp + 2064], 2            # result
                        mov              dword ptr [rsp + 2068], 7
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n78_disjunction_as
n84_lit_string_β:                                                             jmp   n78_disjunction_af
.Lx247_0:               .quad            .Lx247_0_s
.Lx247_0_s:             .string          "goodbye"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              qword ptr [rsp + 2048], 2            # result
                        mov              dword ptr [rsp + 2052], 5
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n78_disjunction_as
n85_lit_string_β:                                                             jmp   n78_disjunction_af
.Lx248_0:               .quad            .Lx248_0_s
.Lx248_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_real_α:         mov              qword ptr [rsp + 2400], 5            # result
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n71_disjunction_as
n86_lit_real_β:                                                               jmp   n71_disjunction_af
.Lx249_0:               .quad            4611911198408756429
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:      mov              qword ptr [rsp + 2384], 3            # result
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n71_disjunction_as
n87_lit_integer_β:                                                            jmp   n71_disjunction_af
.Lx250_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_real_α:         mov              qword ptr [rsp + 2336], 5            # result
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n70_disjunction_as
n88_lit_real_β:                                                               jmp   n70_disjunction_af
.Lx251_0:               .quad            4619004367821864960
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      mov              qword ptr [rsp + 2320], 3            # result
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n70_disjunction_as
n89_lit_integer_β:                                                            jmp   n70_disjunction_af
.Lx252_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 3
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n91_lit_string_α
.Lx253_0:               .quad            .Lx253_0_s
.Lx253_0_s:             .string          "m. "
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:       mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 0
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n92_iterate_α
.Lx254_0:               .quad            .Lx254_0_s
.Lx254_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n92_iterate_α:          mov              qword ptr [rsp + 1824], 0
.Lx256_0:               mov              rdi, qword ptr [rsp + 1840]
                        mov              rsi, qword ptr [rsp + 1848]
                        mov              rdx, qword ptr [rsp + 1824]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              rax, 104;                            je    n94_lit_string_α
                                                                              jmp   n93_call_builtin_icon_α
n92_iterate_β:          inc              qword ptr [rsp + 1824];              jmp   .Lx256_0
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1752], rax
                        .section         .rodata
.Lrkfn258:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn258]
                        lea              rsi, [rsp + 1744]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              al, 104;                             je    n92_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n92_iterate_β
n93_call_builtin_icon_β:
                                                                              jmp   n92_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       mov              qword ptr [rsp + 1664], 2            # result
                        mov              dword ptr [rsp + 1668], 3
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n95_lit_string_α
.Lx259_0:               .quad            .Lx259_0_s
.Lx259_0_s:             .string          "n. "
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 1
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n96_iterate_α
.Lx260_0:               .quad            .Lx260_0_s
.Lx260_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n96_iterate_α:          mov              qword ptr [rsp + 1696], 0
.Lx262_0:               mov              rdi, qword ptr [rsp + 1712]
                        mov              rsi, qword ptr [rsp + 1720]
                        mov              rdx, qword ptr [rsp + 1696]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              rax, 104;                            je    n98_lit_string_α
                                                                              jmp   n97_call_builtin_icon_α
n96_iterate_β:          inc              qword ptr [rsp + 1696];              jmp   .Lx262_0
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1624], rax
                        .section         .rodata
.Lrkfn264:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn264]
                        lea              rsi, [rsp + 1616]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              al, 104;                             je    n96_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n96_iterate_β
n97_call_builtin_icon_β:
                                                                              jmp   n96_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 3
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n99_lit_string_α
.Lx265_0:               .quad            .Lx265_0_s
.Lx265_0_s:             .string          "o. "
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 5
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n100_iterate_α
.Lx266_0:               .quad            .Lx266_0_s
.Lx266_0_s:             .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n100_iterate_α:         mov              qword ptr [rsp + 1568], 0
.Lx268_0:               mov              rdi, qword ptr [rsp + 1584]
                        mov              rsi, qword ptr [rsp + 1592]
                        mov              rdx, qword ptr [rsp + 1568]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              rax, 104;                            je    n102_lit_string_α
                                                                              jmp   n101_call_builtin_icon_α
n100_iterate_β:         inc              qword ptr [rsp + 1568];              jmp   .Lx268_0
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1512], rax
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1496], rax
                        .section         .rodata
.Lrkfn270:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn270]
                        lea              rsi, [rsp + 1488]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              al, 104;                             je    n100_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n100_iterate_β
n101_call_builtin_icon_β:
                                                                              jmp   n100_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 3
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n103_lit_integer_α
.Lx271_0:               .quad            .Lx271_0_s
.Lx271_0_s:             .string          "p. "
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:     mov              qword ptr [rsp + 1456], 3            # result
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n104_iterate_α
.Lx272_0:               .quad            18446744073709551102
#-----------------------------------------------------------------------------------------------------------------------
n104_iterate_α:         mov              qword ptr [rsp + 1440], 0
.Lx274_0:               mov              rdi, qword ptr [rsp + 1456]
                        mov              rsi, qword ptr [rsp + 1464]
                        mov              rdx, qword ptr [rsp + 1440]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              rax, 104;                            je    n106_lit_string_α
                                                                              jmp   n105_call_builtin_icon_α
n104_iterate_β:         inc              qword ptr [rsp + 1440];              jmp   .Lx274_0
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1384], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1368], rax
                        .section         .rodata
.Lrkfn276:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rsp + 1360]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n104_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n104_iterate_β
n105_call_builtin_icon_β:
                                                                              jmp   n104_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 3
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n107_lit_real_α
.Lx277_0:               .quad            .Lx277_0_s
.Lx277_0_s:             .string          "q. "
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_real_α:        mov              qword ptr [rsp + 1328], 5            # result
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n108_iterate_α
.Lx278_0:               .quad            4623226492472524800
#-----------------------------------------------------------------------------------------------------------------------
n108_iterate_α:         mov              qword ptr [rsp + 1312], 0
.Lx280_0:               mov              rdi, qword ptr [rsp + 1328]
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              rdx, qword ptr [rsp + 1312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              rax, 104;                            je    n110_lit_string_α
                                                                              jmp   n109_call_builtin_icon_α
n108_iterate_β:         inc              qword ptr [rsp + 1312];              jmp   .Lx280_0
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1240], rax
                        .section         .rodata
.Lrkfn282:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn282]
                        lea              rsi, [rsp + 1232]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n108_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n108_iterate_β
n109_call_builtin_icon_β:
                                                                              jmp   n108_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 5
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n111_assign_α
.Lx283_0:               .quad            .Lx283_0_s
.Lx283_0_s:             .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:          mov              rax, qword ptr [rsp + 1200]
                        mov              rdx, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 3840], rax
                        mov              qword ptr [rsp + 3848], rdx;         jmp   n112_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3840]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n113_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n113_iterate_α:         mov              qword ptr [rsp + 976], 0
.Lx288_0:               mov              rdi, qword ptr [rsp + 992]
                        mov              rsi, qword ptr [rsp + 1000]
                        mov              rdx, qword ptr [rsp + 976]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              rax, 104;                            je    n121_lit_string_α
                                                                              jmp   n114_lit_string_α
n113_iterate_β:         inc              qword ptr [rsp + 976];               jmp   .Lx288_0
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:      mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n115_assign_var_α
.Lx289_0:               .quad            .Lx289_0_s
.Lx289_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_var_α:      mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdx, qword ptr [rsp + 1024]
                        mov              rcx, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n121_lit_string_α
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n116_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n116_bound_α:           mov              qword ptr [rsp + 1040], rsp;         jmp   n117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 3
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n118_var_α
.Lx293_0:               .quad            .Lx293_0_s
.Lx293_0_s:             .string          "r. "
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             mov              rax, qword ptr [rsp + 3840]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 3848]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n119_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1112], rax
                        .section         .rodata
.Lrkfn297:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn297]
                        lea              rsi, [rsp + 1104]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    n120_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n120_unmark_α
n119_call_builtin_icon_β:
                                                                              jmp   n120_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n120_unmark_α:          mov              rsp, qword ptr [rsp + 1040];         jmp   n113_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:      mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 3
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n122_disjunction_α
.Lx300_0:               .quad            .Lx300_0_s
.Lx300_0_s:             .string          "s. "
#-----------------------------------------------------------------------------------------------------------------------
n122_disjunction_α:     mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              dword ptr [rsp + 704], 0;            jmp   n133_lit_integer_α
n122_disjunction_as:    mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 0;                              jne   .Lx302_0
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax;          jmp   n123_lit_integer_α
.Lx302_0:               cmp              eax, 1;                              jne   .Lx302_1
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax;          jmp   n123_lit_integer_α
.Lx302_1:               cmp              eax, 2;                              jne   .Lx302_2
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 696], rax;          jmp   n123_lit_integer_α
.Lx302_2:               cmp              eax, 3;                              jne   .Lx302_3
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 696], rax;          jmp   n123_lit_integer_α
.Lx302_3:               cmp              eax, 4;                              jne   .Lx302_4
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 696], rax;          jmp   n123_lit_integer_α
.Lx302_4:               cmp              eax, 5;                              jne   .Lx302_5
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 696], rax;          jmp   n123_lit_integer_α
.Lx302_5:               cmp              eax, 6;                              jne   .Lx302_6
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 696], rax;          jmp   n123_lit_integer_α
.Lx302_6:                                                                     jmp   n123_lit_integer_α
n122_disjunction_β:     mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 0;                              je    n122_disjunction_af
                        cmp              eax, 1;                              je    n122_disjunction_af
                        cmp              eax, 2;                              je    n122_disjunction_af
                        cmp              eax, 3;                              je    n122_disjunction_af
                        cmp              eax, 4;                              je    n122_disjunction_af
                        cmp              eax, 5;                              je    n122_disjunction_af
                                                                              jmp   n122_disjunction_af
n122_disjunction_af:    add              dword ptr [rsp + 704], 1
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 1;                              je    n132_lit_integer_α
                        cmp              eax, 2;                              je    n131_lit_integer_α
                        cmp              eax, 3;                              je    n130_lit_integer_α
                        cmp              eax, 4;                              je    n129_lit_integer_α
                        cmp              eax, 5;                              je    n128_lit_integer_α
                        cmp              eax, 6;                              je    n127_lit_integer_α
                                                                              jmp   n134_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:     mov              qword ptr [rsp + 928], 3             # result
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n124_lit_integer_α
.Lx303_0:               .quad            101
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:     mov              qword ptr [rsp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n125_call_value_α
.Lx304_0:               .quad            102
#-----------------------------------------------------------------------------------------------------------------------
n125_call_value_α:      mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 872], rax
                        mov              qword ptr [rsp + 880], 0
                        mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        lea              rdx, [rsp + 848]
                        mov              ecx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx306_7
                        lea              rcx, [rip + .Lx306_4]
                        push             rcx
                        lea              rcx, [rip + .Lx306_3]
                        push             rcx;                                 jmp   rax
.Lx306_3:               mov              qword ptr [rsp + 888], rsp
                        mov              rax, qword ptr [rsp + 880]
                        test             rax, rax;                            jne   .Lx306_5
                        mov              qword ptr [rsp + 880], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx306_2
.Lx306_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx306_2
.Lx306_4:               mov              qword ptr [rsp + 888], rsp
                        mov              rax, qword ptr [rsp + 880]
                        test             rax, rax;                            jne   .Lx306_6
                        mov              qword ptr [rsp + 880], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx306_2
.Lx306_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx306_2
.Lx306_7:               mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        lea              rdx, [rsp + 848]
                        mov              ecx, 2
                        lea              r8, [rsp + 880]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx306_2:               mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n122_disjunction_β
                                                                              jmp   n126_call_builtin_icon_α
n125_call_value_β:      mov              rax, qword ptr [rsp + 880]
                        cmp              rax, 1;                              jne   .Lx306_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 888];          jmp   qword ptr [rsp]
.Lx306_8:               lea              rdi, [rsp + 880]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n122_disjunction_β
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n126_call_builtin_icon_α
                                                                              jmp   n122_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn308:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn308]
                        lea              rsi, [rsp + 624]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n125_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n125_call_value_β
n126_call_builtin_icon_β:
                                                                              jmp   n125_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:     mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n122_disjunction_as
n127_lit_integer_β:                                                           jmp   n122_disjunction_af
.Lx309_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:     mov              qword ptr [rsp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n122_disjunction_as
n128_lit_integer_β:                                                           jmp   n122_disjunction_af
.Lx310_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:     mov              qword ptr [rsp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n122_disjunction_as
n129_lit_integer_β:                                                           jmp   n122_disjunction_af
.Lx311_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:     mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n122_disjunction_as
n130_lit_integer_β:                                                           jmp   n122_disjunction_af
.Lx312_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:     mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n122_disjunction_as
n131_lit_integer_β:                                                           jmp   n122_disjunction_af
.Lx313_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:     mov              qword ptr [rsp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n122_disjunction_as
n132_lit_integer_β:                                                           jmp   n122_disjunction_af
.Lx314_0:               .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n122_disjunction_as
n133_lit_integer_β:                                                           jmp   n122_disjunction_af
.Lx315_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:      mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 3
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n135_disjunction_α
.Lx316_0:               .quad            .Lx316_0_s
.Lx316_0_s:             .string          "t. "
#-----------------------------------------------------------------------------------------------------------------------
n135_disjunction_α:     mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              dword ptr [rsp + 320], 0;            jmp   n147_lit_integer_α
n135_disjunction_as:    mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 0;                              jne   .Lx318_0
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax;          jmp   n136_lit_integer_α
.Lx318_0:               cmp              eax, 1;                              jne   .Lx318_1
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 312], rax;          jmp   n136_lit_integer_α
.Lx318_1:               cmp              eax, 2;                              jne   .Lx318_2
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 312], rax;          jmp   n136_lit_integer_α
.Lx318_2:               cmp              eax, 3;                              jne   .Lx318_3
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 312], rax;          jmp   n136_lit_integer_α
.Lx318_3:               cmp              eax, 4;                              jne   .Lx318_4
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax;          jmp   n136_lit_integer_α
.Lx318_4:               cmp              eax, 5;                              jne   .Lx318_5
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 312], rax;          jmp   n136_lit_integer_α
.Lx318_5:               cmp              eax, 6;                              jne   .Lx318_6
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 312], rax;          jmp   n136_lit_integer_α
.Lx318_6:                                                                     jmp   n136_lit_integer_α
n135_disjunction_β:     mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 0;                              je    n135_disjunction_af
                        cmp              eax, 1;                              je    n135_disjunction_af
                        cmp              eax, 2;                              je    n135_disjunction_af
                        cmp              eax, 3;                              je    n135_disjunction_af
                        cmp              eax, 4;                              je    n135_disjunction_af
                        cmp              eax, 5;                              je    n135_disjunction_af
                                                                              jmp   n135_disjunction_af
n135_disjunction_af:    add              dword ptr [rsp + 320], 1
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 1;                              je    n146_lit_integer_α
                        cmp              eax, 2;                              je    n145_lit_integer_α
                        cmp              eax, 3;                              je    n144_lit_integer_α
                        cmp              eax, 4;                              je    n143_lit_integer_α
                        cmp              eax, 5;                              je    n142_lit_integer_α
                        cmp              eax, 6;                              je    n141_lit_integer_α
                                                                              jmp   n148_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:     mov              qword ptr [rsp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n137_lit_integer_α
.Lx319_0:               .quad            201
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:     mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n138_make_list_α
.Lx320_0:               .quad            202
#-----------------------------------------------------------------------------------------------------------------------
n138_make_list_α:       mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 544]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n139_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_value_α:      mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 472], rax
                        mov              qword ptr [rsp + 480], 0
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 464]
                        mov              rcx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_apply_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx324_7
                        lea              rcx, [rip + .Lx324_4]
                        push             rcx
                        lea              rcx, [rip + .Lx324_3]
                        push             rcx;                                 jmp   rax
.Lx324_3:               mov              qword ptr [rsp + 488], rsp
                        mov              rax, qword ptr [rsp + 480]
                        test             rax, rax;                            jne   .Lx324_5
                        mov              qword ptr [rsp + 480], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx324_2
.Lx324_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx324_2
.Lx324_4:               mov              qword ptr [rsp + 488], rsp
                        mov              rax, qword ptr [rsp + 480]
                        test             rax, rax;                            jne   .Lx324_6
                        mov              qword ptr [rsp + 480], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx324_2
.Lx324_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx324_2
.Lx324_7:               mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 464]
                        mov              rcx, qword ptr [rsp + 472]
                        lea              r8, [rsp + 480]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_apply_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx324_2:               mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n135_disjunction_β
                                                                              jmp   n140_call_builtin_icon_α
n139_call_value_β:      mov              rax, qword ptr [rsp + 480]
                        cmp              rax, 1;                              jne   .Lx324_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 488];          jmp   qword ptr [rsp]
.Lx324_8:               lea              rdi, [rsp + 480]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n135_disjunction_β
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n140_call_builtin_icon_α
                                                                              jmp   n135_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn326:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn326]
                        lea              rsi, [rsp + 240]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n139_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n139_call_value_β
n140_call_builtin_icon_β:
                                                                              jmp   n139_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:     mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n135_disjunction_as
n141_lit_integer_β:                                                           jmp   n135_disjunction_af
.Lx327_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n135_disjunction_as
n142_lit_integer_β:                                                           jmp   n135_disjunction_af
.Lx328_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:     mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n135_disjunction_as
n143_lit_integer_β:                                                           jmp   n135_disjunction_af
.Lx329_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:     mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n135_disjunction_as
n144_lit_integer_β:                                                           jmp   n135_disjunction_af
.Lx330_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:     mov              qword ptr [rsp + 368], 3             # result
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n135_disjunction_as
n145_lit_integer_β:                                                           jmp   n135_disjunction_af
.Lx331_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:     mov              qword ptr [rsp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n135_disjunction_as
n146_lit_integer_β:                                                           jmp   n135_disjunction_af
.Lx332_0:               .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:     mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n135_disjunction_as
n147_lit_integer_β:                                                           jmp   n135_disjunction_af
.Lx333_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:      mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 3
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n149_lit_string_α
.Lx334_0:               .quad            .Lx334_0_s
.Lx334_0_s:             .string          "u. "
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:      mov              qword ptr [rsp + 80], 2              # result
                        mov              dword ptr [rsp + 84], 1
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n150_lit_integer_α
.Lx335_0:               .quad            .Lx335_0_s
.Lx335_0_s:             .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:     mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n151_make_list_α
.Lx336_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n151_make_list_α:       mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax
                        lea              rdi, [rsp + 192]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n152_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_value_α:      mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 128], 0
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_apply_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx340_7
                        lea              rcx, [rip + .Lx340_4]
                        push             rcx
                        lea              rcx, [rip + .Lx340_3]
                        push             rcx;                                 jmp   rax
.Lx340_3:               mov              qword ptr [rsp + 136], rsp
                        mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx340_5
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx340_2
.Lx340_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx340_2
.Lx340_4:               mov              qword ptr [rsp + 136], rsp
                        mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx340_6
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx340_2
.Lx340_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx340_2
.Lx340_7:               mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        lea              r8, [rsp + 128]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_apply_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx340_2:               mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n153_call_builtin_icon_α
n152_call_value_β:      mov              rax, qword ptr [rsp + 128]
                        cmp              rax, 1;                              jne   .Lx340_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 136];          jmp   qword ptr [rsp]
.Lx340_8:               lea              rdi, [rsp + 128]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n153_call_builtin_icon_α
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n153_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn342:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn342]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n152_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n152_call_value_β
n153_call_builtin_icon_β:
                                                                              jmp   n152_call_value_β
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
.Lstartup_pname0:       .string          "f"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__f
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            144
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
