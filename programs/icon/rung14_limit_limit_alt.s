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
                        mov              qword ptr [rbp + 64], 0
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rbp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1_disjunction_α
.Lx10_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              qword ptr [rbp + 104], 0
                        mov              dword ptr [rbp + 112], 0
                                                                                        jmp   n8_lit_integer_α
n1_disjunction_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        jne   .Lx12_0
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n2_limit_α
.Lx12_0:
                        cmp              eax, 1
                                                                                        jne   .Lx12_1
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n2_limit_α
.Lx12_1:
                        cmp              eax, 2
                                                                                        jne   .Lx12_2
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n2_limit_α
.Lx12_2:
                        cmp              eax, 3
                                                                                        jne   .Lx12_3
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n2_limit_α
.Lx12_3:
                        cmp              eax, 4
                                                                                        jne   .Lx12_4
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n2_limit_α
.Lx12_4:
                                                                                        jmp   n2_limit_α
n1_disjunction_β:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        je    n1_disjunction_af
                        cmp              eax, 1
                                                                                        je    n1_disjunction_af
                        cmp              eax, 2
                                                                                        je    n1_disjunction_af
                        cmp              eax, 3
                                                                                        je    n1_disjunction_af
                                                                                        jmp   n1_disjunction_af
n1_disjunction_af:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 1
                                                                                        je    n7_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n6_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n5_lit_integer_α
                        cmp              eax, 4
                                                                                        je    n4_lit_integer_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_limit_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jl    .Lx14_240
                        add              rsp, 160
                                                                                        jmp   main_ω
.Lx14_240:
                        inc              qword ptr [rbp + 64]
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n3_call_builtin_icon_α
n2_limit_β:
                                                                                        jmp   n1_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn16:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn16]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    n1_disjunction_β
                                                                                        jmp   n1_disjunction_β
n3_call_builtin_icon_β:
                                                                                        jmp   n1_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1_disjunction_as
n4_lit_integer_β:
                                                                                        jmp   n1_disjunction_af
.Lx17_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 176], 3                       # result
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1_disjunction_as
n5_lit_integer_β:
                                                                                        jmp   n1_disjunction_af
.Lx18_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 160], 3                       # result
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n1_disjunction_as
n6_lit_integer_β:
                                                                                        jmp   n1_disjunction_af
.Lx19_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1_disjunction_as
n7_lit_integer_β:
                                                                                        jmp   n1_disjunction_af
.Lx20_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1_disjunction_as
n8_lit_integer_β:
                                                                                        jmp   n1_disjunction_af
.Lx21_0:
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
