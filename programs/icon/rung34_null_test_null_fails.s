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
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rcx
                        mov              qword ptr [rsp + 256], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n3_lit_integer_α
n0_disjunction_as:      mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Lx10_0
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   main_γ
.Lx10_0:                cmp              eax, 1;                              jne   .Lx10_1
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 8], rax;            jmp   main_γ
.Lx10_1:                                                                      jmp   main_γ
n0_disjunction_β:       mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              je    main_ω
                                                                              jmp   main_ω
n0_disjunction_af:      add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n1_lit_string_α
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 2
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n2_call_builtin_icon_α
n1_lit_string_β:                                                              jmp   main_ω
.Lx11_0:                .quad            .Lx11_0_s
.Lx11_0_s:              .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α: mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn13:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn13]
                        lea              rsi, [rsp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n0_disjunction_as
n2_call_builtin_icon_β:                                                       jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n4_lit_integer_α
n3_lit_integer_β:                                                             jmp   n0_disjunction_af
.Lx14_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n5_binop_test_α
.Lx15_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_test_α:        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 112;                            je    .Lx16_0
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 112;                            je    .Lx16_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 3;                              jne   .Lx16_2
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 3;                              jne   .Lx16_2
.Lx16_1:                mov              rax, qword ptr [rsp + 136]
                        mov              rcx, qword ptr [rsp + 152]
                        cmp              rax, rcx;                            jge   n0_disjunction_af
                        mov              rcx, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rcx
                        mov              rcx, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rcx;          jmp   n6_unop_test_α
.Lx16_0:                mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              r8d, 5
                        lea              r9, [rsp + 112]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx16_1
                        cmp              eax, 1;                              je    n0_disjunction_af
                                                                              jmp   n6_unop_test_α
.Lx16_2:                mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n0_disjunction_af
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax;          jmp   n6_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n6_unop_test_α:         mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 104;                            je    n0_disjunction_af
                        cmp              eax, 0;                              jne   n0_disjunction_af
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0;            jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              qword ptr [rsp + 80], 2              # result
                        mov              dword ptr [rsp + 84], 3
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n8_call_builtin_icon_α
.Lx18_0:                .quad            .Lx18_0_s
.Lx18_0_s:              .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α: mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn20:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn20]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n0_disjunction_as
n8_call_builtin_icon_β:                                                       jmp   main_ω
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
