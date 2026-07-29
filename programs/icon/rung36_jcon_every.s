                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_f_α
proc_f_α:
                        .global          proc_f_α
                        .global          proc_f_β
                        .global          proc_f_γ
                        .global          proc_f_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 128
                        mov              edx, 144
                        call             rt_jmp_frame_lexprep2@PLT
proc_f_α_body:
                        lea              rax, [rip + n1_suspend_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n2_var_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx7_0
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n1_suspend_α
.Lx7_0:
                        cmp              eax, 1
                                                                                        jne   .Lx7_1
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n1_suspend_α
.Lx7_1:
                                                                                        jmp   n1_suspend_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n0_disjunction_af
n0_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n3_var_α
                                                                                        jmp   proc_f_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_suspend_α:
                        lea              rax, [rip + n1_suspend_β]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_f_γ
n1_suspend_β:
                                                                                        jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n0_disjunction_as
n2_var_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n5_op75_α
n3_var_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n4_unop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n0_disjunction_as
n4_unop_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n5_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx16_1
                        cmp              eax, 6
                                                                                        jne   .Lx16_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx16_0
.Lx16_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n4_unop_α
.Lx16_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 96]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n4_unop_α
#-----------------------------------------------------------------------------------------------------------------------
proc_f_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_f_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_f_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_f_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_f_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "f"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_f_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
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
                        sub              rsp, 3864
                        mov              rdi, rsp
                        mov              ecx, 3864
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 3856], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 3824], 1
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n18_call_builtin_icon_α
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "a. "
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 3800], rax
                        .section         .rodata
.Lrkfn156:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn156]
                        lea              rsi, [rbp + 3792]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              eax, 99
                                                                                        je    n19_lit_string_α
                                                                                        jmp   n19_lit_string_α
n18_call_builtin_icon_β:
                                                                                        jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 3744], 1
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n20_lit_integer_α
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "b. "
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rbp + 3760], 6
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n21_call_builtin_icon_α
.Lx158_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3704], rax
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3720], rax
                        .section         .rodata
.Lrkfn160:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn160]
                        lea              rsi, [rbp + 3696]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        cmp              eax, 99
                                                                                        je    n22_lit_string_α
                                                                                        jmp   n22_lit_string_α
n21_call_builtin_icon_β:
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n23_lit_integer_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "c. "
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rbp + 3648], 6
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 3656], rax
                                                                                        jmp   n24_lit_integer_α
.Lx162_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rbp + 3664], 6
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n25_to_α
.Lx163_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n25_to_α:
                        mov              rdi, qword ptr [rbp + 3648]
                        mov              rsi, qword ptr [rbp + 3656]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3648], 6
                        mov              qword ptr [rbp + 3656], rax
                        mov              rdi, qword ptr [rbp + 3664]
                        mov              rsi, qword ptr [rbp + 3672]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3664], 6
                        mov              qword ptr [rbp + 3672], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3632], rax
.Lx165_0:
                        mov              rax, qword ptr [rbp + 3632]
                        mov              rcx, qword ptr [rbp + 3672]
                        cmp              rax, rcx
                                                                                        jg    n27_lit_string_α
                        mov              qword ptr [rbp + 3616], 6
                        mov              qword ptr [rbp + 3624], rax
                                                                                        jmp   n26_call_builtin_icon_α
n25_to_β:
                        inc              qword ptr [rbp + 3632]
                                                                                        jmp   .Lx165_0
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3560], rax
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3576], rax
                        .section         .rodata
.Lrkfn167:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn167]
                        lea              rsi, [rbp + 3552]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              eax, 99
                                                                                        je    n25_to_β
                                                                                        jmp   n25_to_β
n26_call_builtin_icon_β:
                                                                                        jmp   n25_to_β
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 3440], 1
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n28_lit_integer_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "d. "
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 3488], 6
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n29_lit_integer_α
.Lx169_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        mov              qword ptr [rbp + 3504], 6
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n30_lit_integer_α
.Lx170_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 3520], 6
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n31_to_by_α
.Lx171_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n31_to_by_α:
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
                        mov              rdi, qword ptr [rbp + 3520]
                        mov              rsi, qword ptr [rbp + 3528]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3520], 6
                        mov              qword ptr [rbp + 3528], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3472], rax
.Lx173_0:
                        mov              rax, qword ptr [rbp + 3472]
                        mov              rcx, qword ptr [rbp + 3512]
                        mov              rdx, qword ptr [rbp + 3528]
                        cmp              rdx, 0
                                                                                        jl    .Lx173_1
                        cmp              rax, rcx
                                                                                        jg    n33_lit_string_α
                                                                                        jmp   .Lx173_2
.Lx173_1:
                        cmp              rax, rcx
                                                                                        jl    n33_lit_string_α
.Lx173_2:
                        mov              qword ptr [rbp + 3456], 6
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n32_call_builtin_icon_α
n31_to_by_β:
                        mov              rdx, qword ptr [rbp + 3528]
                        mov              rax, qword ptr [rbp + 3472]
                        add              rax, rdx
                        mov              qword ptr [rbp + 3472], rax
                                                                                        jmp   .Lx173_0
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3400], rax
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3416], rax
                        .section         .rodata
