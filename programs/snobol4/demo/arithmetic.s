                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "A"
.Lgvan1:                .string          "B"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
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
                        sub              rsp, 65544
                        mov              rdi, rsp
                        mov              ecx, 65544
                        xor              eax, eax
                        rep stosb
                        mov              qword ptr [rsp + 648], rsp
                        mov              r12, qword ptr [1879048192]
                        mov              [rsp + 65536], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#         A = 10
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n0_α:
                        mov              qword ptr [rbp + 112], 6
                        mov              rax, qword ptr [rip + .Lx1_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   xchain0_n1_α
.Lx1_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n1_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   xchain0_n2_α
#=======================================================================================================================
#         B = 3
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n2_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx3_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   xchain0_n3_α
.Lx3_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n3_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   xchain0_n4_α
#=======================================================================================================================
#         OUTPUT = A + B
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n4_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   xchain0_n5_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n5_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   xchain0_n7_α
#=======================================================================================================================
#         OUTPUT = A - B
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n6_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   xchain0_n8_α
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n7_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 100
                                                                                        je    .Lx8_0
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 100
                                                                                        je    .Lx8_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx8_2
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 6
                                                                                        jne   .Lx8_2
.Lx8_1:
                        mov              rax, qword ptr [rbp + 248]
                        mov              rcx, qword ptr [rbp + 280]
                        add              rax, rcx
                        mov              qword ptr [rbp + 208], 6
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   xchain0_n10_α
.Lx8_0:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              r8d, 0
                        lea              r9, [rbp + 208]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n10_α
.Lx8_2:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n6_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   xchain0_n10_α
xchain0_n7_β:
                                                                                        jmp   xchain0_n6_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n8_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   xchain0_n11_α
#=======================================================================================================================
#         OUTPUT = A * B
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n9_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   xchain0_n12_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain0_n10_α:
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              rdi, qword ptr [rip + .Lx11_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   xchain0_n6_α
.Lx11_0:
                        .quad            .Lx11_0_s
.Lx11_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n11_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 100
                                                                                        je    .Lx12_0
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 100
                                                                                        je    .Lx12_0
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 6
                                                                                        jne   .Lx12_2
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 6
                                                                                        jne   .Lx12_2
.Lx12_1:
                        mov              rax, qword ptr [rbp + 360]
                        mov              rcx, qword ptr [rbp + 392]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 320], 6
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   xchain0_n14_α
.Lx12_0:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        mov              r8d, 1
                        lea              r9, [rbp + 320]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n14_α
.Lx12_2:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n9_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   xchain0_n14_α
xchain0_n11_β:
                                                                                        jmp   xchain0_n9_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n12_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   xchain0_n15_α
#=======================================================================================================================
#         OUTPUT = A / B
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n13_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   xchain0_n16_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain0_n14_α:
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              rdi, qword ptr [rip + .Lx15_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   xchain0_n9_α
.Lx15_0:
                        .quad            .Lx15_0_s
.Lx15_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n15_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 100
                                                                                        je    .Lx16_0
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 100
                                                                                        je    .Lx16_0
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 6
                                                                                        jne   .Lx16_2
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 6
                                                                                        jne   .Lx16_2
.Lx16_1:
                        mov              rax, qword ptr [rbp + 472]
                        mov              rcx, qword ptr [rbp + 504]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 432], 6
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   xchain0_n17_α
.Lx16_0:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              r8d, 2
                        lea              r9, [rbp + 432]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n17_α
.Lx16_2:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              r8d, 2
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain0_n13_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   xchain0_n17_α
xchain0_n15_β:
                                                                                        jmp   xchain0_n13_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n16_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   xchain0_n18_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain0_n17_α:
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              rdi, qword ptr [rip + .Lx18_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   xchain0_n13_α
.Lx18_0:
                        .quad            .Lx18_0_s
.Lx18_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n18_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 100
                                                                                        je    .Lx19_0
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 100
                                                                                        je    .Lx19_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 6
                                                                                        jne   .Lx19_2
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 6
                                                                                        jne   .Lx19_2
.Lx19_1:
                        mov              rax, qword ptr [rbp + 584]
                        mov              rcx, qword ptr [rbp + 616]
                        cqo
                        idiv             rcx
                        mov              qword ptr [rbp + 544], 6
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   xchain0_n19_α
.Lx19_0:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              r8d, 3
                        lea              r9, [rbp + 544]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain0_n19_α
.Lx19_2:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              r8d, 3
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    main_γ
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   xchain0_n19_α
xchain0_n18_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain0_n19_α:
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              rdi, qword ptr [rip + .Lx20_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   main_γ
.Lx20_0:
                        .quad            .Lx20_0_s
.Lx20_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, qword ptr [rbp + 648]
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, qword ptr [rbp + 648]
                        mov              dword ptr [rsp+0], 99
                        mov              dword ptr [rsp+4], 0
                        mov              qword ptr [rsp+8], 0
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 65536]
                        add              rsp, 65544
                        ret
                        .section         .note.GNU-stack,"",@progbits
