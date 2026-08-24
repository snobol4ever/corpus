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
                        sub              rsp, 400
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              dword ptr [rsp + 224], 0;            jmp   n1_lit_string_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 0;                              jne   .Lx15_0
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax;          jmp   n6_disjunction_α
.Lx15_0:                                                                      jmp   n6_disjunction_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 224];          jmp   n6_disjunction_α
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 224], 1
                        mov              eax, dword ptr [rsp + 224];          jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 3
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n2_lit_string_α
n1_lit_string_β:        mov              r11, 2;                              jmp   n0_disjunction_af
.Lx16_0:                .quad            .Lx16_0_s
.Lx16_0_s:              .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 3
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n3_binop_test_α
.Lx17_0:                .quad            .Lx17_0_s
.Lx17_0_s:              .string          "bcd"
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_test_α:        mov              r11, 4
                        mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              rdx, qword ptr [rsp + 336]
                        mov              rcx, qword ptr [rsp + 344]
                        mov              r8d, 12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n0_disjunction_af
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 4
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n5_call_builtin_icon_α
.Lx19_0:                .quad            .Lx19_0_s
.Lx19_0_s:              .string          "less"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              r11, 6
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn21:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn21]
                        lea              rsi, [rsp + 256]
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
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n6_disjunction_α
                                                                              jmp   n0_disjunction_as
n5_call_builtin_icon_β: mov              r11, 6;                              jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:       mov              r11, 7
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              dword ptr [rsp + 80], 0;             jmp   n7_lit_string_α
n6_disjunction_as:      mov              r11, 7
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              jne   .Lx23_0
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax;           jmp   n12_lit_string_α
.Lx23_0:                                                                      jmp   n12_lit_string_α
n6_disjunction_β:       mov              r11, 7
                        mov              eax, dword ptr [rsp + 80];           jmp   n12_lit_string_α
n6_disjunction_af:      mov              r11, 7
                        add              dword ptr [rsp + 80], 1
                        mov              eax, dword ptr [rsp + 80];           jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 3
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n8_lit_string_α
n7_lit_string_β:        mov              r11, 8;                              jmp   n6_disjunction_af
.Lx24_0:                .quad            .Lx24_0_s
.Lx24_0_s:              .string          "bcd"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 3
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n9_binop_test_α
.Lx25_0:                .quad            .Lx25_0_s
.Lx25_0_s:              .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_test_α:        mov              r11, 10
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              r8d, 12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n6_disjunction_af
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 4
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n11_call_builtin_icon_α
.Lx27_0:                .quad            .Lx27_0_s
.Lx27_0_s:              .string          "nope"
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              r11, 12
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn29:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn29]
                        lea              rsi, [rsp + 112]
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
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n12_lit_string_α
                                                                              jmp   n6_disjunction_as
n11_call_builtin_icon_β:
                        mov              r11, 12;                             jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              r11, 13
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 4
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n13_call_builtin_icon_α
.Lx30_0:                .quad            .Lx30_0_s
.Lx30_0_s:              .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              r11, 14
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
n13_call_builtin_icon_β:
                        mov              r11, 14;                             jmp   main_ω
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
