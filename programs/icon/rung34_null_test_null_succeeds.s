                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 168
                        mov              rdi, rsp
                        mov              ecx, 168
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        mov              qword ptr [rsp + 112], 6
                        mov              rax, qword ptr [rip + .Lx7_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n1_lit_integer_α
.Lx7_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rsp + 128], 6
                        mov              rax, qword ptr [rip + .Lx8_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n2_binop_test_α
.Lx8_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n2_binop_test_α:
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 100
                                                                                        je    .Lx9_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 100
                                                                                        je    .Lx9_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 6
                                                                                        jne   .Lx9_2
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 6
                                                                                        jne   .Lx9_2
.Lx9_1:
                        mov              rax, qword ptr [rsp + 120]
                        mov              rcx, qword ptr [rsp + 136]
                        cmp              rax, rcx
                                                                                        jle   n4_lit_string_α
                        mov              rcx, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rcx
                        mov              rcx, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rcx
                                                                                        jmp   n3_unop_test_α
.Lx9_0:
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              r8d, 7
                        lea              r9, [rsp + 96]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx9_1
                        cmp              eax, 1
                                                                                        je    n4_lit_string_α
                                                                                        jmp   n3_unop_test_α
.Lx9_2:
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n4_lit_string_α
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n3_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n3_unop_test_α:
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 99
                                                                                        je    n4_lit_string_α
                        cmp              eax, 0
                                                                                        jne   n4_lit_string_α
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                                                                                        jmp   n5_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n6_call_builtin_icon_α
.Lx11_0:
                        .quad            .Lx11_0_s
.Lx11_0_s:
                        .string          "ok"
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn14:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn14]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n6_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 168
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 168
                        ret
                        .section         .note.GNU-stack,"",@progbits
