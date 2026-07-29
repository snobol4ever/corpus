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
                        sub              rsp, 264
                        mov              rdi, rsp
                        mov              ecx, 264
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 256], rbp
                        mov              rbp, rsp
main_α_body:
                        mov              qword ptr [rbp + 128], 0
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1_repalt_α
.Lx10_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1_repalt_α:
                        mov              qword ptr [rbp + 176], 0
                                                                                        jmp   n4_lit_integer_α
n1_repalt_ry:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        mov              qword ptr [rbp + 176], 1
                                                                                        jmp   n2_limit_α
n1_repalt_rt:
                        mov              rax, qword ptr [rbp + 176]
                        cmp              rax, 1
                                                                                        je    n1_repalt_α
                                                                                        jmp   n7_lit_string_α
n1_repalt_β:
                                                                                        jmp   n3_to_β
#-----------------------------------------------------------------------------------------------------------------------
n2_limit_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 152]
                        cmp              rax, rcx
                                                                                        jge   n7_lit_string_α
                        inc              qword ptr [rbp + 128]
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n5_call_builtin_icon_α
n2_limit_β:
                                                                                        jmp   n1_repalt_β
#-----------------------------------------------------------------------------------------------------------------------
n3_to_α:
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
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 208], rax
.Lx18_0:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 248]
                        cmp              rax, rcx
                                                                                        jg    n1_repalt_rt
                        mov              qword ptr [rbp + 192], 6
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1_repalt_ry
n3_to_β:
                        inc              qword ptr [rbp + 208]
                                                                                        jmp   .Lx18_0
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n6_lit_integer_α
n4_lit_integer_β:
                                                                                        jmp   n7_lit_string_α
.Lx19_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn21:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn21]
                        lea              rsi, [rbp + 80]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n1_repalt_β
                                                                                        jmp   n1_repalt_β
n5_call_builtin_icon_β:
                                                                                        jmp   n1_repalt_β
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n3_to_α
.Lx22_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 48], 1
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n8_call_builtin_icon_α
.Lx23_0:
                        .quad            .Lx23_0_s
.Lx23_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn25:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn25]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n8_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 256]
                        add              rsp, 264
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 256]
                        add              rsp, 264
                        ret
                        .section         .note.GNU-stack,"",@progbits
