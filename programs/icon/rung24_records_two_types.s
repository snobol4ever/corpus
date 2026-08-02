                        .intel_syntax    noprefix
                        .text
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "person(name,age)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec1:           .string          "coord(x,y)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec1]
                        call             record_register@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
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
                        sub              rsp, 224
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
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n1_lit_integer_α
.Lx12_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rsp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n2_call_α
.Lx13_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn15:               .string          "coord"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn15]                          # fn
                        lea              rsi, [rsp + 144]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n4_var_α
                                                                                        jmp   n3_assign_α
n2_call_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n5_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n5_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx19_0]                 # fname
                        mov              rsi, qword ptr [rsp + 64]                      # obj
                        mov              rdx, qword ptr [rsp + 72]                      # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx19_240
                        add              rsp, 224
                                                                                        jmp   main_ω
.Lx19_240:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                                                                                        jmp   n6_var_α
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n7_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n7_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx22_0]                 # fname
                        mov              rsi, qword ptr [rsp + 96]                      # obj
                        mov              rdx, qword ptr [rsp + 104]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx22_240
                        add              rsp, 224
                                                                                        jmp   main_ω
.Lx22_240:
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                                                                                        jmp   n8_coerce_numeric_α
.Lx22_0:
                        .quad            .Lx22_0_s
.Lx22_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n8_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 5
                                                                                        je    .Lx24_1
                        cmp              eax, 3
                                                                                        jne   .Lx24_0
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 3
                                                                                        jne   .Lx24_0
.Lx24_1:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n9_coerce_numeric_α
.Lx24_0:
                        lea              rdi, [rsp + 48]                                # self
                        lea              rsi, [rsp + 80]                                # other
                        lea              rdx, [rsp + 32]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n9_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n9_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 5
                                                                                        je    .Lx26_1
                        cmp              eax, 3
                                                                                        jne   .Lx26_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx26_0
.Lx26_1:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n10_binop_α
.Lx26_0:
                        lea              rdi, [rsp + 80]                                # self
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 16]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n10_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx27_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx27_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rcx, qword ptr [rsp + 24]
                        add              rax, rcx
                        mov              qword ptr [rsp + 0], 3
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_call_builtin_icon_α
.Lx27_0:
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx27_240
                        add              rsp, 224
                                                                                        jmp   main_ω
.Lx27_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn29:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn29]                          # fn
                        lea              rsi, [rsp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx28_240
                        add              rsp, 224
                                                                                        jmp   main_ω
.Lx28_240:
                        add              rsp, 224
                                                                                        jmp   main_ω
n11_call_builtin_icon_β:
                        add              rsp, 224
                                                                                        jmp   main_ω
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
