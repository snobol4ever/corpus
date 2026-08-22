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
n0_lit_string_α:        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 5
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1_assign_α
.Lx12_0:                .quad            .Lx12_0_s
.Lx12_0_s:              .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 256]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n4_subscript_α
.Lx16_0:                .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n4_subscript_α:         mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              rcx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n7_var_ref_α
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n5_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_deref_α:             mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n7_var_ref_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n6_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α: mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn20:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn20]
                        lea              rsi, [rsp + 128]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n7_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_var_ref_α
n6_call_builtin_icon_β:                                                       jmp   n7_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 256]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n9_subscript_α
.Lx23_0:                .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n9_subscript_α:         mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n10_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_deref_α:            mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn27:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn27]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n11_call_builtin_icon_β:
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
