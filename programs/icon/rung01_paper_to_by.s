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
n0_lit_integer_α:
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
                        mov              qword ptr [rbp + 336], 3                       # result
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n1_lit_integer_α
.Lx10_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 352], 3                       # result
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n2_lit_integer_α
.Lx11_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 368], 3                       # result
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n3_to_by_α
.Lx12_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n3_to_by_α:
                        mov              rdi, qword ptr [rbp + 336]                     # v
                        mov              rsi, qword ptr [rbp + 344]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 336], 3
                        mov              qword ptr [rbp + 344], rax
                        mov              rdi, qword ptr [rbp + 352]                     # v
                        mov              rsi, qword ptr [rbp + 360]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 352], 3
                        mov              qword ptr [rbp + 360], rax
                        mov              rdi, qword ptr [rbp + 368]                     # v
                        mov              rsi, qword ptr [rbp + 376]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 368], 3
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 320], rax
.Lx14_0:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 376]
                        cmp              rdx, 0
                                                                                        jl    .Lx14_1
                        cmp              rax, rcx
                                                                                        jle   .Lx14_239
                        add              rsp, 80
                                                                                        jmp   n5_lit_integer_α
.Lx14_239:
                                                                                        jmp   .Lx14_2
.Lx14_1:
                        cmp              rax, rcx
                                                                                        jge   .Lx14_240
                        add              rsp, 80
                                                                                        jmp   n5_lit_integer_α
.Lx14_240:
.Lx14_2:
                        mov              qword ptr [rbp + 304], 3
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n4_call_builtin_icon_α
n3_to_by_β:
                        mov              rdx, qword ptr [rbp + 376]
                        mov              rax, qword ptr [rbp + 320]
                        add              rax, rdx
                        mov              qword ptr [rbp + 320], rax
                                                                                        jmp   .Lx14_0
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn16:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn16]                          # fn
                        lea              rsi, [rbp + 272]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    n3_to_by_β
                                                                                        jmp   n3_to_by_β
n4_call_builtin_icon_β:
                                                                                        jmp   n3_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n6_lit_integer_α
.Lx17_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n7_lit_integer_α
.Lx18_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n8_to_by_α
.Lx19_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n8_to_by_α:
                        mov              rdi, qword ptr [rbp + 208]                     # v
                        mov              rsi, qword ptr [rbp + 216]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 208], 3
                        mov              qword ptr [rbp + 216], rax
                        mov              rdi, qword ptr [rbp + 224]                     # v
                        mov              rsi, qword ptr [rbp + 232]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 224], 3
                        mov              qword ptr [rbp + 232], rax
                        mov              rdi, qword ptr [rbp + 240]                     # v
                        mov              rsi, qword ptr [rbp + 248]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 240], 3
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 192], rax
.Lx21_0:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 248]
                        cmp              rdx, 0
                                                                                        jl    .Lx21_1
                        cmp              rax, rcx
                                                                                        jg    main_ω
                                                                                        jmp   .Lx21_2
.Lx21_1:
                        cmp              rax, rcx
                                                                                        jl    main_ω
.Lx21_2:
                        mov              qword ptr [rbp + 176], 3
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n9_call_builtin_icon_α
n8_to_by_β:
                        mov              rdx, qword ptr [rbp + 248]
                        mov              rax, qword ptr [rbp + 192]
                        add              rax, rdx
                        mov              qword ptr [rbp + 192], rax
                                                                                        jmp   .Lx21_0
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn23:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn23]                          # fn
                        lea              rsi, [rbp + 144]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n8_to_by_β
                                                                                        jmp   n8_to_by_β
n9_call_builtin_icon_β:
                                                                                        jmp   n8_to_by_β
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
