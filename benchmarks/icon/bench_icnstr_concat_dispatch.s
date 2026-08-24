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
                        sub              rsp, 336
                        mov              rdi, rsp
                        add              rdi, 224
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1_lit_integer_α
.Lx11_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n2_to_α
.Lx12_0:                .quad            2000000
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
.Lx14_0:                mov              rax, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 152]
                        cmp              rax, rcx;                            jg    n8_var_α
                        mov              qword ptr [rsp + 96], 3
                        mov              qword ptr [rsp + 104], rax;          jmp   n3_assign_α
n2_to_β:                mov              r11, 3
                        inc              qword ptr [rsp + 112];               jmp   .Lx14_0
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n4_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n4_bound_α:             mov              r11, 5
                        mov              qword ptr [rsp + 160], rsp;          jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 16
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n6_assign_α
.Lx18_0:                .quad            .Lx18_0_s
.Lx18_0_s:              .string          "abcdefghijklmnop"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n7_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n7_unmark_α:            mov              r11, 8
                        mov              rsp, qword ptr [rsp + 160];          jmp   n2_to_β
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              r11, 9
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 72], rax;           jmp   n9_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n9_unop_α:              mov              r11, 10
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn26:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn26]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_γ
n10_call_builtin_icon_β:
                        mov              r11, 11;                             jmp   main_ω
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
