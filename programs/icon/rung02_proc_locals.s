                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_sum_to_α
proc_sum_to_α:
proc_sum_to_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        sub              rsp, 160
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
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1_assign_α
.Lx12_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 160], 3                       # result
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n4_var_α
.Lx16_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n5_to_α
#-----------------------------------------------------------------------------------------------------------------------
n5_to_α:
                        mov              rdi, qword ptr [rbp + 160]                     # v
                        mov              rsi, qword ptr [rbp + 168]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 160], 3
                        mov              qword ptr [rbp + 168], rax
                        mov              rdi, qword ptr [rbp + 176]                     # v
                        mov              rsi, qword ptr [rbp + 184]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 176], 3
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 144], rax
.Lx20_0:
                        mov              rax, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 184]
                        cmp              rax, rcx
                                                                                        jle   .Lx20_240
                        add              rsp, 160
                                                                                        jmp   n10_var_α
.Lx20_240:
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n6_coerce_numeric_α
n5_to_β:
                        inc              qword ptr [rbp + 144]
                                                                                        jmp   .Lx20_0
#-----------------------------------------------------------------------------------------------------------------------
n6_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 5
                                                                                        je    .Lx22_1
                        cmp              eax, 3
                                                                                        jne   .Lx22_0
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 3
                                                                                        jne   .Lx22_0
.Lx22_1:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n7_coerce_numeric_α
.Lx22_0:
                        lea              rdi, [rbp + 208]                               # self
                        lea              rsi, [rbp + 128]                               # other
                        lea              rdx, [rbp + 96]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n7_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 5
                                                                                        je    .Lx24_1
                        cmp              eax, 3
                                                                                        jne   .Lx24_0
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx24_0
.Lx24_1:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n8_binop_α
.Lx24_0:
                        lea              rdi, [rbp + 128]                               # self
                        lea              rsi, [rbp + 208]                               # other
                        lea              rdx, [rbp + 80]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n8_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx25_0
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 3
                                                                                        jne   .Lx25_0
                        mov              rax, qword ptr [rbp + 104]
                        mov              rcx, qword ptr [rbp + 88]
                        add              rax, rcx
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n9_assign_α
.Lx25_0:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 80]
                        mov              rcx, qword ptr [rbp + 88]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx25_240
                        add              rsp, 160
                                                                                        jmp   n10_var_α
.Lx25_240:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n9_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n5_to_β
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n11_return_α
#-----------------------------------------------------------------------------------------------------------------------
n11_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_sum_to_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_sum_to_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_sum_to_β:
                                                                                        jmp   proc_sum_to_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_sum_to_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_sum_to_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_sum_to_dcα:
                        pop              r11
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 240], r11
                        lea              rax, [rip + .Lx30_2]
                        mov              qword ptr [rbp + 248], rax
                        lea              rax, [rip + .Lx30_3]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 208                                       # suffix_off
                        mov              edx, 240                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_sum_to_α_body
.Lx30_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -272
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx30_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -272
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "sum_to"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_sum_to_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_sum_to_dcα]
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
n31_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_call_proc_staged_α
.Lx34_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n32_call_proc_staged_α:
                        lea              rsi, [rsp + 0]
                        call             proc_sum_to_dcα
                                                                                        jmp   .Lx36_2
.Lx36_2:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx36_240
                        add              rsp, 16
                                                                                        jmp   main_ω
.Lx36_240:
                                                                                        jmp   n33_call_builtin_icon_α
n32_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "sum_to"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn38:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn38]                          # fn
                        lea              rsi, [rsp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx37_240
                        add              rsp, 16
                                                                                        jmp   main_ω
.Lx37_240:
                        add              rsp, 16
                                                                                        jmp   main_ω
n33_call_builtin_icon_β:
                        add              rsp, 16
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
