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
n0_lit_real_α:          mov              r11, 1
                        mov              qword ptr [rsp + 240], 5             # result
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1_assign_α
.Lx12_0:                .quad            4612811918334230528
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              r11, 2
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n2_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_real_α:          mov              r11, 3
                        mov              qword ptr [rsp + 224], 5             # result
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n3_assign_α
.Lx14_0:                .quad            4613937818241073152
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n4_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:       sub              rsp, 16
                        mov              r11, 5
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n7_var_α
n4_disjunction_as:      mov              r11, 5
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Lx17_0
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   main_γ
.Lx17_0:                cmp              eax, 1;                              jne   .Lx17_1
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 8], rax;            jmp   main_γ
.Lx17_1:                                                                      jmp   main_γ
n4_disjunction_β:       mov              r11, 5
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              je    main_ω
                                                                              jmp   main_ω
n4_disjunction_af:      mov              r11, 5
                        add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n5_lit_string_α
                        add              rsp, 16;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 2
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n6_call_builtin_icon_α
n5_lit_string_β:        mov              r11, 6;                              jmp   main_ω
.Lx18_0:                .quad            .Lx18_0_s
.Lx18_0_s:              .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α: mov              r11, 7
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn20:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn20]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_disjunction_as
n6_call_builtin_icon_β: mov              r11, 7;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              r11, 8
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 120], rax;          jmp   n8_var_α
n7_var_β:               mov              r11, 8;                              jmp   n4_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              r11, 9
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 136], rax;          jmp   n9_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_test_α:        mov              r11, 10
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n4_disjunction_af
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rsp + 80], 2              # result
                        mov              dword ptr [rsp + 84], 3
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n11_call_builtin_icon_α
.Lx26_0:                .quad            .Lx26_0_s
.Lx26_0_s:              .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              r11, 12
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn28:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn28]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_disjunction_as
n11_call_builtin_icon_β:
                        mov              r11, 12;                             jmp   main_ω
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