.Lrkfn175:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rbp + 3392]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              eax, 99
                                                                                        je    n31_to_by_β
                                                                                        jmp   n31_to_by_β
n32_call_builtin_icon_β:
                                                                                        jmp   n31_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 3280], 1
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   n34_lit_integer_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "e. "
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        mov              qword ptr [rbp + 3328], 6
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n35_lit_integer_α
.Lx177_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rbp + 3344], 6
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 3352], rax
                                                                                        jmp   n36_lit_integer_α
.Lx178_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rbp + 3360], 6
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n37_to_by_α
.Lx179_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n37_to_by_α:
                        mov              rdi, qword ptr [rbp + 3328]
                        mov              rsi, qword ptr [rbp + 3336]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3328], 6
                        mov              qword ptr [rbp + 3336], rax
                        mov              rdi, qword ptr [rbp + 3344]
                        mov              rsi, qword ptr [rbp + 3352]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3344], 6
                        mov              qword ptr [rbp + 3352], rax
                        mov              rdi, qword ptr [rbp + 3360]
                        mov              rsi, qword ptr [rbp + 3368]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3360], 6
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3312], rax
.Lx181_0:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              rcx, qword ptr [rbp + 3352]
                        mov              rdx, qword ptr [rbp + 3368]
                        cmp              rdx, 0
                                                                                        jl    .Lx181_1
                        cmp              rax, rcx
                                                                                        jg    n39_lit_string_α
                                                                                        jmp   .Lx181_2
.Lx181_1:
                        cmp              rax, rcx
                                                                                        jl    n39_lit_string_α
.Lx181_2:
                        mov              qword ptr [rbp + 3296], 6
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n38_call_builtin_icon_α
n37_to_by_β:
                        mov              rdx, qword ptr [rbp + 3368]
                        mov              rax, qword ptr [rbp + 3312]
                        add              rax, rdx
                        mov              qword ptr [rbp + 3312], rax
                                                                                        jmp   .Lx181_0
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3256], rax
                        .section         .rodata
.Lrkfn183:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn183]
                        lea              rsi, [rbp + 3232]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              eax, 99
                                                                                        je    n37_to_by_β
                                                                                        jmp   n37_to_by_β
n38_call_builtin_icon_β:
                                                                                        jmp   n37_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 3120], 1
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n40_lit_integer_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "f. "
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:
                        mov              qword ptr [rbp + 3168], 6
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n41_lit_integer_α
.Lx185_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rbp + 3184], 6
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n42_lit_integer_α
.Lx186_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        mov              qword ptr [rbp + 3200], 6
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n43_to_by_α
.Lx187_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n43_to_by_α:
                        mov              rdi, qword ptr [rbp + 3168]
                        mov              rsi, qword ptr [rbp + 3176]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3168], 6
                        mov              qword ptr [rbp + 3176], rax
                        mov              rdi, qword ptr [rbp + 3184]
                        mov              rsi, qword ptr [rbp + 3192]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3184], 6
                        mov              qword ptr [rbp + 3192], rax
                        mov              rdi, qword ptr [rbp + 3200]
                        mov              rsi, qword ptr [rbp + 3208]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3200], 6
                        mov              qword ptr [rbp + 3208], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3152], rax
.Lx189_0:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              rcx, qword ptr [rbp + 3192]
                        mov              rdx, qword ptr [rbp + 3208]
                        cmp              rdx, 0
                                                                                        jl    .Lx189_1
                        cmp              rax, rcx
                                                                                        jg    n45_lit_string_α
                                                                                        jmp   .Lx189_2
.Lx189_1:
                        cmp              rax, rcx
                                                                                        jl    n45_lit_string_α
.Lx189_2:
                        mov              qword ptr [rbp + 3136], 6
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n44_call_builtin_icon_α
n43_to_by_β:
                        mov              rdx, qword ptr [rbp + 3208]
                        mov              rax, qword ptr [rbp + 3152]
                        add              rax, rdx
                        mov              qword ptr [rbp + 3152], rax
                                                                                        jmp   .Lx189_0
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3080], rax
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3096], rax
                        .section         .rodata
.Lrkfn191:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rbp + 3072]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              eax, 99
                                                                                        je    n43_to_by_β
                                                                                        jmp   n43_to_by_β
n44_call_builtin_icon_β:
                                                                                        jmp   n43_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 2960], 1
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n46_lit_integer_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "g. "
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:
                        mov              qword ptr [rbp + 3008], 6
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n47_lit_integer_α
.Lx193_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rbp + 3024], 6
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rbp + 3032], rax
                                                                                        jmp   n48_lit_integer_α
.Lx194_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        mov              qword ptr [rbp + 3040], 6
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n49_to_by_α
.Lx195_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n49_to_by_α:
                        mov              rdi, qword ptr [rbp + 3008]
                        mov              rsi, qword ptr [rbp + 3016]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3008], 6
                        mov              qword ptr [rbp + 3016], rax
                        mov              rdi, qword ptr [rbp + 3024]
                        mov              rsi, qword ptr [rbp + 3032]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3024], 6
                        mov              qword ptr [rbp + 3032], rax
                        mov              rdi, qword ptr [rbp + 3040]
                        mov              rsi, qword ptr [rbp + 3048]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3040], 6
                        mov              qword ptr [rbp + 3048], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2992], rax
