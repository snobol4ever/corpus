                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_f_α
proc_f_α:
proc_f_α_body:
                        lea              rax, [rip + n1_suspend_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n5_var_α
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
                                                                                        je    n2_var_α
                                                                                        jmp   proc_f_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_suspend_α:
                        lea              rax, [rip + n1_suspend_β]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 96
                                                                                        jmp   proc_f_γ
n1_suspend_β:
                                                                                        jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n3_coerce_numeric_α
n2_var_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx13_1
                        cmp              eax, 3
                                                                                        jne   .Lx13_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx13_0
.Lx13_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n4_unop_α
.Lx13_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 96]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n4_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n4_unop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # a
                        mov              rsi, qword ptr [rbp + 104]                     # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n0_disjunction_as
n4_unop_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n0_disjunction_as
n5_var_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_f_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_f_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_f_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_f_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 240
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rbp + 3824], 2                      # result
                        mov              dword ptr [rbp + 3828], 3
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n18_call_builtin_icon_α
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "a. "
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 3800], rax
                        .section         .rodata
.Lrkfn35:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn35]                          # fn
                        lea              rsi, [rbp + 3792]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              eax, 104
                                                                                        je    n19_lit_string_α
                                                                                        jmp   n19_lit_string_α
n18_call_builtin_icon_β:
                                                                                        jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 3744], 2                      # result
                        mov              dword ptr [rbp + 3748], 3
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n20_lit_integer_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "b. "
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rbp + 3760], 3                      # result
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n21_call_builtin_icon_α
.Lx37_0:
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
.Lrkfn39:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn39]                          # fn
                        lea              rsi, [rbp + 3696]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        cmp              eax, 104
                                                                                        je    n22_lit_string_α
                                                                                        jmp   n22_lit_string_α
n21_call_builtin_icon_β:
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 3600], 2                      # result
                        mov              dword ptr [rbp + 3604], 3
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n23_lit_integer_α
.Lx40_0:
                        .quad            .Lx40_0_s
.Lx40_0_s:
                        .string          "c. "
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rbp + 3648], 3                      # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 3656], rax
                                                                                        jmp   n24_lit_integer_α
.Lx41_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rbp + 3664], 3                      # result
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n25_to_α
.Lx42_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n25_to_α:
                        mov              rdi, qword ptr [rbp + 3648]                    # v
                        mov              rsi, qword ptr [rbp + 3656]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3648], 3
                        mov              qword ptr [rbp + 3656], rax
                        mov              rdi, qword ptr [rbp + 3664]                    # v
                        mov              rsi, qword ptr [rbp + 3672]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3664], 3
                        mov              qword ptr [rbp + 3672], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3632], rax
.Lx44_0:
                        mov              rax, qword ptr [rbp + 3632]
                        mov              rcx, qword ptr [rbp + 3672]
                        cmp              rax, rcx
                                                                                        jle   .Lx44_240
                        add              rsp, 240
                                                                                        jmp   n27_lit_string_α
.Lx44_240:
                        mov              qword ptr [rbp + 3616], 3
                        mov              qword ptr [rbp + 3624], rax
                                                                                        jmp   n26_call_builtin_icon_α
n25_to_β:
                        inc              qword ptr [rbp + 3632]
                                                                                        jmp   .Lx44_0
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
.Lrkfn46:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn46]                          # fn
                        lea              rsi, [rbp + 3552]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              eax, 104
                                                                                        je    n25_to_β
                                                                                        jmp   n25_to_β
n26_call_builtin_icon_β:
                                                                                        jmp   n25_to_β
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 3440], 2                      # result
                        mov              dword ptr [rbp + 3444], 3
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n28_lit_integer_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "d. "
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 3488], 3                      # result
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n29_lit_integer_α
.Lx48_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        mov              qword ptr [rbp + 3504], 3                      # result
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n30_lit_integer_α
.Lx49_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 3520], 3                      # result
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n31_to_by_α
.Lx50_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n31_to_by_α:
                        mov              rdi, qword ptr [rbp + 3488]                    # v
                        mov              rsi, qword ptr [rbp + 3496]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3488], 3
                        mov              qword ptr [rbp + 3496], rax
                        mov              rdi, qword ptr [rbp + 3504]                    # v
                        mov              rsi, qword ptr [rbp + 3512]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3504], 3
                        mov              qword ptr [rbp + 3512], rax
                        mov              rdi, qword ptr [rbp + 3520]                    # v
                        mov              rsi, qword ptr [rbp + 3528]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3520], 3
                        mov              qword ptr [rbp + 3528], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3472], rax
.Lx52_0:
                        mov              rax, qword ptr [rbp + 3472]
                        mov              rcx, qword ptr [rbp + 3512]
                        mov              rdx, qword ptr [rbp + 3528]
                        cmp              rdx, 0
                                                                                        jl    .Lx52_1
                        cmp              rax, rcx
                                                                                        jg    main_ω
                                                                                        jmp   .Lx52_2
.Lx52_1:
                        cmp              rax, rcx
                                                                                        jl    main_ω
.Lx52_2:
                        mov              qword ptr [rbp + 3456], 3
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n32_call_builtin_icon_α
n31_to_by_β:
                        mov              rdx, qword ptr [rbp + 3528]
                        mov              rax, qword ptr [rbp + 3472]
                        add              rax, rdx
                        mov              qword ptr [rbp + 3472], rax
                                                                                        jmp   .Lx52_0
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
.Lrkfn54:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn54]                          # fn
                        lea              rsi, [rbp + 3392]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              eax, 104
                                                                                        je    n31_to_by_β
                                                                                        jmp   n31_to_by_β
n32_call_builtin_icon_β:
                                                                                        jmp   n31_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
