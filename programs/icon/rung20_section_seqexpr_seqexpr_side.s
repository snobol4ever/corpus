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
                        sub              rsp, 336
                        mov              qword ptr [rsp + 312], rcx
                        mov              qword ptr [rsp + 320], rdx
                        mov              rdi, rsp
                        add              rdi, 256
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1_assign_α
.Lx17_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 216], rax;          jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n4_coerce_numeric_α
.Lx21_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:    mov              eax, dword ptr [rsp + 272]
                        cmp              al, 5;                               je    .Lx23_1
                        cmp              al, 3;                               jne   .Lx23_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              al, 3;                               jne   .Lx23_0
.Lx23_1:                mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 200], rax;          jmp   n5_binop_α
.Lx23_0:                lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 192]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_α:             mov              eax, dword ptr [rsp + 192]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx24_2
                        mov              rax, qword ptr [rsp + 200]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 176], 3
                        mov              qword ptr [rsp + 184], rax;          jmp   .Lx24_7
.Lx24_2:                and              edx, 1;                              jz    .Lx24_0
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx24_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx24_4
.Lx24_3:                movq             xmm0, rsi
.Lx24_4:                cmp              cl, 5;                               je    .Lx24_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx24_6
.Lx24_5:                movq             xmm1, rdi
.Lx24_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 176], 5
                        mov              qword ptr [rsp + 184], rax
.Lx24_7:                                                                      jmp   n6_assign_α
.Lx24_0:                mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n7_var_α
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 152], rax;          jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n9_coerce_numeric_α
.Lx28_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_coerce_numeric_α:    mov              eax, dword ptr [rsp + 272]
                        cmp              al, 5;                               je    .Lx30_1
                        cmp              al, 3;                               jne   .Lx30_0
                        mov              eax, dword ptr [rsp + 160]
                        cmp              al, 3;                               jne   .Lx30_0
.Lx30_1:                mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 136], rax;          jmp   n10_binop_α
.Lx30_0:                lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 160]
                        lea              rdx, [rsp + 128]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n10_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:            mov              eax, dword ptr [rsp + 128]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx31_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax;          jmp   .Lx31_7
.Lx31_2:                and              edx, 1;                              jz    .Lx31_0
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx31_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx31_4
.Lx31_3:                movq             xmm0, rsi
.Lx31_4:                cmp              cl, 5;                               je    .Lx31_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx31_6
.Lx31_5:                movq             xmm1, rdi
.Lx31_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 112], 5
                        mov              qword ptr [rsp + 120], rax
.Lx31_7:                                                                      jmp   n11_assign_α
.Lx31_0:                mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n12_var_α
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:           mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 104], rax;          jmp   n13_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n13_conjunction_α:      mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 88], rax;           jmp   n14_assign_α
n13_conjunction_β:                                                            jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 56], rax;           jmp   n16_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn40:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn40]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n16_call_builtin_icon_β:
                                                                              jmp   main_ω
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