.Lx197_0:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              rcx, qword ptr [rbp + 3032]
                        mov              rdx, qword ptr [rbp + 3048]
                        cmp              rdx, 0
                                                                                        jl    .Lx197_1
                        cmp              rax, rcx
                                                                                        jg    n51_lit_string_α
                                                                                        jmp   .Lx197_2
.Lx197_1:
                        cmp              rax, rcx
                                                                                        jl    n51_lit_string_α
.Lx197_2:
                        mov              qword ptr [rbp + 2976], 6
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n50_call_builtin_icon_α
n49_to_by_β:
                        mov              rdx, qword ptr [rbp + 3048]
                        mov              rax, qword ptr [rbp + 2992]
                        add              rax, rdx
                        mov              qword ptr [rbp + 2992], rax
                                                                                        jmp   .Lx197_0
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2920], rax
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2936], rax
                        .section         .rodata
.Lrkfn199:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]
                        lea              rsi, [rbp + 2912]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        cmp              eax, 99
                                                                                        je    n49_to_by_β
                                                                                        jmp   n49_to_by_β
n50_call_builtin_icon_β:
                                                                                        jmp   n49_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 2800], 1
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n52_lit_integer_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "h. "
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        mov              qword ptr [rbp + 2848], 6
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n53_lit_integer_α
.Lx201_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:
                        mov              qword ptr [rbp + 2864], 6
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n54_lit_integer_α
.Lx202_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        mov              qword ptr [rbp + 2880], 6
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n55_to_by_α
.Lx203_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n55_to_by_α:
                        mov              rdi, qword ptr [rbp + 2848]
                        mov              rsi, qword ptr [rbp + 2856]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2848], 6
                        mov              qword ptr [rbp + 2856], rax
                        mov              rdi, qword ptr [rbp + 2864]
                        mov              rsi, qword ptr [rbp + 2872]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2864], 6
                        mov              qword ptr [rbp + 2872], rax
                        mov              rdi, qword ptr [rbp + 2880]
                        mov              rsi, qword ptr [rbp + 2888]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2880], 6
                        mov              qword ptr [rbp + 2888], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2832], rax
.Lx205_0:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              rcx, qword ptr [rbp + 2872]
                        mov              rdx, qword ptr [rbp + 2888]
                        cmp              rdx, 0
                                                                                        jl    .Lx205_1
                        cmp              rax, rcx
                                                                                        jg    n57_lit_string_α
                                                                                        jmp   .Lx205_2
.Lx205_1:
                        cmp              rax, rcx
                                                                                        jl    n57_lit_string_α
.Lx205_2:
                        mov              qword ptr [rbp + 2816], 6
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n56_call_builtin_icon_α
n55_to_by_β:
                        mov              rdx, qword ptr [rbp + 2888]
                        mov              rax, qword ptr [rbp + 2832]
                        add              rax, rdx
                        mov              qword ptr [rbp + 2832], rax
                                                                                        jmp   .Lx205_0
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2760], rax
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2776], rax
                        .section         .rodata
.Lrkfn207:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn207]
                        lea              rsi, [rbp + 2752]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              eax, 99
                                                                                        je    n55_to_by_β
                                                                                        jmp   n55_to_by_β
n56_call_builtin_icon_β:
                                                                                        jmp   n55_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 2640], 1
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n58_lit_integer_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "i. "
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:
                        mov              qword ptr [rbp + 2688], 6
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n59_lit_integer_α
.Lx209_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:
                        mov              qword ptr [rbp + 2704], 6
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n60_lit_integer_α
.Lx210_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        mov              qword ptr [rbp + 2720], 6
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n61_to_by_α
.Lx211_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n61_to_by_α:
                        mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2688], 6
                        mov              qword ptr [rbp + 2696], rax
                        mov              rdi, qword ptr [rbp + 2704]
                        mov              rsi, qword ptr [rbp + 2712]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2704], 6
                        mov              qword ptr [rbp + 2712], rax
                        mov              rdi, qword ptr [rbp + 2720]
                        mov              rsi, qword ptr [rbp + 2728]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2720], 6
                        mov              qword ptr [rbp + 2728], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2672], rax
.Lx213_0:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              rcx, qword ptr [rbp + 2712]
                        mov              rdx, qword ptr [rbp + 2728]
                        cmp              rdx, 0
                                                                                        jl    .Lx213_1
                        cmp              rax, rcx
                                                                                        jg    n63_lit_string_α
                                                                                        jmp   .Lx213_2
.Lx213_1:
                        cmp              rax, rcx
                                                                                        jl    n63_lit_string_α
.Lx213_2:
                        mov              qword ptr [rbp + 2656], 6
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n62_call_builtin_icon_α
n61_to_by_β:
                        mov              rdx, qword ptr [rbp + 2728]
                        mov              rax, qword ptr [rbp + 2672]
                        add              rax, rdx
                        mov              qword ptr [rbp + 2672], rax
                                                                                        jmp   .Lx213_0
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2616], rax
                        .section         .rodata
