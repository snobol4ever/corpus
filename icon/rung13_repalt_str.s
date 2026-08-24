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
                        sub              rsp, 192
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        mov              qword ptr [rsp + 64], 0
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx6_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n1_repalt_α
.Lx6_0:                 .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1_repalt_α:            mov              r11, 2
                        mov              qword ptr [rsp + 112], 0
                                                                              jmp   n4_lit_string_α
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
                                                                              jmp   n1_repalt_rt
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
.Lrkfn14:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn14]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n1_repalt_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_repalt_β
n3_call_builtin_icon_β: mov              r11, 4;                              jmp   n1_repalt_β
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 2
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1_repalt_ry
n4_lit_string_β:        mov              r11, 5;                              jmp   n1_repalt_rt
.Lx15_0:                .quad            .Lx15_0_s
.Lx15_0_s:              .string          "hi"
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
