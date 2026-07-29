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
                        sub              rsp, 392
                        mov              rdi, rsp
                        mov              ecx, 392
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 384], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        mov              qword ptr [rbp + 336], 6
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n1_lit_integer_α
.Lx15_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n2_lit_integer_α
.Lx16_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 368], 6
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n3_to_by_α
.Lx17_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n3_to_by_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 336], 6
                        mov              qword ptr [rbp + 344], rax
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 352], 6
                        mov              qword ptr [rbp + 360], rax
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 368], 6
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 320], rax
.Lx19_0:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 376]
                        cmp              rdx, 0
                                                                                        jl    .Lx19_1
                        cmp              rax, rcx
                                                                                        jg    n5_lit_integer_α
                                                                                        jmp   .Lx19_2
.Lx19_1:
                        cmp              rax, rcx
                                                                                        jl    n5_lit_integer_α
.Lx19_2:
                        mov              qword ptr [rbp + 304], 6
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n4_call_builtin_icon_α
n3_to_by_β:
                        mov              rdx, qword ptr [rbp + 376]
                        mov              rax, qword ptr [rbp + 320]
                        add              rax, rdx
                        mov              qword ptr [rbp + 320], rax
                                                                                        jmp   .Lx19_0
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn21:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn21]
                        lea              rsi, [rbp + 272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n3_to_by_β
                                                                                        jmp   n3_to_by_β
n4_call_builtin_icon_β:
                                                                                        jmp   n3_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n6_lit_integer_α
.Lx22_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n7_lit_integer_α
.Lx23_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n8_to_by_α
.Lx24_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n8_to_by_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 208], 6
                        mov              qword ptr [rbp + 216], rax
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 224], 6
                        mov              qword ptr [rbp + 232], rax
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 240], 6
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 192], rax
.Lx26_0:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 248]
                        cmp              rdx, 0
                                                                                        jl    .Lx26_1
                        cmp              rax, rcx
                                                                                        jg    n10_lit_integer_α
                                                                                        jmp   .Lx26_2
.Lx26_1:
                        cmp              rax, rcx
                                                                                        jl    n10_lit_integer_α
.Lx26_2:
                        mov              qword ptr [rbp + 176], 6
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n9_call_builtin_icon_α
n8_to_by_β:
                        mov              rdx, qword ptr [rbp + 248]
                        mov              rax, qword ptr [rbp + 192]
                        add              rax, rdx
                        mov              qword ptr [rbp + 192], rax
                                                                                        jmp   .Lx26_0
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn28:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn28]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n8_to_by_β
                                                                                        jmp   n8_to_by_β
n9_call_builtin_icon_β:
                                                                                        jmp   n8_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 80], 6
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n11_lit_integer_α
.Lx29_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n12_lit_integer_α
.Lx30_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 112], 6
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n13_to_by_α
.Lx31_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n13_to_by_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 6
                        mov              qword ptr [rbp + 104], rax
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 112], 6
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 64], rax
.Lx33_0:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 120]
                        cmp              rdx, 0
                                                                                        jl    .Lx33_1
                        cmp              rax, rcx
                                                                                        jg    main_ω
                                                                                        jmp   .Lx33_2
.Lx33_1:
                        cmp              rax, rcx
                                                                                        jl    main_ω
.Lx33_2:
                        mov              qword ptr [rbp + 48], 6
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n14_call_builtin_icon_α
n13_to_by_β:
                        mov              rdx, qword ptr [rbp + 120]
                        mov              rax, qword ptr [rbp + 64]
                        add              rax, rdx
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   .Lx33_0
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn35:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn35]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n13_to_by_β
                                                                                        jmp   n13_to_by_β
n14_call_builtin_icon_β:
                                                                                        jmp   n13_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 384]
                        add              rsp, 392
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 384]
                        add              rsp, 392
                        ret
                        .section         .note.GNU-stack,"",@progbits
