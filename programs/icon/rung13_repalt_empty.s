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
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        mov              qword ptr [rsp + 128], 0
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n1_repalt_α
.Lx10_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1_repalt_α:            mov              qword ptr [rsp + 176], 0
                                                                              jmp   n4_lit_integer_α
n1_repalt_ry:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        mov              qword ptr [rsp + 176], 1
                                                                              jmp   n2_limit_α
n1_repalt_rt:
                        mov              rax, qword ptr [rsp + 176]
                        cmp              rax, 1
                                                                              je    n1_repalt_α
                                                                              jmp   n7_lit_string_α
n1_repalt_β:
                                                                              jmp   n6_to_β
#-----------------------------------------------------------------------------------------------------------------------
n2_limit_α:             mov              rax, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 152]
                        cmp              rax, rcx;                            jge   n7_lit_string_α
                        inc              qword ptr [rsp + 128]
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax;          jmp   n3_call_builtin_icon_α
n2_limit_β:                                                                   jmp   n1_repalt_β
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α: mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn18:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn18]
                        lea              rsi, [rsp + 80]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n1_repalt_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_repalt_β
n3_call_builtin_icon_β:                                                       jmp   n1_repalt_β
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n5_lit_integer_α
n4_lit_integer_β:                                                             jmp   n7_lit_string_α
.Lx19_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n6_to_α
.Lx20_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_to_α:                mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 224], 3
                        mov              qword ptr [rsp + 232], rax
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 240], 3
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 208], rax
.Lx22_0:                mov              rax, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 248]
                        cmp              rax, rcx;                            jg    n1_repalt_rt
                        mov              qword ptr [rsp + 192], 3
                        mov              qword ptr [rsp + 200], rax;          jmp   n1_repalt_ry
n6_to_β:                inc              qword ptr [rsp + 208];               jmp   .Lx22_0
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 4
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n8_call_builtin_icon_α
.Lx23_0:                .quad            .Lx23_0_s
.Lx23_0_s:              .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α: mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn25:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn25]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n8_call_builtin_icon_β:                                                       jmp   main_ω
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
