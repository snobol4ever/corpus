                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__noisy:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
noisy_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx4_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_call_builtin_icon_α
.Lx4_0:                 .quad            .Lx4_0_s
.Lx4_0_s:               .string          "[eval]"
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α: sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd6:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd6]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx5_240
                        add              rsp, 16;                             jmp   n2_lit_string_α
.Lx5_240:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx7_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_return_α
.Lx7_0:                 .quad            .Lx7_0_s
.Lx7_0_s:               .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n3_return_α:            mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48;                             jmp   noisy_γ
#-----------------------------------------------------------------------------------------------------------------------
noisy_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
noisy_β:
                                                                              jmp   noisy_ω
#-----------------------------------------------------------------------------------------------------------------------
noisy_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 120]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
noisy_ω:
                        mov              rcx, qword ptr [rsp + 128]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
noisy_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx9_2]
                        lea              rdx, [rip + .Lx9_3];                 jmp   FN__noisy
.Lx9_2:                 pop              r11
                        pop              r11;                                 jmp   r11
.Lx9_3:                 pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
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
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n10_disjunction_α:      mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n17_lit_integer_α
n10_disjunction_as:     mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx19_0
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n11_call_proc_staged_α
.Lx19_0:                cmp              eax, 1;                              jne   .Lx19_1
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax;           jmp   n11_call_proc_staged_α
.Lx19_1:                                                                      jmp   n11_call_proc_staged_α
n10_disjunction_β:      mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n10_disjunction_af
                                                                              jmp   n10_disjunction_af
n10_disjunction_af:     add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n16_lit_integer_α
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_call_proc_staged_α: call             noisy_dcα;                           jmp   .Lx21_2
.Lx21_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx21_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
.Lx21_29:               mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104;                            je    n10_disjunction_β
                                                                              jmp   n12_disjunction_α
n11_call_proc_staged_β:                                                       jmp   n10_disjunction_β
.Lx21_0:                .quad            .Lx21_0_s
.Lx21_0_s:              .string          "noisy"
#-----------------------------------------------------------------------------------------------------------------------
n12_disjunction_α:      mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              dword ptr [rsp + 192], 0;            jmp   n15_lit_integer_α
n12_disjunction_as:     mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 0;                              jne   .Lx23_0
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax;          jmp   n13_call_builtin_icon_α
.Lx23_0:                cmp              eax, 1;                              jne   .Lx23_1
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax;          jmp   n13_call_builtin_icon_α
.Lx23_1:                                                                      jmp   n13_call_builtin_icon_α
n12_disjunction_β:      mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 0;                              je    n12_disjunction_af
                                                                              jmp   n12_disjunction_af
n12_disjunction_af:     add              dword ptr [rsp + 192], 1
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 1;                              je    n14_lit_integer_α
                                                                              jmp   n10_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn25:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn25]
                        lea              rsi, [rsp + 16]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    n12_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_disjunction_β
n13_call_builtin_icon_β:
                                                                              jmp   n12_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n12_disjunction_as
n14_lit_integer_β:                                                            jmp   n12_disjunction_af
.Lx26_0:                .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n12_disjunction_as
n15_lit_integer_β:                                                            jmp   n12_disjunction_af
.Lx27_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n10_disjunction_as
n16_lit_integer_β:                                                            jmp   n10_disjunction_af
.Lx28_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n10_disjunction_as
n17_lit_integer_β:                                                            jmp   n10_disjunction_af
.Lx29_0:                .quad            1
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
.Lstartup_pname0:       .string          "noisy"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__noisy
                        .quad            noisy_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            96
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
