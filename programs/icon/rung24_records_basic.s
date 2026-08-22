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
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1_lit_integer_α
.Lx10_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n2_call_α
.Lx11_0:                .quad            4
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
.Lrkfn13:               .string          "point"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn13]
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
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 152], rax;          jmp   n5_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n5_field_get_α:         mov              rdi, qword ptr [rip + .Lx17_0]
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n7_var_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n6_call_builtin_icon_α
.Lx17_0:                .quad            .Lx17_0_s
.Lx17_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α: mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn19:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn19]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n7_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_var_α
n6_call_builtin_icon_β:                                                       jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 72], rax;           jmp   n8_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n8_field_get_α:         mov              rdi, qword ptr [rip + .Lx22_0]
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n9_call_builtin_icon_α
.Lx22_0:                .quad            .Lx22_0_s
.Lx22_0_s:              .string          "y"
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
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "point(x,y)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
