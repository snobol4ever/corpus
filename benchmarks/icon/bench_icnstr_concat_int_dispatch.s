                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 432
                        mov              rdi, rsp
                        add              rdi, 320
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
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_16_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1_lit_integer_α
.Llit_integer_α_16_0:   .quad            1
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_17_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n2_to_α
.Llit_integer_α_17_0:   .quad            2000000
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_to_bx, @function
n2_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_to_α:                mov              r11, 3
                        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax
                        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 112], rax
.Lto_α_19_0:            mov              rax, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 152]
                        cmp              rax, rcx;                            jg    n13_var_α
                        mov              qword ptr [rsp + 96], 3
                        mov              qword ptr [rsp + 104], rax;          jmp   n3_assign_α
n2_to_β:                mov              r11, 3
                        inc              qword ptr [rsp + 112];               jmp   .Lto_α_19_0
                        .size            n2_to_bx, .-n2_to_bx
                        .type            n3_assign_bx, @function
n3_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n4_bound_α
                        .size            n3_assign_bx, .-n3_assign_bx
                        .type            n4_bound_bx, @function
n4_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_bound_α:             mov              r11, 5
                        mov              qword ptr [rsp + 160], rsp;          jmp   n5_lit_string_α
                        .size            n4_bound_bx, .-n4_bound_bx
                        .type            n5_lit_string_bx, @function
n5_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_23_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n6_var_α
.Llit_string_α_23_0:    .quad            .Llit_string_α_23_0_s
.Llit_string_α_23_0_s:  .string          "abcdefgh"
                        .size            n5_lit_string_bx, .-n5_lit_string_bx
                        .type            n6_var_bx, @function
n6_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              r11, 7
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax;          jmp   n7_lit_integer_α
                        .size            n6_var_bx, .-n6_var_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_26_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n8_coerce_numeric_α
.Llit_integer_α_26_0:   .quad            97
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_coerce_numeric_bx, @function
n8_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_coerce_numeric_α:    mov              r11, 9
                        mov              eax, dword ptr [rsp + 336]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_28_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_28_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_28_0
.Lcoerce_numeric_α_28_1:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 280], rax;          jmp   n9_binop_α
.Lcoerce_numeric_α_28_0:
                        lea              rdi, [rsp + 336]
                        lea              rsi, [rsp + 304]
                        lea              rdx, [rsp + 272]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_binop_α
                        .size            n8_coerce_numeric_bx, .-n8_coerce_numeric_bx
                        .type            n9_binop_bx, @function
n9_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:             mov              r11, 10
                        mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n12_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n10_binop_α
                        .size            n9_binop_bx, .-n9_binop_bx
                        .type            n10_binop_bx, @function
n10_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:            mov              r11, 11
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n11_assign_α
                        .size            n10_binop_bx, .-n10_binop_bx
                        .type            n11_assign_bx, @function
n11_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:           mov              r11, 12
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n12_unmark_α
                        .size            n11_assign_bx, .-n11_assign_bx
                        .type            n12_unmark_bx, @function
n12_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_unmark_α:           mov              r11, 13
                        mov              rsp, qword ptr [rsp + 160];          jmp   n2_to_β
                        .size            n12_unmark_bx, .-n12_unmark_bx
                        .type            n13_var_bx, @function
n13_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              r11, 14
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 72], rax;           jmp   n14_unop_α
                        .size            n13_var_bx, .-n13_var_bx
                        .type            n14_unop_bx, @function
n14_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_unop_α:             mov              r11, 15
                        mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n15_call_icon_α
                        .size            n14_unop_bx, .-n14_unop_bx
                        .type            n15_call_icon_bx, @function
n15_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_call_icon_α:        mov              r11, 16
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_icon_rkfn38:     .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn38]
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
