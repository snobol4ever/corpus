                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_count_α
proc_count_α:
proc_count_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 208
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
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n1_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rsp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n4_coerce_numeric_α
.Lx16_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 5
                                                                                        je    .Lx18_1
                        cmp              eax, 3
                                                                                        jne   .Lx18_0
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 3
                                                                                        jne   .Lx18_0
.Lx18_1:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n5_binop_α
.Lx18_0:
                        lea              rdi, [rsp + 240]                               # self
                        lea              rsi, [rsp + 80]                                # other
                        lea              rdx, [rsp + 48]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n5_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_α:
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx19_0
                        mov              rax, qword ptr [rsp + 56]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n6_assign_α
.Lx19_0:
                        mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 80]
                        mov              rcx, qword ptr [rsp + 88]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx19_240
                        add              rsp, 208
                                                                                        jmp   n9_var_α
.Lx19_240:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                                                                                        jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                                                                                        jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rsp + 96], 3                        # result
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n8_binop_test_α
.Lx21_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_test_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx22_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 112
                                                                                        je    .Lx22_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx22_2
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx22_2
.Lx22_1:
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 104]
                        cmp              rax, rcx
                                                                                        jl    .Lx22_238
                        add              rsp, 208
                                                                                        jmp   n9_var_α
.Lx22_238:
                        mov              rcx, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rcx
                        add              rsp, 208
                                                                                        jmp   proc_count_ω
.Lx22_0:
                        mov              rdi, qword ptr [rsp + 16]                      # a
                        mov              rsi, qword ptr [rsp + 24]                      # a
                        mov              rdx, qword ptr [rsp + 96]                      # b
                        mov              rcx, qword ptr [rsp + 104]                     # b
                        mov              r8d, 5                                         # op
                        lea              r9, [rsp + 0]                                  # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx22_1
                        cmp              eax, 1
                                                                                        jne   .Lx22_239
                        add              rsp, 208
                                                                                        jmp   n9_var_α
.Lx22_239:
                        add              rsp, 208
                                                                                        jmp   proc_count_ω
.Lx22_2:
                        mov              rdi, qword ptr [rsp + 16]                      # lhs
                        mov              rsi, qword ptr [rsp + 24]                      # lhs
                        mov              rdx, qword ptr [rsp + 96]                      # rhs
                        mov              rcx, qword ptr [rsp + 104]                     # rhs
                        mov              r8d, 5                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jne   .Lx22_240
                        add              rsp, 208
                                                                                        jmp   n9_var_α
.Lx22_240:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        add              rsp, 208
                                                                                        jmp   proc_count_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn26:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn26]                          # fn
                        lea              rsi, [rsp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n2_var_α
                                                                                        jmp   n2_var_α
n10_call_builtin_icon_β:
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_count_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_count_β:
                                                                                        jmp   proc_count_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_count_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_count_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_count_dcα:
                        pop              r11
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 272], r11
                        lea              rax, [rip + .Lx27_2]
                        mov              qword ptr [rsp + 280], rax
                        lea              rax, [rip + .Lx27_3]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 240                                       # suffix_off
                        mov              edx, 272                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_count_α_body
.Lx27_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -304
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx27_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -304
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "count"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_count_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_count_dcα]
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
n28_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n29_call_proc_staged_α
.Lx30_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n29_call_proc_staged_α:
                        lea              rsi, [rsp + 0]
                        call             proc_count_dcα
                                                                                        jmp   .Lx32_2
.Lx32_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx32_240
                        add              rsp, 16
                                                                                        jmp   main_ω
.Lx32_240:
                        add              rsp, 16
                                                                                        jmp   main_ω
n29_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          "count"
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
