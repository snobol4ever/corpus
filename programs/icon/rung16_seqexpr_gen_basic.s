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
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1_assign_α
.Lx14_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax;          jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n4_coerce_numeric_α
.Lx18_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:    mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 5;                              je    .Lx20_1
                        cmp              eax, 3;                              jne   .Lx20_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 3;                              jne   .Lx20_0
.Lx20_1:                mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 200], rax;          jmp   n5_binop_α
.Lx20_0:                lea              rdi, [rsp + 256]
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 192]
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
n5_binop_α:             mov              eax, dword ptr [rsp + 192]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx21_2
                        mov              rax, qword ptr [rsp + 200]
                        mov              rdx, 10
                        add              rax, rdx
                        mov              qword ptr [rsp + 176], 3
                        mov              qword ptr [rsp + 184], rax;          jmp   .Lx21_7
.Lx21_2:                and              edx, 1;                              jz    .Lx21_0
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdi, 10
                        cmp              eax, 5;                              je    .Lx21_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx21_4
.Lx21_3:                movq             xmm0, rsi
.Lx21_4:                cmp              ecx, 5;                              je    .Lx21_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx21_6
.Lx21_5:                movq             xmm1, rdi
.Lx21_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 176], 5
                        mov              qword ptr [rsp + 184], rax
.Lx21_7:                                                                      jmp   n6_assign_α
.Lx21_0:                mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n7_disjunction_α
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n7_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n7_disjunction_α:       mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n11_lit_string_α
n7_disjunction_as:      mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx24_0
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n8_conjunction_α
.Lx24_0:                cmp              eax, 1;                              jne   .Lx24_1
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax;           jmp   n8_conjunction_α
.Lx24_1:                cmp              eax, 2;                              jne   .Lx24_2
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 88], rax;           jmp   n8_conjunction_α
.Lx24_2:                                                                      jmp   n8_conjunction_α
n7_disjunction_β:       mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n7_disjunction_af
                        cmp              eax, 1;                              je    n7_disjunction_af
                                                                              jmp   n7_disjunction_af
n7_disjunction_af:      add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n10_lit_string_α
                        cmp              eax, 2;                              je    n9_lit_string_α
                                                                              jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_conjunction_α:       mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 72], rax;           jmp   n7_disjunction_β
n8_conjunction_β:                                                             jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 1
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n7_disjunction_as
n9_lit_string_β:                                                              jmp   n7_disjunction_af
.Lx26_0:                .quad            .Lx26_0_s
.Lx26_0_s:              .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n7_disjunction_as
n10_lit_string_β:                                                             jmp   n7_disjunction_af
.Lx27_0:                .quad            .Lx27_0_s
.Lx27_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 1
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n7_disjunction_as
n11_lit_string_β:                                                             jmp   n7_disjunction_af
.Lx28_0:                .quad            .Lx28_0_s
.Lx28_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 56], rax;           jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn32:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn32]
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
