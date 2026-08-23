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
                        sub              rsp, 432
                        mov              qword ptr [rsp + 408], rcx
                        mov              qword ptr [rsp + 416], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n1_lit_integer_α
.Lx15_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rsp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n2_lit_integer_α
.Lx16_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 368], 3             # result
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n3_to_by_α
.Lx17_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n3_to_by_α:             mov              r11, 4
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], 3
                        mov              qword ptr [rsp + 344], rax
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 352], 3
                        mov              qword ptr [rsp + 360], rax
                        mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 368], 3
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 320], rax
.Lx19_0:                mov              rax, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 376]
                        cmp              rdx, 0;                              jl    .Lx19_1
                        cmp              rax, rcx;                            jg    n5_lit_integer_α
                                                                              jmp   .Lx19_2
.Lx19_1:                cmp              rax, rcx;                            jl    n5_lit_integer_α
.Lx19_2:                mov              qword ptr [rsp + 304], 3
                        mov              qword ptr [rsp + 312], rax;          jmp   n4_call_builtin_icon_α
n3_to_by_β:             mov              r11, 4
                        mov              rdx, qword ptr [rsp + 376]
                        mov              rax, qword ptr [rsp + 320]
                        add              rax, rdx
                        mov              qword ptr [rsp + 320], rax;          jmp   .Lx19_0
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α: mov              r11, 5
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn21:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn21]
                        lea              rsi, [rsp + 272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n3_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n3_to_by_β
n4_call_builtin_icon_β: mov              r11, 5;                              jmp   n3_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n6_lit_integer_α
.Lx22_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n7_lit_integer_α
.Lx23_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n8_to_by_α
.Lx24_0:                .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n8_to_by_α:             mov              r11, 9
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], 3
                        mov              qword ptr [rsp + 216], rax
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 224], 3
                        mov              qword ptr [rsp + 232], rax
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], 3
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 192], rax
.Lx26_0:                mov              rax, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 248]
                        cmp              rdx, 0;                              jl    .Lx26_1
                        cmp              rax, rcx;                            jg    n10_lit_integer_α
                                                                              jmp   .Lx26_2
.Lx26_1:                cmp              rax, rcx;                            jl    n10_lit_integer_α
.Lx26_2:                mov              qword ptr [rsp + 176], 3
                        mov              qword ptr [rsp + 184], rax;          jmp   n9_call_builtin_icon_α
n8_to_by_β:             mov              r11, 9
                        mov              rdx, qword ptr [rsp + 248]
                        mov              rax, qword ptr [rsp + 192]
                        add              rax, rdx
                        mov              qword ptr [rsp + 192], rax;          jmp   .Lx26_0
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α: mov              r11, 10
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn28:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn28]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n8_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_to_by_β
n9_call_builtin_icon_β: mov              r11, 10;                             jmp   n8_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n11_lit_integer_α
.Lx29_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n12_lit_integer_α
.Lx30_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n13_to_by_α
.Lx31_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n13_to_by_α:            mov              r11, 14
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], 3
                        mov              qword ptr [rsp + 104], rax
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 64], rax
.Lx33_0:                mov              rax, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 120]
                        cmp              rdx, 0;                              jl    .Lx33_1
                        cmp              rax, rcx;                            jg    main_ω
                                                                              jmp   .Lx33_2
.Lx33_1:                cmp              rax, rcx;                            jl    main_ω
.Lx33_2:                mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax;           jmp   n14_call_builtin_icon_α
n13_to_by_β:            mov              r11, 14
                        mov              rdx, qword ptr [rsp + 120]
                        mov              rax, qword ptr [rsp + 64]
                        add              rax, rdx
                        mov              qword ptr [rsp + 64], rax;           jmp   .Lx33_0
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              r11, 15
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn35:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn35]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n13_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_to_by_β
n14_call_builtin_icon_β:
                        mov              r11, 15;                             jmp   n13_to_by_β
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
