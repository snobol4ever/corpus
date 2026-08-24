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
                        sub              rsp, 192
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              dword ptr [rsp + 80], 0;             jmp   n3_lit_integer_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              jne   .Lx7_0
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax;           jmp   n0_disjunction_β
.Lx7_0:                 cmp              eax, 1;                              jne   .Lx7_1
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax;           jmp   n0_disjunction_β
.Lx7_1:                 cmp              eax, 2;                              jne   .Lx7_2
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 72], rax;           jmp   n0_disjunction_β
.Lx7_2:                                                                       jmp   n0_disjunction_β
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              je    n0_disjunction_af
                        cmp              eax, 1;                              je    n0_disjunction_af
                                                                              jmp   n0_disjunction_af
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 80], 1
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 1;                              je    n2_lit_integer_α
                        cmp              eax, 2;                              je    n1_lit_integer_α
                                                                              jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx8_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n0_disjunction_as
n1_lit_integer_β:       mov              r11, 2;                              jmp   n0_disjunction_af
.Lx8_0:                 .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx9_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n0_disjunction_as
n2_lit_integer_β:       mov              r11, 3;                              jmp   n0_disjunction_af
.Lx9_0:                 .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n0_disjunction_as
n3_lit_integer_β:       mov              r11, 4;                              jmp   n0_disjunction_af
.Lx10_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 4
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n5_call_builtin_icon_α
.Lx11_0:                .quad            .Lx11_0_s
.Lx11_0_s:              .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              r11, 6
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn13:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn13]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n5_call_builtin_icon_β: mov              r11, 6;                              jmp   main_ω
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
