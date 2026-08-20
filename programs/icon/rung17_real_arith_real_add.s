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
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rcx
                        mov              qword ptr [rsp + 240], rdx
                        mov              rdi, rsp
                        add              rdi, 176
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_real_α:          mov              qword ptr [rsp + 160], 5             # result
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n1_assign_α
.Lx10_0:                .quad            4609434218613702656
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n2_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_real_α:          mov              qword ptr [rsp + 144], 5             # result
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n3_assign_α
.Lx12_0:                .quad            4612811918334230528
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 104], rax;          jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 120], rax;          jmp   n6_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n6_coerce_numeric_α:    mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 5;                              je    .Lx19_1
                        cmp              eax, 3;                              jne   .Lx19_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 3;                              jne   .Lx19_0
.Lx19_1:                mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 88], rax;           jmp   n7_coerce_numeric_α
.Lx19_0:                lea              rdi, [rsp + 176]
                        lea              rsi, [rsp + 192]
                        lea              rdx, [rsp + 80]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:    mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 5;                              je    .Lx21_1
                        cmp              eax, 3;                              jne   .Lx21_0
                        mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 3;                              jne   .Lx21_0
.Lx21_1:                mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 72], rax;           jmp   n8_binop_α
.Lx21_0:                lea              rdi, [rsp + 192]
                        lea              rsi, [rsp + 176]
                        lea              rdx, [rsp + 64]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:             mov              eax, dword ptr [rsp + 80]
                        mov              ecx, dword ptr [rsp + 64]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx22_2
                        mov              rax, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 72]
                        add              rax, rdx
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax;           jmp   .Lx22_7
.Lx22_2:                and              edx, 1;                              jz    .Lx22_0
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdi, qword ptr [rsp + 72]
                        cmp              eax, 5;                              je    .Lx22_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx22_4
.Lx22_3:                movq             xmm0, rsi
.Lx22_4:                cmp              ecx, 5;                              je    .Lx22_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx22_6
.Lx22_5:                movq             xmm1, rdi
.Lx22_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 48], 5
                        mov              qword ptr [rsp + 56], rax
.Lx22_7:                                                                      jmp   n9_call_builtin_icon_α
.Lx22_0:                mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    main_ω
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α: mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn24:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn24]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_γ
n9_call_builtin_icon_β:                                                       jmp   main_ω
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
