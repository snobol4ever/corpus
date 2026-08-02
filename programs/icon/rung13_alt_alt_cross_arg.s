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
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n7_lit_integer_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx9_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1_lit_string_α
.Lx9_0:
                        cmp              eax, 1
                                                                                        jne   .Lx9_1
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1_lit_string_α
.Lx9_1:
                                                                                        jmp   n1_lit_string_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n0_disjunction_af
n0_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n6_lit_integer_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 1
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n2_disjunction_α
.Lx10_0:
                        .quad            .Lx10_0_s
.Lx10_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:
                        mov              qword ptr [rbp + 160], 0
                        mov              qword ptr [rbp + 168], 0
                        mov              dword ptr [rbp + 176], 0
                                                                                        jmp   n5_lit_integer_α
n2_disjunction_as:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 0
                                                                                        jne   .Lx12_0
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n3_call_builtin_icon_α
.Lx12_0:
                        cmp              eax, 1
                                                                                        jne   .Lx12_1
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n3_call_builtin_icon_α
.Lx12_1:
                                                                                        jmp   n3_call_builtin_icon_α
n2_disjunction_β:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 0
                                                                                        je    n2_disjunction_af
                                                                                        jmp   n2_disjunction_af
n2_disjunction_af:
                        add              dword ptr [rbp + 176], 1
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 1
                                                                                        je    n4_lit_integer_α
                                                                                        jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn14:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn14]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    n2_disjunction_β
                                                                                        jmp   n2_disjunction_β
n3_call_builtin_icon_β:
                                                                                        jmp   n2_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n2_disjunction_as
n4_lit_integer_β:
                                                                                        jmp   n2_disjunction_af
.Lx15_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n2_disjunction_as
n5_lit_integer_β:
                                                                                        jmp   n2_disjunction_af
.Lx16_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n0_disjunction_as
n6_lit_integer_β:
                                                                                        jmp   n0_disjunction_af
.Lx17_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n0_disjunction_as
n7_lit_integer_β:
                                                                                        jmp   n0_disjunction_af
.Lx18_0:
                        .quad            1
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
