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
                        sub              rsp, 240
                        mov              qword ptr [rsp + 216], rcx
                        mov              qword ptr [rsp + 224], rdx
                        mov              rdi, rsp
                        add              rdi, 160
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx9_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n1_assign_α
.Lx9_0:                 .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax;          jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n4_coerce_numeric_α
.Lx13_0:                .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:    mov              eax, dword ptr [rsp + 160]
                        cmp              al, 5;                               je    .Lx15_1
                        cmp              al, 3;                               jne   .Lx15_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              al, 3;                               jne   .Lx15_0
.Lx15_1:                mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax;          jmp   n5_binop_α
.Lx15_0:                lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 96]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_α:             mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             je    n7_var_α
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 56], rax;           jmp   n8_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α: mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn21:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn21]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n8_call_builtin_icon_β:                                                       jmp   main_ω
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
