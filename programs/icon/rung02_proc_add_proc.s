                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_add_α
proc_add_α:
proc_add_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
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
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n2_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n2_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx11_1
                        cmp              eax, 3
                                                                                        jne   .Lx11_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx11_0
.Lx11_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n3_coerce_numeric_α
.Lx11_0:
                        lea              rdi, [rsp + 16]                                # self
                        lea              rsi, [rsp + 32]                                # other
                        lea              rdx, [rsp + 32]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n3_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx13_1
                        cmp              eax, 3
                                                                                        jne   .Lx13_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx13_0
.Lx13_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n4_binop_α
.Lx13_0:
                        lea              rdi, [rsp + 32]                                # self
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 16]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n4_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n4_binop_α:
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx14_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx14_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rcx, qword ptr [rsp + 24]
                        add              rax, rcx
                        mov              qword ptr [rsp + 0], 3
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_return_α
.Lx14_0:
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx14_240
                        add              rsp, 80
                                                                                        jmp   proc_add_ω
.Lx14_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n5_return_α
#-----------------------------------------------------------------------------------------------------------------------
n5_return_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80
                                                                                        jmp   proc_add_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_add_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_add_β:
                                                                                        jmp   proc_add_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_add_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_add_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_add_dcα:
                        pop              r11
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 144], r11
                        lea              rax, [rip + .Lx16_2]
                        mov              qword ptr [rsp + 152], rax
                        lea              rax, [rip + .Lx16_3]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              qword ptr [rsp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 128                                       # suffix_off
                        mov              edx, 144                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_add_α_body
.Lx16_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -176
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx16_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -176
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_add_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 128
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_add_dcα]
                        call             rt_proc_set_dcfn@PLT
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
n17_lit_integer_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_lit_integer_α
.Lx21_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rsp + 16], 3                        # result
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n19_call_proc_staged_α
.Lx22_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n19_call_proc_staged_α:
                        lea              rsi, [rsp + 0]
                        lea              rdx, [rsp + 16]
                        call             proc_add_dcα
                                                                                        jmp   .Lx24_2
.Lx24_2:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx24_240
                        add              rsp, 32
                                                                                        jmp   main_ω
.Lx24_240:
                                                                                        jmp   n20_call_builtin_icon_α
n19_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
                        .string          "add"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn26:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn26]                          # fn
                        lea              rsi, [rsp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx25_240
                        add              rsp, 32
                                                                                        jmp   main_ω
.Lx25_240:
                        add              rsp, 32
                                                                                        jmp   main_ω
n20_call_builtin_icon_β:
                        add              rsp, 32
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