.Lrkfn215:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn215]
                        lea              rsi, [rbp + 2592]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 99
                                                                                        je    n61_to_by_β
                                                                                        jmp   n61_to_by_β
n62_call_builtin_icon_β:
                                                                                        jmp   n61_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        mov              qword ptr [rbp + 2480], 1
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n64_lit_integer_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "j. "
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        mov              qword ptr [rbp + 2528], 6
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n65_lit_integer_α
.Lx217_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:
                        mov              qword ptr [rbp + 2544], 6
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n66_lit_integer_α
.Lx218_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:
                        mov              qword ptr [rbp + 2560], 6
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n67_to_by_α
.Lx219_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n67_to_by_α:
                        mov              rdi, qword ptr [rbp + 2528]
                        mov              rsi, qword ptr [rbp + 2536]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2528], 6
                        mov              qword ptr [rbp + 2536], rax
                        mov              rdi, qword ptr [rbp + 2544]
                        mov              rsi, qword ptr [rbp + 2552]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2544], 6
                        mov              qword ptr [rbp + 2552], rax
                        mov              rdi, qword ptr [rbp + 2560]
                        mov              rsi, qword ptr [rbp + 2568]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2560], 6
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2512], rax
.Lx221_0:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              rcx, qword ptr [rbp + 2552]
                        mov              rdx, qword ptr [rbp + 2568]
                        cmp              rdx, 0
                                                                                        jl    .Lx221_1
                        cmp              rax, rcx
                                                                                        jg    n69_lit_string_α
                                                                                        jmp   .Lx221_2
.Lx221_1:
                        cmp              rax, rcx
                                                                                        jl    n69_lit_string_α
.Lx221_2:
                        mov              qword ptr [rbp + 2496], 6
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n68_call_builtin_icon_α
n67_to_by_β:
                        mov              rdx, qword ptr [rbp + 2568]
                        mov              rax, qword ptr [rbp + 2512]
                        add              rax, rdx
                        mov              qword ptr [rbp + 2512], rax
                                                                                        jmp   .Lx221_0
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2456], rax
                        .section         .rodata
.Lrkfn223:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]
                        lea              rsi, [rbp + 2432]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 99
                                                                                        je    n67_to_by_β
                                                                                        jmp   n67_to_by_β
n68_call_builtin_icon_β:
                                                                                        jmp   n67_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n70_disjunction_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "k. "
#-----------------------------------------------------------------------------------------------------------------------
n70_disjunction_α:
                        mov              qword ptr [rbp + 2288], 0
                        mov              qword ptr [rbp + 2296], 0
                        mov              dword ptr [rbp + 2304], 0
                                                                                        jmp   n73_lit_integer_α
n70_disjunction_as:
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              eax, 0
                                                                                        jne   .Lx226_0
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n71_disjunction_α
.Lx226_0:
                        cmp              eax, 1
                                                                                        jne   .Lx226_1
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n71_disjunction_α
.Lx226_1:
                                                                                        jmp   n71_disjunction_α
n70_disjunction_β:
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              eax, 0
                                                                                        je    n70_disjunction_af
                                                                                        jmp   n70_disjunction_af
n70_disjunction_af:
                        add              dword ptr [rbp + 2304], 1
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              eax, 1
                                                                                        je    n74_lit_real_α
                                                                                        jmp   n72_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n71_disjunction_α:
                        mov              qword ptr [rbp + 2352], 0
                        mov              qword ptr [rbp + 2360], 0
                        mov              dword ptr [rbp + 2368], 0
                                                                                        jmp   n76_lit_integer_α
n71_disjunction_as:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 0
                                                                                        jne   .Lx228_0
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n75_op75_α
.Lx228_0:
                        cmp              eax, 1
                                                                                        jne   .Lx228_1
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n75_op75_α
.Lx228_1:
                                                                                        jmp   n75_op75_α
n71_disjunction_β:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 0
                                                                                        je    n71_disjunction_af
                                                                                        jmp   n71_disjunction_af
n71_disjunction_af:
                        add              dword ptr [rbp + 2368], 1
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 1
                                                                                        je    n77_lit_real_α
                                                                                        jmp   n70_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n78_keyword_icon_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "l. "
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:
                        mov              qword ptr [rbp + 2320], 6
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n70_disjunction_as
n73_lit_integer_β:
                                                                                        jmp   n70_disjunction_af
.Lx230_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_real_α:
                        mov              qword ptr [rbp + 2336], 7
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n70_disjunction_as
n74_lit_real_β:
                                                                                        jmp   n70_disjunction_af
.Lx231_0:
                        .quad            4619004367821864960
#-----------------------------------------------------------------------------------------------------------------------
n75_op75_α:
                        mov              eax, dword ptr [rbp + 2288]
                        cmp              eax, 7
                                                                                        je    .Lx233_1
                        cmp              eax, 6
                                                                                        jne   .Lx233_0
                        mov              eax, dword ptr [rbp + 2352]
                        cmp              eax, 6
                                                                                        jne   .Lx233_0
