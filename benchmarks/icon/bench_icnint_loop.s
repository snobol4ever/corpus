                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 400
                        mov              rdi, rsp
                        add              rdi, 288
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n0_lit_integer_bx, @function
n0_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_16_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n1_assign_α
.Llit_integer_α_16_0:   .quad            0
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_assign_bx, @function
n1_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              r11, 2
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n2_lit_integer_α
                        .size            n1_assign_bx, .-n1_assign_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_18_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n3_lit_integer_α
.Llit_integer_α_18_0:   .quad            1
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_19_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n4_to_α
.Llit_integer_α_19_0:   .quad            2000000
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_to_bx, @function
n4_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_to_α:                mov              r11, 5
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax
                        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 96], rax
.Lto_α_21_0:            mov              rax, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 136]
                        cmp              rax, rcx;                            jg    n14_var_α
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   n5_assign_α
n4_to_β:                mov              r11, 5
                        inc              qword ptr [rsp + 96];                jmp   .Lto_α_21_0
                        .size            n4_to_bx, .-n4_to_bx
                        .type            n5_assign_bx, @function
n5_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              r11, 6
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n6_bound_α
                        .size            n5_assign_bx, .-n5_assign_bx
                        .type            n6_bound_bx, @function
n6_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_bound_α:             mov              r11, 7
                        mov              qword ptr [rsp + 144], rsp;          jmp   n7_var_α
                        .size            n6_bound_bx, .-n6_bound_bx
                        .type            n7_var_bx, @function
n7_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              r11, 8
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax;          jmp   n8_var_α
                        .size            n7_var_bx, .-n7_var_bx
                        .type            n8_var_bx, @function
n8_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              r11, 9
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax;          jmp   n9_coerce_numeric_α
                        .size            n8_var_bx, .-n8_var_bx
                        .type            n9_coerce_numeric_bx, @function
n9_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_coerce_numeric_α:    mov              r11, 10
                        mov              eax, dword ptr [rsp + 288]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_30_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_30_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_30_0
.Lcoerce_numeric_α_30_1:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 232], rax;          jmp   n10_coerce_numeric_α
.Lcoerce_numeric_α_30_0:
                        lea              rdi, [rsp + 288]
                        lea              rsi, [rsp + 304]
                        lea              rdx, [rsp + 224]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rsp + 224]
                        cmp              al, 104;                             je    n13_unmark_α
                                                                              jmp   n10_coerce_numeric_α
                        .size            n9_coerce_numeric_bx, .-n9_coerce_numeric_bx
                        .type            n10_coerce_numeric_bx, @function
n10_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_coerce_numeric_α:   mov              r11, 11
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_32_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_32_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_32_0
.Lcoerce_numeric_α_32_1:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 216], rax;          jmp   n11_binop_α
.Lcoerce_numeric_α_32_0:
                        lea              rdi, [rsp + 304]
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 208]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rsp + 208]
                        cmp              al, 104;                             je    n13_unmark_α
                                                                              jmp   n11_binop_α
                        .size            n10_coerce_numeric_bx, .-n10_coerce_numeric_bx
                        .type            n11_binop_bx, @function
n11_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:            mov              r11, 12
                        mov              eax, dword ptr [rsp + 224]
                        mov              ecx, dword ptr [rsp + 208]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_33_2
                        mov              rax, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 216]
                        add              rax, rdx
                        mov              qword ptr [rsp + 192], 3
                        mov              qword ptr [rsp + 200], rax;          jmp   .Lbinop_α_33_7
.Lbinop_α_33_2:         and              edx, 1;                              jz    .Lbinop_α_33_0
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdi, qword ptr [rsp + 216]
                        cmp              al, 5;                               je    .Lbinop_α_33_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_33_4
.Lbinop_α_33_3:         movq             xmm0, rsi
.Lbinop_α_33_4:         cmp              cl, 5;                               je    .Lbinop_α_33_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_33_6
.Lbinop_α_33_5:         movq             xmm1, rdi
.Lbinop_α_33_6:         addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 192], 5
                        mov              qword ptr [rsp + 200], rax
.Lbinop_α_33_7:                                                               jmp   n12_assign_α
.Lbinop_α_33_0:         mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n13_unmark_α
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n12_assign_α
                        .size            n11_binop_bx, .-n11_binop_bx
                        .type            n12_assign_bx, @function
n12_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              r11, 13
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n13_unmark_α
                        .size            n12_assign_bx, .-n12_assign_bx
                        .type            n13_unmark_bx, @function
n13_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_unmark_α:           mov              r11, 14
                        mov              rsp, qword ptr [rsp + 144];          jmp   n4_to_β
                        .size            n13_unmark_bx, .-n13_unmark_bx
                        .type            n14_var_bx, @function
n14_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              mov              r11, 15
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 56], rax;           jmp   n15_call_icon_α
                        .size            n14_var_bx, .-n14_var_bx
                        .type            n15_call_icon_bx, @function
n15_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_call_icon_α:        mov              r11, 16
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn40:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn40]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n15_call_icon_β:        mov              r11, 16;                             jmp   main_ω
                        .size            n15_call_icon_bx, .-n15_call_icon_bx
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
                        xor              edi, edi
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
