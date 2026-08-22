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
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              rdi, rsp
                        add              rdi, 144
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 5
                        mov              rax, qword ptr [rip + .Lx8_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1_assign_α
.Lx8_0:                 .quad            .Lx8_0_s
.Lx8_0_s:               .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax;          jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 6
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n4_binop_α
.Lx12_0:                .quad            .Lx12_0_s
.Lx12_0_s:              .string          " world"
#-----------------------------------------------------------------------------------------------------------------------
n4_binop_α:             mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 56], rax;           jmp   n7_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α: mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn18:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn18]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n7_call_builtin_icon_β:                                                       jmp   main_ω
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
