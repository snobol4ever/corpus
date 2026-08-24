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
                        sub              rsp, 528
                        mov              rdi, rsp
                        add              rdi, 448
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rsp + 48], 3              # result
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n1_lit_integer_α
.Lx22_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n2_to_α
.Lx23_0:                .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n2_to_α:                mov              r11, 3
                        mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 32], rax
.Lx25_0:                mov              rax, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              rax, rcx;                            jg    main_ω
                        mov              qword ptr [rsp + 16], 3
                        mov              qword ptr [rsp + 24], rax;           jmp   n3_assign_α
n2_to_β:                mov              r11, 3
                        inc              qword ptr [rsp + 32];                jmp   .Lx25_0
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n4_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n4_bound_α:             mov              r11, 5
                        mov              qword ptr [rsp + 80], rsp;           jmp   n5_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n5_disjunction_α:       mov              r11, 6
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              dword ptr [rsp + 224], 0;            jmp   n9_var_α
n5_disjunction_as:      mov              r11, 6
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 0;                              jne   .Lx30_0
                                                                              jmp   n6_var_α
.Lx30_0:                                                                      jmp   n6_var_α
n5_disjunction_β:       mov              r11, 6
                        mov              eax, dword ptr [rsp + 224];          jmp   n6_var_α
n5_disjunction_af:      mov              r11, 6
                        add              dword ptr [rsp + 224], 1
                        mov              eax, dword ptr [rsp + 224];          jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              r11, 7
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 200], rax;          jmp   n7_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α: mov              r11, 8
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn34:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn34]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n21_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_conjunction_α
n7_call_builtin_icon_β: mov              r11, 8;                              jmp   n21_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n8_conjunction_α:       mov              r11, 9
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 136], rax;          jmp   n21_unmark_α
n8_conjunction_β:       mov              r11, 9;                              jmp   n21_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              r11, 10
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 312], rax;          jmp   n10_lit_integer_α
n9_var_β:               mov              r11, 10;                             jmp   n5_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rsp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n11_var_α
.Lx38_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              r11, 12
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax;          jmp   n12_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n13_coerce_numeric_α
.Lx41_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n13_coerce_numeric_α:   mov              r11, 14
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 5;                               je    .Lx43_1
                        cmp              al, 3;                               jne   .Lx43_0
                        mov              eax, dword ptr [rsp + 416]
                        cmp              al, 3;                               jne   .Lx43_0
.Lx43_1:                mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 392], rax;          jmp   n14_binop_α
.Lx43_0:                lea              rdi, [rsp + 448]
                        lea              rsi, [rsp + 416]
                        lea              rdx, [rsp + 384]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n14_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:            mov              r11, 15
                        mov              eax, dword ptr [rsp + 384]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx44_2
                        mov              rax, qword ptr [rsp + 392]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 368], 3
                        mov              qword ptr [rsp + 376], rax;          jmp   .Lx44_7
.Lx44_2:                and              edx, 1;                              jz    .Lx44_0
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx44_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx44_4
.Lx44_3:                movq             xmm0, rsi
.Lx44_4:                cmp              cl, 5;                               je    .Lx44_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx44_6
.Lx44_5:                movq             xmm1, rdi
.Lx44_6:                subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 368], 5
                        mov              qword ptr [rsp + 376], rax
.Lx44_7:                                                                      jmp   n15_to_α
.Lx44_0:                mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    n5_disjunction_af
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_to_α
#-----------------------------------------------------------------------------------------------------------------------
n15_to_α:               mov              r11, 16
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 352], 3
                        mov              qword ptr [rsp + 360], rax
                        mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 368], 3
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 336], rax
.Lx46_0:                mov              rax, qword ptr [rsp + 336]
                        mov              rcx, qword ptr [rsp + 376]
                        cmp              rax, rcx;                            jg    n5_disjunction_af
                        mov              qword ptr [rsp + 320], 3
                        mov              qword ptr [rsp + 328], rax;          jmp   n16_coerce_numeric_α
n15_to_β:               mov              r11, 16
                        inc              qword ptr [rsp + 336];               jmp   .Lx46_0
#-----------------------------------------------------------------------------------------------------------------------
n16_coerce_numeric_α:   mov              r11, 17
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 5;                               je    .Lx48_1
                        cmp              al, 3;                               jne   .Lx48_0
                        mov              eax, dword ptr [rsp + 320]
                        cmp              al, 3;                               jne   .Lx48_0
.Lx48_1:                mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 296], rax;          jmp   n17_coerce_numeric_α
.Lx48_0:                lea              rdi, [rsp + 448]
                        lea              rsi, [rsp + 320]
                        lea              rdx, [rsp + 288]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n17_coerce_numeric_α:   mov              r11, 18
                        mov              eax, dword ptr [rsp + 320]
                        cmp              al, 5;                               je    .Lx50_1
                        cmp              al, 3;                               jne   .Lx50_0
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 3;                               jne   .Lx50_0
.Lx50_1:                mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax;          jmp   n18_binop_α
.Lx50_0:                lea              rdi, [rsp + 320]
                        lea              rsi, [rsp + 448]
                        lea              rdx, [rsp + 272]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:            mov              r11, 19
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod@PLT
                        cmp              al, 104;                             je    n5_disjunction_af
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              r11, 20
                        mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n20_binop_test_α
.Lx52_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_test_α:       mov              r11, 21
                        mov              eax, dword ptr [rsp + 256]
                        cmp              al, 112;                             je    .Lx53_0
                        mov              eax, dword ptr [rsp + 432]
                        cmp              al, 112;                             je    .Lx53_0
                        mov              eax, dword ptr [rsp + 256]
                        cmp              al, 3;                               jne   .Lx53_2
                        mov              eax, dword ptr [rsp + 432]
                        cmp              al, 3;                               jne   .Lx53_2
.Lx53_1:                mov              rax, qword ptr [rsp + 264]
                        mov              rcx, qword ptr [rsp + 440]
                        cmp              rax, rcx;                            jne   n15_to_β
                        mov              rcx, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 240], rcx
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 248], rcx;          jmp   n21_unmark_α
.Lx53_0:                mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              r8d, 9
                        lea              r9, [rsp + 240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx53_1
                        cmp              eax, 1;                              je    n15_to_β
                                                                              jmp   n21_unmark_α
.Lx53_2:                mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n15_to_β
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 248], rax;          jmp   n21_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n21_unmark_α:           mov              r11, 22
                        mov              rsp, qword ptr [rsp + 80];           jmp   n2_to_β
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
