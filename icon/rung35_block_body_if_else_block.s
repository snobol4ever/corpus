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
                        sub              rsp, 384
                        mov              rdi, rsp
                        add              rdi, 320
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n1_assign_α
.Lx13_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              r11, 2
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:       sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n8_var_α
n2_disjunction_as:      mov              r11, 3
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Lx16_0
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   main_γ
.Lx16_0:                cmp              eax, 1;                              jne   .Lx16_1
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 8], rax;            jmp   main_γ
.Lx16_1:                                                                      jmp   main_γ
n2_disjunction_β:       mov              r11, 3
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              je    main_ω
                                                                              jmp   main_ω
n2_disjunction_af:      mov              r11, 3
                        add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n3_lit_string_α
                        add              rsp, 16;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 5
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n4_call_builtin_icon_α
n3_lit_string_β:        mov              r11, 4;                              jmp   n5_var_α
.Lx17_0:                .quad            .Lx17_0_s
.Lx17_0_s:              .string          "small"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α: mov              r11, 5
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn19:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn19]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n5_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n5_var_α
n4_call_builtin_icon_β: mov              r11, 5;                              jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              r11, 6
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 216], rax;          jmp   n6_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α: mov              r11, 7
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn23:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn23]
                        lea              rsi, [rsp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_conjunction_α
n6_call_builtin_icon_β: mov              r11, 7;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_conjunction_α:       mov              r11, 8
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax;          jmp   n2_disjunction_as
n7_conjunction_β:       mov              r11, 8;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              r11, 9
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 120], rax;          jmp   n9_lit_integer_α
n8_var_β:               mov              r11, 9;                              jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              r11, 10
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n10_binop_test_α
.Lx27_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_test_α:       mov              r11, 11
                        mov              eax, dword ptr [rsp + 320]
                        cmp              al, 112;                             je    .Lx28_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              al, 112;                             je    .Lx28_0
                        mov              eax, dword ptr [rsp + 320]
                        cmp              al, 3;                               jne   .Lx28_2
                        mov              eax, dword ptr [rsp + 128]
                        cmp              al, 3;                               jne   .Lx28_2
.Lx28_1:                mov              rax, qword ptr [rsp + 328]
                        mov              rcx, qword ptr [rsp + 136]
                        cmp              rax, rcx;                            jle   n2_disjunction_af
                        mov              rcx, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rcx
                        mov              rcx, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rcx;          jmp   n11_lit_string_α
.Lx28_0:                mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              r8d, 7
                        lea              r9, [rsp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx28_1
                        cmp              eax, 1;                              je    n2_disjunction_af
                                                                              jmp   n11_lit_string_α
.Lx28_2:                mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
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
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rsp + 80], 2              # result
                        mov              dword ptr [rsp + 84], 3
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n12_call_builtin_icon_α
.Lx29_0:                .quad            .Lx29_0_s
.Lx29_0_s:              .string          "big"
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              r11, 13
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn31:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn31]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n2_disjunction_as
n12_call_builtin_icon_β:
                        mov              r11, 13;                             jmp   main_ω
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