.Lx233_1:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n79_op75_α
.Lx233_0:
                        lea              rdi, [rbp + 2288]
                        lea              rsi, [rbp + 2352]
                        lea              rdx, [rbp + 2272]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n79_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        mov              qword ptr [rbp + 2384], 6
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n71_disjunction_as
n76_lit_integer_β:
                                                                                        jmp   n71_disjunction_af
.Lx234_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_real_α:
                        mov              qword ptr [rbp + 2400], 7
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n71_disjunction_as
n77_lit_real_β:
                                                                                        jmp   n71_disjunction_af
.Lx235_0:
                        .quad            4611911198408756429
#-----------------------------------------------------------------------------------------------------------------------
n78_keyword_icon_α:
                        mov              qword ptr [rbp + 1984], 0
                        mov              qword ptr [rbp + 1992], 0
                                                                                        jmp   n80_disjunction_α
n78_keyword_icon_β:
                                                                                        jmp   n83_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_op75_α:
                        mov              eax, dword ptr [rbp + 2352]
                        cmp              eax, 7
                                                                                        je    .Lx238_1
                        cmp              eax, 6
                                                                                        jne   .Lx238_0
                        mov              eax, dword ptr [rbp + 2288]
                        cmp              eax, 6
                                                                                        jne   .Lx238_0
.Lx238_1:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n81_binop_α
.Lx238_0:
                        lea              rdi, [rbp + 2352]
                        lea              rsi, [rbp + 2288]
                        lea              rdx, [rbp + 2256]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n81_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n80_disjunction_α:
                        mov              qword ptr [rbp + 2016], 0
                        mov              qword ptr [rbp + 2024], 0
                        mov              dword ptr [rbp + 2032], 0
                                                                                        jmp   n84_lit_string_α
n80_disjunction_as:
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 0
                                                                                        jne   .Lx240_0
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n82_lit_string_α
.Lx240_0:
                        cmp              eax, 1
                                                                                        jne   .Lx240_1
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n82_lit_string_α
.Lx240_1:
                                                                                        jmp   n82_lit_string_α
n80_disjunction_β:
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 0
                                                                                        je    n80_disjunction_af
                                                                                        jmp   n80_disjunction_af
n80_disjunction_af:
                        add              dword ptr [rbp + 2032], 1
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 1
                                                                                        je    n85_lit_string_α
                                                                                        jmp   n83_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_binop_α:
                        mov              eax, dword ptr [rbp + 2272]
                        cmp              eax, 6
                                                                                        jne   .Lx241_0
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 6
                                                                                        jne   .Lx241_0
                        mov              rax, qword ptr [rbp + 2280]
                        mov              rcx, qword ptr [rbp + 2264]
                        add              rax, rcx
                        mov              qword ptr [rbp + 2240], 6
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n86_call_builtin_icon_α
.Lx241_0:
                        mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              rdx, qword ptr [rbp + 2256]
                        mov              rcx, qword ptr [rbp + 2264]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n72_lit_string_α
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n86_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n87_disjunction_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n88_lit_string_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "m. "
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n80_disjunction_as
n84_lit_string_β:
                                                                                        jmp   n80_disjunction_af
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n80_disjunction_as
n85_lit_string_β:
                                                                                        jmp   n80_disjunction_af
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "goodbye"
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2200], rax
                        .section         .rodata
.Lrkfn247:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn247]
                        lea              rsi, [rbp + 2176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n71_disjunction_β
                                                                                        jmp   n71_disjunction_β
n86_call_builtin_icon_β:
                                                                                        jmp   n71_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n87_disjunction_α:
                        mov              qword ptr [rbp + 2096], 0
                        mov              qword ptr [rbp + 2104], 0
                        mov              dword ptr [rbp + 2112], 0
                                                                                        jmp   n90_lit_string_α
n87_disjunction_as:
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 0
                                                                                        jne   .Lx249_0
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n89_call_builtin_icon_α
.Lx249_0:
                        cmp              eax, 1
                                                                                        jne   .Lx249_1
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n89_call_builtin_icon_α
.Lx249_1:
                                                                                        jmp   n89_call_builtin_icon_α
n87_disjunction_β:
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 0
                                                                                        je    n87_disjunction_af
                                                                                        jmp   n87_disjunction_af
n87_disjunction_af:
                        add              dword ptr [rbp + 2112], 1
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 1
                                                                                        je    n91_lit_string_α
                                                                                        jmp   n80_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n92_iterate_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1944], rax
                        .section         .rodata
.Lrkfn252:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn252]
                        lea              rsi, [rbp + 1872]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n87_disjunction_β
                                                                                        jmp   n87_disjunction_β
n89_call_builtin_icon_β:
                                                                                        jmp   n87_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n87_disjunction_as
n90_lit_string_β:
                                                                                        jmp   n87_disjunction_af
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n87_disjunction_as
n91_lit_string_β:
                                                                                        jmp   n87_disjunction_af
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "mom"
#-----------------------------------------------------------------------------------------------------------------------
n92_iterate_α:
                        mov              qword ptr [rbp + 1824], 0
.Lx256_0:
                        mov              rdi, qword ptr [rbp + 1840]
                        mov              rsi, qword ptr [rbp + 1848]
                        mov              rdx, qword ptr [rbp + 1824]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              rax, 99
                                                                                        je    n94_lit_string_α
                                                                                        jmp   n93_call_builtin_icon_α
