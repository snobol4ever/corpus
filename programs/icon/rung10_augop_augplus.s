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
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              rdi, rsp
                        add              rdi, 224
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n1_assign_α
.Lx14_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax;          jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n4_coerce_numeric_α
.Lx18_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:    mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 5;                              je    .Lx20_1
                        cmp              eax, 3;                              jne   .Lx20_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 3;                              jne   .Lx20_0
.Lx20_1:                mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 168], rax;          jmp   n5_binop_α
.Lx20_0:                lea              rdi, [rsp + 224]
                        lea              rsi, [rsp + 192]
                        lea              rdx, [rsp + 160]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n5_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_α:             mov              eax, dword ptr [rsp + 160]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx21_2
                        mov              rax, qword ptr [rsp + 168]
                        mov              rdx, 5
                        add              rax, rdx
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax;          jmp   .Lx21_7
.Lx21_2:                and              edx, 1;                              jz    .Lx21_0
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdi, 5
                        cmp              eax, 5;                              je    .Lx21_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx21_4
.Lx21_3:                movq             xmm0, rsi
.Lx21_4:                cmp              ecx, 5;                              je    .Lx21_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx21_6
.Lx21_5:                movq             xmm1, rdi
.Lx21_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 144], 5
                        mov              qword ptr [rsp + 152], rax
.Lx21_7:                                                                      jmp   n6_assign_α
.Lx21_0:                mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n7_var_α
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 120], rax;          jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n9_coerce_numeric_α
.Lx25_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n9_coerce_numeric_α:    mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 5;                              je    .Lx27_1
                        cmp              eax, 3;                              jne   .Lx27_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 3;                              jne   .Lx27_0
.Lx27_1:                mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 104], rax;          jmp   n10_binop_α
.Lx27_0:                lea              rdi, [rsp + 224]
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 96]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:            mov              eax, dword ptr [rsp + 96]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx28_2
                        mov              rax, qword ptr [rsp + 104]
                        mov              rdx, 3
                        add              rax, rdx
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   .Lx28_7
.Lx28_2:                and              edx, 1;                              jz    .Lx28_0
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdi, 3
                        cmp              eax, 5;                              je    .Lx28_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx28_4
.Lx28_3:                movq             xmm0, rsi
.Lx28_4:                cmp              ecx, 5;                              je    .Lx28_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx28_6
.Lx28_5:                movq             xmm1, rdi
.Lx28_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 80], 5
                        mov              qword ptr [rsp + 88], rax
.Lx28_7:                                                                      jmp   n11_assign_α
.Lx28_0:                mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n12_var_α
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n11_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:           mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 56], rax;           jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn33:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn33]
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
n13_call_builtin_icon_β:
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
