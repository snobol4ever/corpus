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
                        sub              rsp, 296
                        mov              rdi, rsp
                        mov              ecx, 296
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 288], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1_lit_integer_α
.Lx13_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n2_to_α
.Lx14_0:
                        .quad            2000000
#-----------------------------------------------------------------------------------------------------------------------
n2_to_α:
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 128], 6
                        mov              qword ptr [rbp + 136], rax
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 144], 6
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 112], rax
.Lx16_0:
                        mov              rax, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 152]
                        cmp              rax, rcx
                                                                                        jg    n10_var_α
                        mov              qword ptr [rbp + 96], 6
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n3_assign_α
n2_to_β:
                        inc              qword ptr [rbp + 112]
                                                                                        jmp   .Lx16_0
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n4_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n4_bound_α:
                        mov              qword ptr [rbp + 160], rsp
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              dword ptr [rbp + 228], 8
                        mov              rax, qword ptr [rip + .Lx20_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n6_lit_string_α
.Lx20_0:
                        .quad            .Lx20_0_s
.Lx20_0_s:
                        .string          "abcdefgh"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              dword ptr [rbp + 244], 8
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n7_binop_α
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          "ijklmnop"
#-----------------------------------------------------------------------------------------------------------------------
n7_binop_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n8_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n9_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n9_unmark_α:
                        mov              rsp, qword ptr [rbp + 160]
                                                                                        jmp   n2_to_β
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n11_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n11_unop_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn30:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn30]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n12_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 288]
                        add              rsp, 296
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 288]
                        add              rsp, 296
                        ret
                        .section         .note.GNU-stack,"",@progbits
