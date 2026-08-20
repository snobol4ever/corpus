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
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rcx
                        mov              qword ptr [rsp + 352], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1_lit_integer_α
.Lx14_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n2_lit_integer_α
.Lx15_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n3_to_α
.Lx16_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n3_to_α:                mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 224], 3
                        mov              qword ptr [rsp + 232], rax
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], 3
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 208], rax
.Lx18_0:                mov              rax, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 248]
                        cmp              rax, rcx;                            jg    n12_lit_string_α
                        mov              qword ptr [rsp + 192], 3
                        mov              qword ptr [rsp + 200], rax;          jmp   n4_lit_integer_α
n3_to_β:                inc              qword ptr [rsp + 208];               jmp   .Lx18_0
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n5_lit_integer_α
.Lx19_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n6_to_α
.Lx20_0:                .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n6_to_α:                mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], 3
                        mov              qword ptr [rsp + 296], rax
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], 3
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 272], rax
.Lx22_0:                mov              rax, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 312]
                        cmp              rax, rcx;                            jg    n3_to_β
                        mov              qword ptr [rsp + 256], 3
                        mov              qword ptr [rsp + 264], rax;          jmp   n7_coerce_numeric_α
n6_to_β:                inc              qword ptr [rsp + 272];               jmp   .Lx22_0
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:    mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 5;                              je    .Lx24_1
                        cmp              eax, 3;                              jne   .Lx24_0
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 3;                              jne   .Lx24_0
.Lx24_1:                mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 184], rax;          jmp   n8_coerce_numeric_α
.Lx24_0:                lea              rdi, [rsp + 192]
                        lea              rsi, [rsp + 256]
                        lea              rdx, [rsp + 176]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n8_coerce_numeric_α:    mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 5;                              je    .Lx26_1
                        cmp              eax, 3;                              jne   .Lx26_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 3;                              jne   .Lx26_0
.Lx26_1:                mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 168], rax;          jmp   n9_binop_α
.Lx26_0:                lea              rdi, [rsp + 256]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:             mov              eax, dword ptr [rsp + 176]
                        mov              ecx, dword ptr [rsp + 160]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx27_2
                        mov              rax, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 168]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax;          jmp   .Lx27_7
.Lx27_2:                and              edx, 1;                              jz    .Lx27_0
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdi, qword ptr [rsp + 168]
                        cmp              eax, 5;                              je    .Lx27_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx27_4
.Lx27_3:                movq             xmm0, rsi
.Lx27_4:                cmp              ecx, 5;                              je    .Lx27_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx27_6
.Lx27_5:                movq             xmm1, rdi
.Lx27_6:                mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 144], 5
                        mov              qword ptr [rsp + 152], rax
.Lx27_7:                                                                      jmp   n10_binop_test_α
.Lx27_0:                mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n12_lit_string_α
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_test_α:       mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 112;                            je    .Lx28_0
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 112;                            je    .Lx28_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 3;                              jne   .Lx28_2
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 3;                              jne   .Lx28_2
.Lx28_1:                mov              rax, qword ptr [rsp + 136]
                        mov              rcx, qword ptr [rsp + 152]
                        cmp              rax, rcx;                            jle   n6_to_β
                        mov              rcx, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rcx
                        mov              rcx, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rcx;          jmp   n11_call_builtin_icon_α
.Lx28_0:                mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              r8d, 7
                        lea              r9, [rsp + 112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx28_1
                        cmp              eax, 1;                              je    n6_to_β
                                                                              jmp   n11_call_builtin_icon_α
.Lx28_2:                mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n6_to_β
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax;          jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn30:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn30]
                        lea              rsi, [rsp + 80]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    n6_to_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_to_β
n11_call_builtin_icon_β:
                                                                              jmp   n6_to_β
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 4
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n13_call_builtin_icon_α
.Lx31_0:                .quad            .Lx31_0_s
.Lx31_0_s:              .string          "done"
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
