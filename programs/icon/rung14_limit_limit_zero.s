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
                        mov              qword ptr [rbp + 128], 0
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        sub              rsp, 112
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
                        mov              qword ptr [rbp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx9_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1_lit_integer_α
.Lx9_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n2_lit_integer_α
.Lx10_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n3_to_α
.Lx11_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n3_to_α:
                        mov              rdi, qword ptr [rbp + 192]                     # v
                        mov              rsi, qword ptr [rbp + 200]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 192], 3
                        mov              qword ptr [rbp + 200], rax
                        mov              rdi, qword ptr [rbp + 208]                     # v
                        mov              rsi, qword ptr [rbp + 216]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 208], 3
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 176], rax
.Lx13_0:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 216]
                        cmp              rax, rcx
                                                                                        jle   .Lx13_240
                        add              rsp, 112
                                                                                        jmp   n6_lit_string_α
.Lx13_240:
                        mov              qword ptr [rbp + 160], 3
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n4_limit_α
n3_to_β:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx13_0
#-----------------------------------------------------------------------------------------------------------------------
n4_limit_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 152]
                        cmp              rax, rcx
                                                                                        jl    .Lx15_240
                        add              rsp, 112
                                                                                        jmp   n6_lit_string_α
.Lx15_240:
                        inc              qword ptr [rbp + 128]
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n5_call_builtin_icon_α
n4_limit_β:
                                                                                        jmp   n3_to_β
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn17:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn17]                          # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n3_to_β
                                                                                        jmp   n3_to_β
n5_call_builtin_icon_β:
                                                                                        jmp   n3_to_β
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 48], 2                        # result
                        mov              dword ptr [rbp + 52], 4
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx18_0:
                        .quad            .Lx18_0_s
.Lx18_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn20:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn20]                          # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n7_call_builtin_icon_β:
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
