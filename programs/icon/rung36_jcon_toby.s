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
n0_lit_string_α:
                        sub              rsp, 80
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
                        mov              qword ptr [rbp + 1664], 2                      # result
                        mov              dword ptr [rbp + 1668], 3
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n1_lit_integer_α
.Lx11_0:
                        .quad            .Lx11_0_s
.Lx11_0_s:
                        .string          "a. "
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 1712], 3                      # result
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n2_lit_integer_α
.Lx12_0:
                        .quad            9223372036854775805
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 1728], 3                      # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n3_to_α
.Lx13_0:
                        .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n3_to_α:
                        mov              rdi, qword ptr [rbp + 1712]                    # v
                        mov              rsi, qword ptr [rbp + 1720]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1712], 3
                        mov              qword ptr [rbp + 1720], rax
                        mov              rdi, qword ptr [rbp + 1728]                    # v
                        mov              rsi, qword ptr [rbp + 1736]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1728], 3
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1696], rax
.Lx15_0:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rcx, qword ptr [rbp + 1736]
                        cmp              rax, rcx
                                                                                        jle   .Lx15_240
                        add              rsp, 80
                                                                                        jmp   n5_lit_string_α
.Lx15_240:
                        mov              qword ptr [rbp + 1680], 3
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n4_call_builtin_icon_α
n3_to_β:
                        inc              qword ptr [rbp + 1696]
                                                                                        jmp   .Lx15_0
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lrkfn17:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn17]                          # fn
                        lea              rsi, [rbp + 1616]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 104
                                                                                        je    n3_to_β
                                                                                        jmp   n3_to_β
n4_call_builtin_icon_β:
                                                                                        jmp   n3_to_β
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 1504], 2                      # result
                        mov              dword ptr [rbp + 1508], 3
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n6_lit_integer_α
.Lx18_0:
                        .quad            .Lx18_0_s
.Lx18_0_s:
                        .string          "b. "
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 1552], 3                      # result
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n7_lit_integer_α
.Lx19_0:
                        .quad            9223372036854775792
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 1568], 3                      # result
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n8_lit_integer_α
.Lx20_0:
                        .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 1584], 3                      # result
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n9_to_by_α
.Lx21_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n9_to_by_α:
                        mov              rdi, qword ptr [rbp + 1552]                    # v
                        mov              rsi, qword ptr [rbp + 1560]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1552], 3
                        mov              qword ptr [rbp + 1560], rax
                        mov              rdi, qword ptr [rbp + 1568]                    # v
                        mov              rsi, qword ptr [rbp + 1576]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1568], 3
                        mov              qword ptr [rbp + 1576], rax
                        mov              rdi, qword ptr [rbp + 1584]                    # v
                        mov              rsi, qword ptr [rbp + 1592]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1584], 3
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1536], rax
.Lx23_0:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rcx, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1592]
                        cmp              rdx, 0
                                                                                        jl    .Lx23_1
                        cmp              rax, rcx
                                                                                        jg    main_ω
                                                                                        jmp   .Lx23_2
.Lx23_1:
                        cmp              rax, rcx
                                                                                        jl    main_ω
.Lx23_2:
                        mov              qword ptr [rbp + 1520], 3
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n10_call_builtin_icon_α
n9_to_by_β:
                        mov              rdx, qword ptr [rbp + 1592]
                        mov              rax, qword ptr [rbp + 1536]
                        add              rax, rdx
                        mov              qword ptr [rbp + 1536], rax
                                                                                        jmp   .Lx23_0
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn25:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn25]                          # fn
                        lea              rsi, [rbp + 1456]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 104
                                                                                        je    n9_to_by_β
                                                                                        jmp   n9_to_by_β
n10_call_builtin_icon_β:
                                                                                        jmp   n9_to_by_β
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
