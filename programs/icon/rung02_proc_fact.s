                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_fact_α
proc_fact_α:
proc_fact_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 208], 0
                        mov              qword ptr [rbp + 216], 0
                        mov              dword ptr [rbp + 224], 0
                                                                                        jmp   n11_var_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0
                                                                                        jne   .Lx17_0
                                                                                        jmp   n1_var_α
.Lx17_0:
                                                                                        jmp   n1_var_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 224]
                                                                                        jmp   n1_var_α
n0_disjunction_af:
                        add              dword ptr [rbp + 224], 1
                        mov              eax, dword ptr [rbp + 224]
                                                                                        jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n4_coerce_numeric_α
.Lx22_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx24_1
                        cmp              eax, 3
                                                                                        jne   .Lx24_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx24_0
.Lx24_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n5_binop_α
.Lx24_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 192]                               # other
                        lea              rdx, [rbp + 160]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n5_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_α:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 3
                                                                                        jne   .Lx25_0
                        mov              rax, qword ptr [rbp + 168]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n6_call_proc_staged_α
.Lx25_0:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx25_240
                        add              rsp, 256
                                                                                        jmp   proc_fact_ω
.Lx25_240:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n6_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_proc_staged_α:
                        lea              rsi, [rbp + 144]
                        call             proc_fact_dcα
                                                                                        jmp   .Lx27_2
.Lx27_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx27_240
                        add              rsp, 256
                                                                                        jmp   proc_fact_ω
.Lx27_240:
                                                                                        jmp   n7_coerce_numeric_α
n6_call_proc_staged_β:
                                                                                        jmp   proc_fact_ω
.Lx27_0:
                        .quad            .Lx27_0_s
.Lx27_0_s:
                        .string          "fact"
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx29_1
                        cmp              eax, 3
                                                                                        jne   .Lx29_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx29_0
.Lx29_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n8_coerce_numeric_α
.Lx29_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 96]                                # other
                        lea              rdx, [rbp + 64]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n8_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n8_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 5
                                                                                        je    .Lx31_1
                        cmp              eax, 3
                                                                                        jne   .Lx31_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx31_0
.Lx31_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n9_binop_α
.Lx31_0:
                        lea              rdi, [rbp + 96]                                # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 48]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n9_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx32_0
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx32_0
                        mov              rax, qword ptr [rbp + 72]
                        mov              rcx, qword ptr [rbp + 56]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n10_return_α
.Lx32_0:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 56]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx32_240
                        add              rsp, 256
                                                                                        jmp   proc_fact_ω
.Lx32_240:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n10_return_α
#-----------------------------------------------------------------------------------------------------------------------
n10_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        add              rsp, 256
                                                                                        jmp   proc_fact_γ
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n12_lit_integer_α
n11_var_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 288], 3                       # result
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n13_binop_test_α
.Lx36_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx37_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 112
                                                                                        je    .Lx37_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx37_2
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 3
                                                                                        jne   .Lx37_2
.Lx37_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 296]
                        cmp              rax, rcx
                                                                                        jne   n0_disjunction_af
                        mov              rcx, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rcx
                        mov              rcx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rcx
                                                                                        jmp   n14_lit_integer_α
.Lx37_0:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 288]                     # b
                        mov              rcx, qword ptr [rbp + 296]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 256]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx37_1
                        cmp              eax, 1
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n14_lit_integer_α
.Lx37_2:
                        mov              rdi, qword ptr [rbp + 16]                      # lhs
                        mov              rsi, qword ptr [rbp + 24]                      # lhs
                        mov              rdx, qword ptr [rbp + 288]                     # rhs
                        mov              rcx, qword ptr [rbp + 296]                     # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n0_disjunction_af
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n15_return_α
.Lx38_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n15_return_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_fact_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_β:
                                                                                        jmp   proc_fact_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_dcα:
                        pop              r11
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 320], r11
                        lea              rax, [rip + .Lx40_2]
                        mov              qword ptr [rbp + 328], rax
                        lea              rax, [rip + .Lx40_3]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 304                                       # suffix_off
                        mov              edx, 320                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_fact_α_body
.Lx40_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx40_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "fact"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_fact_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_fact_dcα]
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
n41_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n42_call_proc_staged_α
.Lx44_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n42_call_proc_staged_α:
                        lea              rsi, [rsp + 0]
                        call             proc_fact_dcα
                                                                                        jmp   .Lx46_2
.Lx46_2:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx46_240
                        add              rsp, 16
                                                                                        jmp   main_ω
.Lx46_240:
                                                                                        jmp   n43_call_builtin_icon_α
n42_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "fact"
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn48:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn48]                          # fn
                        lea              rsi, [rsp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx47_240
                        add              rsp, 16
                                                                                        jmp   main_ω
.Lx47_240:
                        add              rsp, 16
                                                                                        jmp   main_ω
n43_call_builtin_icon_β:
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
