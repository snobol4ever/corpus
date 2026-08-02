                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 64], 0
                        mov              qword ptr [rbp + 72], 0
                        mov              dword ptr [rbp + 80], 0
                                                                                        jmp   n3_lit_integer_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        jne   .Lx7_0
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n0_disjunction_β
.Lx7_0:
                        cmp              eax, 1
                                                                                        jne   .Lx7_1
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n0_disjunction_β
.Lx7_1:
                        cmp              eax, 2
                                                                                        jne   .Lx7_2
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n0_disjunction_β
.Lx7_2:
                                                                                        jmp   n0_disjunction_β
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        je    n0_disjunction_af
                        cmp              eax, 1
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n0_disjunction_af
n0_disjunction_af:
                        add              dword ptr [rbp + 80], 1
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 1
                                                                                        je    n2_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n1_lit_integer_α
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx8_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n0_disjunction_as
n1_lit_integer_β:
                                                                                        jmp   n0_disjunction_af
.Lx8_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx9_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n0_disjunction_as
n2_lit_integer_β:
                                                                                        jmp   n0_disjunction_af
.Lx9_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 96], 3                        # result
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n0_disjunction_as
n3_lit_integer_β:
                                                                                        jmp   n0_disjunction_af
.Lx10_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 48], 2                        # result
                        mov              dword ptr [rbp + 52], 4
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n5_call_builtin_icon_α
.Lx11_0:
                        .quad            .Lx11_0_s
.Lx11_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn13:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn13]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n5_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
