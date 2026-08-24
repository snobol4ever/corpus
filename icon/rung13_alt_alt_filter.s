                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 304
                        mov              rdi, rsp
                        add              rdi, 240
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       sub              rsp, 16
                        mov              r11, 1
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n11_lit_integer_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Lx13_0
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_assign_α
.Lx13_0:                cmp              eax, 1;                              jne   .Lx13_1
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_assign_α
.Lx13_1:                cmp              eax, 2;                              jne   .Lx13_2
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_assign_α
.Lx13_2:                cmp              eax, 3;                              jne   .Lx13_3
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_assign_α
.Lx13_3:                cmp              eax, 4;                              jne   .Lx13_4
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_assign_α
.Lx13_4:                                                                      jmp   n1_assign_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              je    n0_disjunction_af
                        cmp              eax, 1;                              je    n0_disjunction_af
                        cmp              eax, 2;                              je    n0_disjunction_af
                        cmp              eax, 3;                              je    n0_disjunction_af
                                                                              jmp   n0_disjunction_af
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 1;                              je    n10_lit_integer_α
                        cmp              eax, 2;                              je    n9_lit_integer_α
                        cmp              eax, 3;                              je    n8_lit_integer_α
                        cmp              eax, 4;                              je    n7_lit_integer_α
                        add              rsp, 16;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              r11, 2
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n3_binop_test_α
.Lx15_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_test_α:        mov              r11, 4
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 112;                             je    .Lx16_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              al, 112;                             je    .Lx16_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 3;                               jne   .Lx16_2
                        mov              eax, dword ptr [rsp + 224]
                        cmp              al, 3;                               jne   .Lx16_2
.Lx16_1:                mov              rax, qword ptr [rsp + 104]
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              rax, rcx;                            jle   n0_disjunction_β
                        mov              rcx, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 80], rcx
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 88], rcx;           jmp   n4_var_α
.Lx16_0:                mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              r8d, 7
                        lea              r9, [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx16_1
                        cmp              eax, 1;                              je    n0_disjunction_β
                                                                              jmp   n4_var_α
.Lx16_2:                mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n0_disjunction_β
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 88], rax;           jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              r11, 5
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 72], rax;           jmp   n5_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              r11, 6
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn20:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn20]
                        lea              rsi, [rsp + 32]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    n0_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_conjunction_α
n5_call_builtin_icon_β: mov              r11, 6;                              jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n6_conjunction_α:       mov              r11, 7
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   n0_disjunction_β
n6_conjunction_β:       mov              r11, 7;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n0_disjunction_as
n7_lit_integer_β:       mov              r11, 8;                              jmp   n0_disjunction_af
.Lx22_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              r11, 9
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n0_disjunction_as
n8_lit_integer_β:       mov              r11, 9;                              jmp   n0_disjunction_af
.Lx23_0:                .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              r11, 10
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n0_disjunction_as
n9_lit_integer_β:       mov              r11, 10;                             jmp   n0_disjunction_af
.Lx24_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n0_disjunction_as
n10_lit_integer_β:      mov              r11, 11;                             jmp   n0_disjunction_af
.Lx25_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n0_disjunction_as
n11_lit_integer_β:      mov              r11, 12;                             jmp   n0_disjunction_af
.Lx26_0:                .quad            1
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
                        .section         .note.GNU-stack,"",@progbits