n92_iterate_β:
                        inc              qword ptr [rbp + 1824]
                                                                                        jmp   .Lx256_0
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lrkfn258:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn258]
                        lea              rsi, [rbp + 1744]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n92_iterate_β
                                                                                        jmp   n92_iterate_β
n93_call_builtin_icon_β:
                                                                                        jmp   n92_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 1664], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n95_lit_string_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "n. "
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n96_iterate_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n96_iterate_α:
                        mov              qword ptr [rbp + 1696], 0
.Lx262_0:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1696]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              rax, 99
                                                                                        je    n98_lit_string_α
                                                                                        jmp   n97_call_builtin_icon_α
n96_iterate_β:
                        inc              qword ptr [rbp + 1696]
                                                                                        jmp   .Lx262_0
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lrkfn264:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn264]
                        lea              rsi, [rbp + 1616]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n96_iterate_β
                                                                                        jmp   n96_iterate_β
n97_call_builtin_icon_β:
                                                                                        jmp   n96_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n99_lit_string_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "o. "
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n100_iterate_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n100_iterate_α:
                        mov              qword ptr [rbp + 1568], 0
.Lx268_0:
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        mov              rdx, qword ptr [rbp + 1568]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              rax, 99
                                                                                        je    n102_lit_string_α
                                                                                        jmp   n101_call_builtin_icon_α
n100_iterate_β:
                        inc              qword ptr [rbp + 1568]
                                                                                        jmp   .Lx268_0
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lrkfn270:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn270]
                        lea              rsi, [rbp + 1488]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n100_iterate_β
                                                                                        jmp   n100_iterate_β
n101_call_builtin_icon_β:
                                                                                        jmp   n100_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n103_lit_integer_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "p. "
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:
                        mov              qword ptr [rbp + 1456], 6
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n104_iterate_α
.Lx272_0:
                        .quad            18446744073709551102
#-----------------------------------------------------------------------------------------------------------------------
n104_iterate_α:
                        mov              qword ptr [rbp + 1440], 0
.Lx274_0:
                        mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        mov              rdx, qword ptr [rbp + 1440]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              rax, 99
                                                                                        je    n106_lit_string_α
                                                                                        jmp   n105_call_builtin_icon_α
n104_iterate_β:
                        inc              qword ptr [rbp + 1440]
                                                                                        jmp   .Lx274_0
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                        .section         .rodata
.Lrkfn276:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rbp + 1360]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n104_iterate_β
                                                                                        jmp   n104_iterate_β
n105_call_builtin_icon_β:
                                                                                        jmp   n104_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n107_lit_real_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "q. "
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_real_α:
                        mov              qword ptr [rbp + 1328], 7
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n108_iterate_α
.Lx278_0:
                        .quad            4623226492472524800
#-----------------------------------------------------------------------------------------------------------------------
n108_iterate_α:
                        mov              qword ptr [rbp + 1312], 0
.Lx280_0:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1312]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              rax, 99
                                                                                        je    n110_lit_string_α
                                                                                        jmp   n109_call_builtin_icon_α
n108_iterate_β:
                        inc              qword ptr [rbp + 1312]
                                                                                        jmp   .Lx280_0
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn282:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn282]
                        lea              rsi, [rbp + 1232]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n108_iterate_β
                                                                                        jmp   n108_iterate_β
n109_call_builtin_icon_β:
                                                                                        jmp   n108_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n111_assign_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                                                                                        jmp   n112_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3840]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n113_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n113_iterate_α:
                        mov              qword ptr [rbp + 976], 0
.Lx288_0:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 976]
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              rax, 99
                                                                                        je    n115_lit_string_α
                                                                                        jmp   n114_lit_string_α
n113_iterate_β:
                        inc              qword ptr [rbp + 976]
                                                                                        jmp   .Lx288_0
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n116_assign_var_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n117_disjunction_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "s. "
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_var_α:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n115_lit_string_α
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n118_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n117_disjunction_α:
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                        mov              dword ptr [rbp + 704], 0
                                                                                        jmp   n121_lit_integer_α
n117_disjunction_as:
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0
                                                                                        jne   .Lx293_0
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n119_lit_integer_α
.Lx293_0:
                        cmp              eax, 1
                                                                                        jne   .Lx293_1
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n119_lit_integer_α
.Lx293_1:
                        cmp              eax, 2
                                                                                        jne   .Lx293_2
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n119_lit_integer_α
.Lx293_2:
                        cmp              eax, 3
                                                                                        jne   .Lx293_3
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n119_lit_integer_α
.Lx293_3:
                        cmp              eax, 4
                                                                                        jne   .Lx293_4
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n119_lit_integer_α
.Lx293_4:
                        cmp              eax, 5
                                                                                        jne   .Lx293_5
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n119_lit_integer_α
.Lx293_5:
                        cmp              eax, 6
                                                                                        jne   .Lx293_6
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n119_lit_integer_α
.Lx293_6:
                                                                                        jmp   n119_lit_integer_α
