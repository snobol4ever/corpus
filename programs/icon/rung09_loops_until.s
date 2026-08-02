                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_countdown_α
proc_countdown_α:
proc_countdown_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        sub              rsp, 240
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
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n1_assign_α
.Lx13_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n3_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n4_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n4_binop_test_α:
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 112
                                                                                        je    .Lx19_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx19_0
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 3
                                                                                        jne   .Lx19_2
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx19_2
.Lx19_1:
                        mov              rax, qword ptr [rsp + 280]
                        mov              rcx, qword ptr [rsp + 24]
                        cmp              rax, rcx
                                                                                        jg    .Lx19_238
                        add              rsp, 240
                                                                                        jmp   n5_var_α
.Lx19_238:
                        mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rcx
                        add              rsp, 240
                                                                                        jmp   proc_countdown_ω
.Lx19_0:
                        mov              rdi, qword ptr [rsp + 272]                     # a
                        mov              rsi, qword ptr [rsp + 280]                     # a
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rsp + 0]                                  # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx19_1
                        cmp              eax, 1
                                                                                        jne   .Lx19_239
                        add              rsp, 240
                                                                                        jmp   n5_var_α
.Lx19_239:
                        add              rsp, 240
                                                                                        jmp   proc_countdown_ω
.Lx19_2:
                        mov              rdi, qword ptr [rsp + 272]                     # lhs
                        mov              rsi, qword ptr [rsp + 280]                     # lhs
                        mov              rdx, qword ptr [rsp + 16]                      # rhs
                        mov              rcx, qword ptr [rsp + 24]                      # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jne   .Lx19_240
                        add              rsp, 240
                                                                                        jmp   n5_var_α
.Lx19_240:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax
                        add              rsp, 240
                                                                                        jmp   proc_countdown_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n6_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn23:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn23]                          # fn
                        lea              rsi, [rsp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n2_var_α
                                                                                        jmp   n7_var_α
n6_call_builtin_icon_β:
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rsp + 160], 3                       # result
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n9_coerce_numeric_α
.Lx26_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 5
                                                                                        je    .Lx28_1
                        cmp              eax, 3
                                                                                        jne   .Lx28_0
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 3
                                                                                        jne   .Lx28_0
.Lx28_1:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n10_binop_α
.Lx28_0:
                        lea              rdi, [rsp + 272]                               # self
                        lea              rsi, [rsp + 160]                               # other
                        lea              rdx, [rsp + 128]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n10_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_α:
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 3
                                                                                        jne   .Lx29_0
                        mov              rax, qword ptr [rsp + 136]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n11_assign_α
.Lx29_0:
                        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n2_var_α
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n11_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n12_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n12_conjunction_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n2_var_α
n12_conjunction_β:
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_countdown_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_countdown_β:
                                                                                        jmp   proc_countdown_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_countdown_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_countdown_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_countdown_dcα:
                        pop              r11
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 304], r11
                        lea              rax, [rip + .Lx32_2]
                        mov              qword ptr [rsp + 312], rax
                        lea              rax, [rip + .Lx32_3]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 272                                       # suffix_off
                        mov              edx, 304                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_countdown_α_body
.Lx32_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx32_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "countdown"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_countdown_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 288
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_countdown_dcα]
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
n33_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n34_call_proc_staged_α
.Lx35_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n34_call_proc_staged_α:
                        lea              rsi, [rsp + 0]
                        call             proc_countdown_dcα
                                                                                        jmp   .Lx37_2
.Lx37_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx37_240
                        add              rsp, 16
                                                                                        jmp   main_ω
.Lx37_240:
                        add              rsp, 16
                                                                                        jmp   main_ω
n34_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "countdown"
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
