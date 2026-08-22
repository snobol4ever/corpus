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
                        sub              rsp, 240
                        mov              qword ptr [rsp + 216], rcx
                        mov              qword ptr [rsp + 224], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        mov              qword ptr [rsp + 64], 0
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx8_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n1_repalt_α
.Lx8_0:                 .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1_repalt_α:            mov              r11, 2
                        mov              qword ptr [rsp + 112], 0
                                                                              jmp   n4_lit_integer_α
n1_repalt_ry:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [rsp + 112], 1
                                                                              jmp   n2_limit_α
n1_repalt_rt:
                        mov              rax, qword ptr [rsp + 112]
                        cmp              rax, 1
                                                                              je    n1_repalt_α
                                                                              jmp   main_ω
n1_repalt_β:
                                                                              jmp   n6_to_β
#-----------------------------------------------------------------------------------------------------------------------
n2_limit_α:             mov              r11, 3
                        mov              rax, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jge   main_ω
                        inc              qword ptr [rsp + 64]
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax;           jmp   n3_call_builtin_icon_α
n2_limit_β:             mov              r11, 3;                              jmp   n1_repalt_β
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α: mov              r11, 4
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn16:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn16]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n1_repalt_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_repalt_β
n3_call_builtin_icon_β: mov              r11, 4;                              jmp   n1_repalt_β
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 5
                        mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n5_lit_integer_α
n4_lit_integer_β:       mov              r11, 5;                              jmp   main_ω
.Lx17_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n6_to_α
.Lx18_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n6_to_α:                mov              r11, 7
                        mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], 3
                        mov              qword ptr [rsp + 168], rax
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 176], 3
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 144], rax
.Lx20_0:                mov              rax, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 184]
                        cmp              rax, rcx;                            jg    n1_repalt_rt
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax;          jmp   n1_repalt_ry
n6_to_β:                mov              r11, 7
                        inc              qword ptr [rsp + 144];               jmp   .Lx20_0
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