n117_disjunction_β:
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0
                                                                                        je    n117_disjunction_af
                        cmp              eax, 1
                                                                                        je    n117_disjunction_af
                        cmp              eax, 2
                                                                                        je    n117_disjunction_af
                        cmp              eax, 3
                                                                                        je    n117_disjunction_af
                        cmp              eax, 4
                                                                                        je    n117_disjunction_af
                        cmp              eax, 5
                                                                                        je    n117_disjunction_af
                                                                                        jmp   n117_disjunction_af
n117_disjunction_af:
                        add              dword ptr [rbp + 704], 1
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 1
                                                                                        je    n122_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n123_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n124_lit_integer_α
                        cmp              eax, 4
                                                                                        je    n125_lit_integer_α
                        cmp              eax, 5
                                                                                        je    n126_lit_integer_α
                        cmp              eax, 6
                                                                                        je    n127_lit_integer_α
                                                                                        jmp   n120_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n118_bound_α:
                        mov              qword ptr [rbp + 1040], rsp
                                                                                        jmp   n128_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:
                        mov              qword ptr [rbp + 928], 6
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n129_lit_integer_α
.Lx296_0:
                        .quad            101
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n130_disjunction_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "t. "
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n117_disjunction_as
n121_lit_integer_β:
                                                                                        jmp   n117_disjunction_af
.Lx298_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_integer_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n117_disjunction_as
n122_lit_integer_β:
                                                                                        jmp   n117_disjunction_af
.Lx299_0:
                        .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n117_disjunction_as
n123_lit_integer_β:
                                                                                        jmp   n117_disjunction_af
.Lx300_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n117_disjunction_as
n124_lit_integer_β:
                                                                                        jmp   n117_disjunction_af
.Lx301_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n117_disjunction_as
n125_lit_integer_β:
                                                                                        jmp   n117_disjunction_af
.Lx302_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n117_disjunction_as
n126_lit_integer_β:
                                                                                        jmp   n117_disjunction_af
.Lx303_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n117_disjunction_as
n127_lit_integer_β:
                                                                                        jmp   n117_disjunction_af
.Lx304_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n131_var_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "r. "
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:
                        mov              qword ptr [rbp + 944], 6
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n132_call_value_α
.Lx306_0:
                        .quad            102
#-----------------------------------------------------------------------------------------------------------------------
n130_disjunction_α:
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              dword ptr [rbp + 320], 0
                                                                                        jmp   n135_lit_integer_α
n130_disjunction_as:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        jne   .Lx308_0
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n133_lit_integer_α
.Lx308_0:
                        cmp              eax, 1
                                                                                        jne   .Lx308_1
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n133_lit_integer_α
.Lx308_1:
                        cmp              eax, 2
                                                                                        jne   .Lx308_2
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n133_lit_integer_α
.Lx308_2:
                        cmp              eax, 3
                                                                                        jne   .Lx308_3
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n133_lit_integer_α
.Lx308_3:
                        cmp              eax, 4
                                                                                        jne   .Lx308_4
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n133_lit_integer_α
.Lx308_4:
                        cmp              eax, 5
                                                                                        jne   .Lx308_5
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n133_lit_integer_α
.Lx308_5:
                        cmp              eax, 6
                                                                                        jne   .Lx308_6
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n133_lit_integer_α
.Lx308_6:
                                                                                        jmp   n133_lit_integer_α
n130_disjunction_β:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        je    n130_disjunction_af
                        cmp              eax, 1
                                                                                        je    n130_disjunction_af
                        cmp              eax, 2
                                                                                        je    n130_disjunction_af
                        cmp              eax, 3
                                                                                        je    n130_disjunction_af
                        cmp              eax, 4
                                                                                        je    n130_disjunction_af
                        cmp              eax, 5
                                                                                        je    n130_disjunction_af
                                                                                        jmp   n130_disjunction_af
n130_disjunction_af:
                        add              dword ptr [rbp + 320], 1
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 1
                                                                                        je    n136_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n137_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n138_lit_integer_α
                        cmp              eax, 4
                                                                                        je    n139_lit_integer_α
                        cmp              eax, 5
                                                                                        je    n140_lit_integer_α
                        cmp              eax, 6
                                                                                        je    n141_lit_integer_α
                                                                                        jmp   n134_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n142_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_value_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 872], rax
                        mov              qword ptr [rbp + 880], 0
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        lea              rdx, [rbp + 848]
                        mov              ecx, 2
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx312_7
                        lea              rcx, [rip + .Lx312_3]
                        lea              rdx, [rip + .Lx312_4]
                                                                                        jmp   rax
.Lx312_3:
                        mov              qword ptr [rbp + 888], rsp
                        mov              rax, qword ptr [rbp + 880]
                        test             rax, rax
                                                                                        jne   .Lx312_5
                        mov              qword ptr [rbp + 880], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx312_2
.Lx312_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx312_2
.Lx312_4:
                        mov              qword ptr [rbp + 888], rsp
                        mov              rax, qword ptr [rbp + 880]
                        test             rax, rax
                                                                                        jne   .Lx312_6
                        mov              qword ptr [rbp + 880], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx312_2
