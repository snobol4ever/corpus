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
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              rdi, rsp
                        add              rdi, 256
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
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1_assign_α
.Lx11_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:       mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n3_var_α
n2_disjunction_as:      mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Lx14_0
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   main_γ
.Lx14_0:                                                                      jmp   main_γ
n2_disjunction_β:       mov              eax, dword ptr [rsp + 16];           jmp   main_ω
n2_disjunction_af:      add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16];           jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:               mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 200], rax;          jmp   n4_lit_integer_α
n3_var_β:                                                                     jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n5_binop_test_α
.Lx17_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_test_α:        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 112;                            je    .Lx18_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 112;                            je    .Lx18_0
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 3;                              jne   .Lx18_2
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 3;                              jne   .Lx18_2
.Lx18_1:                mov              rax, qword ptr [rsp + 264]
                        mov              rcx, qword ptr [rsp + 216]
                        cmp              rax, rcx;                            jle   n2_disjunction_af
                        mov              rcx, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rcx
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rcx;          jmp   n6_lit_string_α
.Lx18_0:                mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              r8d, 7
                        lea              r9, [rsp + 176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx18_1
                        cmp              eax, 1;                              je    n2_disjunction_af
                                                                              jmp   n6_lit_string_α
.Lx18_2:                mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n2_disjunction_af
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax;          jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 3
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n7_call_builtin_icon_α
.Lx19_0:                .quad            .Lx19_0_s
.Lx19_0_s:              .string          "big"
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α: mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn21:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn21]
                        lea              rsi, [rsp + 128]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104;                            je    n8_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_var_α
n7_call_builtin_icon_β:                                                       jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 104], rax;          jmp   n9_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α: mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn25:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn25]
                        lea              rsi, [rsp + 64]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_conjunction_α
n9_call_builtin_icon_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_conjunction_α:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax;           jmp   n2_disjunction_as
n10_conjunction_β:                                                            jmp   main_ω
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
