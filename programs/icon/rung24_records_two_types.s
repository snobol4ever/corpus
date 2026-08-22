                        .intel_syntax    noprefix
                        .text
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
                        sub              rsp, 336
                        mov              qword ptr [rsp + 312], rcx
                        mov              qword ptr [rsp + 320], rdx
                        mov              rdi, rsp
                        add              rdi, 272
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1_lit_integer_α
.Lx12_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n2_call_α
.Lx13_0:                .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn15:               .string          "coord"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn15]
                        lea              rsi, [rsp + 192]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n4_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n3_assign_α
n2_call_β:                                                                    jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 120], rax;          jmp   n5_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n5_field_get_α:         mov              rdi, qword ptr [rip + .Lx19_0]
                        mov              rsi, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n6_var_α
.Lx19_0:                .quad            .Lx19_0_s
.Lx19_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 152], rax;          jmp   n7_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n7_field_get_α:         mov              rdi, qword ptr [rip + .Lx22_0]
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n8_coerce_numeric_α
.Lx22_0:                .quad            .Lx22_0_s
.Lx22_0_s:              .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n8_coerce_numeric_α:    mov              eax, dword ptr [rsp + 96]
                        cmp              al, 5;                               je    .Lx24_1
                        cmp              al, 3;                               jne   .Lx24_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              al, 3;                               jne   .Lx24_0
.Lx24_1:                mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 88], rax;           jmp   n9_coerce_numeric_α
.Lx24_0:                lea              rdi, [rsp + 96]
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 80]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n9_coerce_numeric_α:    mov              eax, dword ptr [rsp + 128]
                        cmp              al, 5;                               je    .Lx26_1
                        cmp              al, 3;                               jne   .Lx26_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 3;                               jne   .Lx26_0
.Lx26_1:                mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 72], rax;           jmp   n10_binop_α
.Lx26_0:                lea              rdi, [rsp + 128]
                        lea              rsi, [rsp + 96]
                        lea              rdx, [rsp + 64]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n10_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:            mov              eax, dword ptr [rsp + 80]
                        mov              ecx, dword ptr [rsp + 64]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx27_2
                        mov              rax, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 72]
                        add              rax, rdx
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax;           jmp   .Lx27_7
.Lx27_2:                and              edx, 1;                              jz    .Lx27_0
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdi, qword ptr [rsp + 72]
                        cmp              al, 5;                               je    .Lx27_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx27_4
.Lx27_3:                movq             xmm0, rsi
.Lx27_4:                cmp              cl, 5;                               je    .Lx27_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx27_6
.Lx27_5:                movq             xmm1, rdi
.Lx27_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 48], 5
                        mov              qword ptr [rsp + 56], rax
.Lx27_7:                                                                      jmp   n11_call_builtin_icon_α
.Lx27_0:                mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn29:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn29]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n11_call_builtin_icon_β:
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "person(name,age)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec1:           .string          "coord(x,y)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec1]
                        call             record_register@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