.Lx312_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx312_2
.Lx312_7:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        lea              rdx, [rbp + 848]
                        mov              ecx, 2
                        lea              r8, [rbp + 880]
                        call             rt_call_value_gen_h@PLT
.Lx312_2:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n117_disjunction_β
                                                                                        jmp   n144_call_builtin_icon_α
n132_call_value_β:
                        mov              rax, qword ptr [rbp + 880]
                        cmp              rax, 1
                                                                                        jne   .Lx312_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 888]
                                                                                        jmp   qword ptr [rsp]
.Lx312_8:
                        lea              rdi, [rbp + 880]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n117_disjunction_β
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n144_call_builtin_icon_α
                                                                                        jmp   n117_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n145_lit_integer_α
.Lx313_0:
                        .quad            201
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n146_lit_string_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "u. "
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:
                        mov              qword ptr [rbp + 336], 6
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n130_disjunction_as
n135_lit_integer_β:
                                                                                        jmp   n130_disjunction_af
.Lx315_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n130_disjunction_as
n136_lit_integer_β:
                                                                                        jmp   n130_disjunction_af
.Lx316_0:
                        .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:
                        mov              qword ptr [rbp + 368], 6
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n130_disjunction_as
n137_lit_integer_β:
                                                                                        jmp   n130_disjunction_af
.Lx317_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n130_disjunction_as
n138_lit_integer_β:
                                                                                        jmp   n130_disjunction_af
.Lx318_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n130_disjunction_as
n139_lit_integer_β:
                                                                                        jmp   n130_disjunction_af
.Lx319_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n130_disjunction_as
n140_lit_integer_β:
                                                                                        jmp   n130_disjunction_af
.Lx320_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n130_disjunction_as
n141_lit_integer_β:
                                                                                        jmp   n130_disjunction_af
.Lx321_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n142_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lrkfn323:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn323]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n143_unmark_α
                                                                                        jmp   n143_unmark_α
n142_call_builtin_icon_β:
                                                                                        jmp   n143_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n143_unmark_α:
                        mov              rsp, qword ptr [rbp + 1040]
                                                                                        jmp   n113_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn327:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn327]
                        lea              rsi, [rbp + 624]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n132_call_value_β
                                                                                        jmp   n132_call_value_β
n144_call_builtin_icon_β:
                                                                                        jmp   n132_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n147_make_list_α
.Lx328_0:
                        .quad            202
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rbp + 80], 1
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n148_lit_integer_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n147_make_list_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 2
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n149_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n150_make_list_α
.Lx332_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n149_call_value_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                        mov              qword ptr [rbp + 480], 0
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx334_7
                        lea              rcx, [rip + .Lx334_3]
                        lea              rdx, [rip + .Lx334_4]
                                                                                        jmp   rax
.Lx334_3:
                        mov              qword ptr [rbp + 488], rsp
                        mov              rax, qword ptr [rbp + 480]
                        test             rax, rax
                                                                                        jne   .Lx334_5
                        mov              qword ptr [rbp + 480], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx334_2
.Lx334_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx334_2
.Lx334_4:
                        mov              qword ptr [rbp + 488], rsp
                        mov              rax, qword ptr [rbp + 480]
                        test             rax, rax
                                                                                        jne   .Lx334_6
                        mov              qword ptr [rbp + 480], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx334_2
.Lx334_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx334_2
.Lx334_7:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        lea              r8, [rbp + 480]
                        call             rt_call_apply_gen_h@PLT
.Lx334_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n130_disjunction_β
                                                                                        jmp   n151_call_builtin_icon_α
n149_call_value_β:
                        mov              rax, qword ptr [rbp + 480]
                        cmp              rax, 1
                                                                                        jne   .Lx334_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 488]
                                                                                        jmp   qword ptr [rsp]
.Lx334_8:
                        lea              rdi, [rbp + 480]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n130_disjunction_β
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n151_call_builtin_icon_α
                                                                                        jmp   n130_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n150_make_list_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n152_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn338:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn338]
                        lea              rsi, [rbp + 240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n149_call_value_β
                                                                                        jmp   n149_call_value_β
n151_call_builtin_icon_β:
                                                                                        jmp   n149_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n152_call_value_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 128], 0
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx340_7
                        lea              rcx, [rip + .Lx340_3]
                        lea              rdx, [rip + .Lx340_4]
                                                                                        jmp   rax
.Lx340_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx340_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx340_2
.Lx340_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx340_2
.Lx340_4:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx340_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx340_2
.Lx340_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx340_2
.Lx340_7:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        lea              r8, [rbp + 128]
                        call             rt_call_apply_gen_h@PLT
.Lx340_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n153_call_builtin_icon_α
n152_call_value_β:
                        mov              rax, qword ptr [rbp + 128]
                        cmp              rax, 1
                                                                                        jne   .Lx340_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx340_8:
                        lea              rdi, [rbp + 128]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n153_call_builtin_icon_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n153_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn342:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn342]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n152_call_value_β
                                                                                        jmp   n152_call_value_β
n153_call_builtin_icon_β:
                                                                                        jmp   n152_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 3856]
                        add              rsp, 3864
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 3856]
                        add              rsp, 3864
                        ret
                        .section         .note.GNU-stack,"",@progbits
