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
                        xor              r14d, r14d
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 448
                        mov              rdi, rsp
                        add              rdi, 304
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n0_lit_string_bx, @function
n0_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              r11, 1
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_15_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n1_assign_α
.Llit_string_α_15_0:    .quad            .Llit_string_α_15_0_s
.Llit_string_α_15_0_s:  .string          "ijklmnop"
                        .size            n0_lit_string_bx, .-n0_lit_string_bx
                        .type            n1_assign_bx, @function
n1_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              r11, 2
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n2_lit_integer_α
                        .size            n1_assign_bx, .-n1_assign_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_17_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n3_lit_integer_α
.Llit_integer_α_17_0:   .quad            1
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_18_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n4_to_α
.Llit_integer_α_18_0:   .quad            2000000
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_to_bx, @function
n4_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_to_α:                mov              r11, 5
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
.Lto_α_20_0:            mov              rax, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 152]
                        cmp              rax, rcx;                            jg    n12_var_α
                        mov              qword ptr [rsp + 96], 3
                        mov              qword ptr [rsp + 104], rax;          jmp   n5_assign_α
n4_to_β:                mov              r11, 5
                        inc              qword ptr [rsp + 112];               jmp   .Lto_α_20_0
                        .size            n4_to_bx, .-n4_to_bx
                        .type            n5_assign_bx, @function
n5_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              r11, 6
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n6_bound_α
                        .size            n5_assign_bx, .-n5_assign_bx
                        .type            n6_bound_bx, @function
n6_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_bound_α:             mov              r11, 7
                        mov              qword ptr [rsp + 160], rsp;          jmp   n7_lit_string_α
                        .size            n6_bound_bx, .-n6_bound_bx
                        .type            n7_lit_string_bx, @function
n7_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_24_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n8_var_α
.Llit_string_α_24_0:    .quad            .Llit_string_α_24_0_s
.Llit_string_α_24_0_s:  .string          "abcdefgh"
                        .size            n7_lit_string_bx, .-n7_lit_string_bx
                        .type            n8_var_bx, @function
n8_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              r11, 9
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 264], rax;          jmp   n9_binop_α
                        .size            n8_var_bx, .-n8_var_bx
                        .type            n9_binop_bx, @function
n9_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:             mov              r11, 10
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 336]
                        mov              rcx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_assign_α
                        .size            n9_binop_bx, .-n9_binop_bx
                        .type            n10_assign_bx, @function
n10_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n11_unmark_α
                        .size            n10_assign_bx, .-n10_assign_bx
                        .type            n11_unmark_bx, @function
n11_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_unmark_α:           mov              r11, 12
                        mov              rsp, qword ptr [rsp + 160];          jmp   n4_to_β
                        .size            n11_unmark_bx, .-n11_unmark_bx
                        .type            n12_var_bx, @function
n12_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              r11, 13
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 72], rax;           jmp   n13_unop_α
                        .size            n12_var_bx, .-n12_var_bx
                        .type            n13_unop_bx, @function
n13_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_unop_α:             mov              r11, 14
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n14_call_icon_α
                        .size            n13_unop_bx, .-n13_unop_bx
                        .type            n14_call_icon_bx, @function
n14_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_icon_α:        mov              r11, 15
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn35:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn35]
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
n14_call_icon_β:        mov              r11, 15;                             jmp   main_ω
                        .size            n14_call_icon_bx, .-n14_call_icon_bx
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
