                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__max_α
proc_LBL__max_α:
proc_LBL__max_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                        sub              rsp, 128
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
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__max_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [1879052288]                    # max
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 96], rax                      # result
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 80], rax                      # result
                        mov              qword ptr [rsp + 88], rdx
                                                                                        jmp   n3_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 5
                                                                                        je    .Lx14_1
                        cmp              eax, 3
                                                                                        jne   .Lx14_0
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 3
                                                                                        jne   .Lx14_0
.Lx14_1:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n4_coerce_numeric_α
.Lx14_0:
                        lea              rdi, [rsp + 96]                                # self
                        lea              rsi, [rsp + 80]                                # other
                        lea              rdx, [rsp + 64]                                # out
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n4_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 5
                                                                                        je    .Lx16_1
                        cmp              eax, 3
                                                                                        jne   .Lx16_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx16_0
.Lx16_1:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n5_cmp_test_α
.Lx16_0:
                        lea              rdi, [rsp + 80]                                # self
                        lea              rsi, [rsp + 96]                                # other
                        lea              rdx, [rsp + 48]                                # out
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n5_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n5_cmp_test_α:
                        lea              rdi, [rsp + 64]                                # a
                        lea              rsi, [rsp + 48]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n9_save_restore_α
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 112], rax                     # result
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n7_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n7_binop_α:
                        mov              rdi, qword ptr [rsp + 32]                      # a
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 112]                     # b
                        mov              rcx, qword ptr [rsp + 120]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                                                                                        jmp   n8_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n9_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n9_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__max_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__max_β:
                                                                                        jmp   proc_LBL__max_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__max_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__max_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__min_α
proc_LBL__min_α:
proc_LBL__min_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n24_goto_α:
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
                                                                                        jmp   n25_var_α
n24_goto_β:
                                                                                        jmp   proc_LBL__min_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [1879052320]                    # min
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 208], rax                     # result
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 192], rax                     # result
                        mov              qword ptr [rsp + 200], rdx
                                                                                        jmp   n27_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 5
                                                                                        je    .Lx38_1
                        cmp              eax, 3
                                                                                        jne   .Lx38_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx38_0
.Lx38_1:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n28_coerce_numeric_α
.Lx38_0:
                        lea              rdi, [rsp + 208]                               # self
                        lea              rsi, [rsp + 192]                               # other
                        lea              rdx, [rsp + 176]                               # out
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n28_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n28_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 5
                                                                                        je    .Lx40_1
                        cmp              eax, 3
                                                                                        jne   .Lx40_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx40_0
.Lx40_1:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n29_cmp_test_α
.Lx40_0:
                        lea              rdi, [rsp + 192]                               # self
                        lea              rsi, [rsp + 208]                               # other
                        lea              rdx, [rsp + 160]                               # out
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n29_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n29_cmp_test_α:
                        lea              rdi, [rsp + 176]                               # a
                        lea              rsi, [rsp + 160]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n33_save_restore_α
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 224], rax                     # result
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n31_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_α:
                        mov              rdi, qword ptr [rsp + 144]                     # a
                        mov              rsi, qword ptr [rsp + 152]                     # a
                        mov              rdx, qword ptr [rsp + 224]                     # b
                        mov              rcx, qword ptr [rsp + 232]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n32_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n33_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n33_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__min_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__min_β:
                                                                                        jmp   proc_LBL__min_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__min_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__min_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__abs_α
proc_LBL__abs_α:
proc_LBL__abs_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n48_goto_α:
                        sub              rsp, 368
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
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                                                                                        jmp   n49_var_α
n48_goto_β:
                                                                                        jmp   proc_LBL__abs_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        mov              rax, qword ptr [1879052336]                    # abs
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 320], rax                     # result
                        mov              qword ptr [rsp + 328], rdx
                                                                                        jmp   n50_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        mov              qword ptr [rsp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n51_coerce_numeric_α
.Lx61_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n51_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 5
                                                                                        je    .Lx63_1
                        cmp              eax, 3
                                                                                        jne   .Lx63_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 3
                                                                                        jne   .Lx63_0
.Lx63_1:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n52_coerce_numeric_α
.Lx63_0:
                        lea              rdi, [rsp + 320]                               # self
                        lea              rsi, [rsp + 304]                               # other
                        lea              rdx, [rsp + 288]                               # out
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n52_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n52_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 5
                                                                                        je    .Lx65_1
                        cmp              eax, 3
                                                                                        jne   .Lx65_0
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 3
                                                                                        jne   .Lx65_0
.Lx65_1:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n53_cmp_test_α
.Lx65_0:
                        lea              rdi, [rsp + 304]                               # self
                        lea              rsi, [rsp + 320]                               # other
                        lea              rdx, [rsp + 272]                               # out
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n53_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n53_cmp_test_α:
                        lea              rdi, [rsp + 288]                               # a
                        lea              rsi, [rsp + 272]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n58_save_restore_α
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        mov              rax, qword ptr [1879052336]                    # abs
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 352], rax                     # result
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n55_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n55_unop_α:
                        mov              rdi, qword ptr [rsp + 352]                     # a
                        mov              rsi, qword ptr [rsp + 360]                     # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                                                                                        jmp   n56_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:
                        mov              rdi, qword ptr [rsp + 256]                     # a
                        mov              rsi, qword ptr [rsp + 264]                     # a
                        mov              rdx, qword ptr [rsp + 336]                     # b
                        mov              rcx, qword ptr [rsp + 344]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                                                                                        jmp   n57_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [1879052336], rax                    # abs
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n58_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n58_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__abs_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__abs_β:
                                                                                        jmp   proc_LBL__abs_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__abs_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__abs_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__sign_α
proc_LBL__sign_α:
proc_LBL__sign_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n74_goto_α:
                        sub              rsp, 496
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
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                                                                                        jmp   n75_var_α
n74_goto_β:
                                                                                        jmp   proc_LBL__sign_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 448], rax                     # result
                        mov              qword ptr [rsp + 456], rdx
                                                                                        jmp   n76_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        mov              qword ptr [rsp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n77_coerce_numeric_α
.Lx95_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n77_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 5
                                                                                        je    .Lx97_1
                        cmp              eax, 3
                                                                                        jne   .Lx97_0
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 3
                                                                                        jne   .Lx97_0
.Lx97_1:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n78_coerce_numeric_α
.Lx97_0:
                        lea              rdi, [rsp + 448]                               # self
                        lea              rsi, [rsp + 432]                               # other
                        lea              rdx, [rsp + 416]                               # out
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n78_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n78_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 5
                                                                                        je    .Lx99_1
                        cmp              eax, 3
                                                                                        jne   .Lx99_0
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 3
                                                                                        jne   .Lx99_0
.Lx99_1:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n79_cmp_test_α
.Lx99_0:
                        lea              rdi, [rsp + 432]                               # self
                        lea              rsi, [rsp + 448]                               # other
                        lea              rdx, [rsp + 400]                               # out
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n79_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n79_cmp_test_α:
                        lea              rdi, [rsp + 416]                               # a
                        lea              rsi, [rsp + 400]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx101_240
                        add              rsp, 496
                                                                                        jmp   n84_var_α
.Lx101_240:
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                                                                                        jmp   n80_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:
                        mov              qword ptr [rsp + 480], 3                       # result
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n81_unop_α
.Lx102_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n81_unop_α:
                        mov              rdi, qword ptr [rsp + 480]                     # a
                        mov              rsi, qword ptr [rsp + 488]                     # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                                                                                        jmp   n82_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n82_binop_α:
                        mov              rdi, qword ptr [rsp + 384]                     # a
                        mov              rsi, qword ptr [rsp + 392]                     # a
                        mov              rdx, qword ptr [rsp + 464]                     # b
                        mov              rcx, qword ptr [rsp + 472]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n83_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [1879052352], rax                    # sign
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n92_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 592], rax                     # result
                        mov              qword ptr [rsp + 600], rdx
                                                                                        jmp   n85_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        mov              qword ptr [rsp + 576], 3                       # result
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n86_coerce_numeric_α
.Lx107_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n86_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 5
                                                                                        je    .Lx109_1
                        cmp              eax, 3
                                                                                        jne   .Lx109_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 3
                                                                                        jne   .Lx109_0
.Lx109_1:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n87_coerce_numeric_α
.Lx109_0:
                        lea              rdi, [rsp + 592]                               # self
                        lea              rsi, [rsp + 576]                               # other
                        lea              rdx, [rsp + 560]                               # out
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n87_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n87_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 5
                                                                                        je    .Lx111_1
                        cmp              eax, 3
                                                                                        jne   .Lx111_0
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 3
                                                                                        jne   .Lx111_0
.Lx111_1:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n88_cmp_test_α
.Lx111_0:
                        lea              rdi, [rsp + 576]                               # self
                        lea              rsi, [rsp + 592]                               # other
                        lea              rdx, [rsp + 544]                               # out
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n88_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n88_cmp_test_α:
                        lea              rdi, [rsp + 560]                               # a
                        lea              rsi, [rsp + 544]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n92_save_restore_α
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                                                                                        jmp   n89_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:
                        mov              qword ptr [rsp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n90_binop_α
.Lx114_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n90_binop_α:
                        mov              rdi, qword ptr [rsp + 528]                     # a
                        mov              rsi, qword ptr [rsp + 536]                     # a
                        mov              rdx, qword ptr [rsp + 608]                     # b
                        mov              rcx, qword ptr [rsp + 616]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                                                                                        jmp   n91_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [1879052352], rax                    # sign
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n92_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n92_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__sign_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__sign_β:
                                                                                        jmp   proc_LBL__sign_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__sign_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__sign_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__gcd_α
proc_LBL__gcd_α:
proc_LBL__gcd_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n119_goto_α:
                        sub              rsp, 832
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
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                                                                                        jmp   n120_var_α
n119_goto_β:
                                                                                        jmp   proc_LBL__gcd_ω
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 672], rax                     # result
                        mov              qword ptr [rsp + 680], rdx
                                                                                        jmp   n121_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:
                        mov              qword ptr [rsp + 688], 3                       # result
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 696], rax
                                                                                        jmp   n122_call_α
.Lx134_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n122_call_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn136:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn136]                         # fn
                        lea              rsi, [rsp + 624]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx135_240
                        add              rsp, 832
                                                                                        jmp   n131_save_restore_α
.Lx135_240:
                                                                                        jmp   n123_var_α
n122_call_β:
                        add              rsp, 832
                                                                                        jmp   n131_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        mov              rax, qword ptr [1879052368]                    # gcd
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 768], rax                     # result
                        mov              qword ptr [rsp + 776], rdx
                                                                                        jmp   n124_var_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 784], rax                     # result
                        mov              qword ptr [rsp + 792], rdx
                                                                                        jmp   n125_call_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn140:              .string          "REMDR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn140]                         # fn
                        lea              rsi, [rsp + 720]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              eax, 104
                                                                                        je    n127_var_α
                                                                                        jmp   n126_assign_α
n125_call_β:
                                                                                        jmp   n127_var_α
#-----------------------------------------------------------------------------------------------------------------------
n126_assign_α:
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n127_var_α
#-----------------------------------------------------------------------------------------------------------------------
n127_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 800], rax                     # result
                        mov              qword ptr [rsp + 808], rdx
                                                                                        jmp   n128_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_α:
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n129_var_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 816], rax                     # result
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n130_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n120_var_α
#-----------------------------------------------------------------------------------------------------------------------
n131_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__gcd_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__gcd_β:
                                                                                        jmp   proc_LBL__gcd_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__gcd_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__gcd_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__lcm_α
proc_LBL__lcm_α:
proc_LBL__lcm_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n148_goto_α:
                        sub              rsp, 1008
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
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                                                                                        jmp   n149_var_α
n148_goto_β:
                                                                                        jmp   proc_LBL__lcm_ω
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:
                        mov              rax, qword ptr [1879052432]                    # a
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 896], rax                     # result
                        mov              qword ptr [rsp + 904], rdx
                                                                                        jmp   n150_var_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 912], rax                     # result
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n151_call_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052368]                    # gcd
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx164_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx164_5
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx164_6]
                        lea              rdx, [rip + .Lx164_7]
                                                                                        jmp   rax
.Lx164_6:
                        mov              rdi, qword ptr [1879052368]                    # gcd
                        mov              rsi, qword ptr [1879052376]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx164_2
.Lx164_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx164_2
.Lx164_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx164_20
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx164_21
.Lx164_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 896]                     # v
                        mov              rdx, qword ptr [rsp + 904]                     # v
                        call             rt_arg_stage@PLT
.Lx164_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx164_22
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx164_23
.Lx164_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 912]                     # v
                        mov              rdx, qword ptr [rsp + 920]                     # v
                        call             rt_arg_stage@PLT
.Lx164_23:
                        mov              rdi, qword ptr [rip + .Lx164_0]                # name
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx164_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx164_3]
                        lea              rdx, [rip + .Lx164_4]
                                                                                        jmp   rax
.Lx164_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx164_2
.Lx164_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx164_2
.Lx164_1:
                        call             rt_faildescr@PLT
.Lx164_2:
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              eax, 104
                                                                                        je    n153_var_α
                                                                                        jmp   n152_assign_α
n151_call_β:
                                                                                        jmp   n153_var_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "gcd"
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [1879052448], rax                    # g
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n153_var_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:
                        mov              rax, qword ptr [1879052432]                    # a
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 960], rax                     # result
                        mov              qword ptr [rsp + 968], rdx
                                                                                        jmp   n154_var_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:
                        mov              rax, qword ptr [1879052448]                    # g
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 976], rax                     # result
                        mov              qword ptr [rsp + 984], rdx
                                                                                        jmp   n155_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n155_binop_α:
                        mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdx, qword ptr [rsp + 976]
                        mov              rcx, qword ptr [rsp + 984]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx168_240
                        add              rsp, 32
                                                                                        jmp   n159_save_restore_α
.Lx168_240:
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                                                                                        jmp   n156_var_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 992], rax                     # result
                        mov              qword ptr [rsp + 1000], rdx
                                                                                        jmp   n157_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n157_binop_α:
                        mov              eax, dword ptr [rsp + 944]
                        cmp              eax, 3
                                                                                        jne   .Lx170_0
                        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 3
                                                                                        jne   .Lx170_0
                        mov              rax, qword ptr [rsp + 952]
                        mov              rcx, qword ptr [rsp + 1000]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 928], 3
                        mov              qword ptr [rsp + 936], rax
                                                                                        jmp   n158_assign_α
.Lx170_0:
                        mov              rdi, qword ptr [rsp + 944]
                        mov              rsi, qword ptr [rsp + 952]
                        mov              rdx, qword ptr [rsp + 992]
                        mov              rcx, qword ptr [rsp + 1000]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx170_240
                        add              rsp, 32
                                                                                        jmp   n159_save_restore_α
.Lx170_240:
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                                                                                        jmp   n158_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [1879052416], rax                    # lcm
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n159_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n159_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lcm_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lcm_β:
                                                                                        jmp   proc_LBL__lcm_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lcm_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__lcm_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_max_α
proc_max_α:
proc_max_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n174_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n175_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n175_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx179_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx179_1
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "max"
.Lx179_1:
                                                                                        jmp   proc_max_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_max_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_max_β:
                                                                                        jmp   proc_max_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_max_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_max_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_min_α
proc_min_α:
proc_min_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n180_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n181_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n181_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx185_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx185_1
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "min"
.Lx185_1:
                                                                                        jmp   proc_min_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_min_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_min_β:
                                                                                        jmp   proc_min_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_min_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_min_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_abs_α
proc_abs_α:
proc_abs_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n186_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n187_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n187_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx191_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx191_1
.Lx191_0:
                        .quad            .Lx191_0_s
.Lx191_0_s:
                        .string          "abs"
.Lx191_1:
                                                                                        jmp   proc_abs_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_abs_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_abs_β:
                                                                                        jmp   proc_abs_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_abs_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_abs_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_sign_α
proc_sign_α:
proc_sign_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n192_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n193_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n193_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx197_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx197_1
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "sign"
.Lx197_1:
                                                                                        jmp   proc_sign_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_sign_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_sign_β:
                                                                                        jmp   proc_sign_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_sign_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_sign_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gcd_α
proc_gcd_α:
proc_gcd_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n198_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n199_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n199_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx203_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx203_1
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "gcd"
.Lx203_1:
                                                                                        jmp   proc_gcd_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_gcd_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_gcd_β:
                                                                                        jmp   proc_gcd_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_gcd_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_gcd_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lcm_α
proc_lcm_α:
proc_lcm_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n204_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n205_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n205_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx209_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx209_1
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "lcm"
.Lx209_1:
                                                                                        jmp   proc_lcm_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_lcm_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_lcm_β:
                                                                                        jmp   proc_lcm_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_lcm_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_lcm_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__max"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__max_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2080
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__min"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__min_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2080
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "LBL__abs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_LBL__abs_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2080
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "LBL__sign"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_LBL__sign_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2080
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "LBL__gcd"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_LBL__gcd_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2080
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "LBL__lcm"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_LBL__lcm_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 2080
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "max"
.Lstartup_pp6_0:        .string          "max"
.Lstartup_pp6_1:        .string          "x"
                        .align           8
.Lstartup_pnames6:
                        .quad            .Lstartup_pp6_0
                        .quad            .Lstartup_pp6_1
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + .Lstartup_pnames6]
                        mov              edx, 2
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_max_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 2
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "min"
.Lstartup_pp7_0:        .string          "min"
.Lstartup_pp7_1:        .string          "x"
                        .align           8
.Lstartup_pnames7:
                        .quad            .Lstartup_pp7_0
                        .quad            .Lstartup_pp7_1
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + .Lstartup_pnames7]
                        mov              edx, 2
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_min_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 2
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "abs"
.Lstartup_pp8_0:        .string          "abs"
                        .align           8
.Lstartup_pnames8:
                        .quad            .Lstartup_pp8_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + .Lstartup_pnames8]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_abs_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "sign"
.Lstartup_pp9_0:        .string          "sign"
                        .align           8
.Lstartup_pnames9:
                        .quad            .Lstartup_pp9_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + .Lstartup_pnames9]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_sign_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "gcd"
.Lstartup_pp10_0:       .string          "gcd"
.Lstartup_pp10_1:       .string          "b"
.Lstartup_pp10_2:       .string          "r"
                        .align           8
.Lstartup_pnames10:
                        .quad            .Lstartup_pp10_0
                        .quad            .Lstartup_pp10_1
                        .quad            .Lstartup_pp10_2
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + .Lstartup_pnames10]
                        mov              edx, 3
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_gcd_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 2
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "lcm"
.Lstartup_pp11_0:       .string          "a"
.Lstartup_pp11_1:       .string          "b"
.Lstartup_pp11_2:       .string          "g"
                        .align           8
.Lstartup_pnames11:
                        .quad            .Lstartup_pp11_0
                        .quad            .Lstartup_pp11_1
                        .quad            .Lstartup_pp11_2
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + .Lstartup_pnames11]
                        mov              edx, 3
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_lcm_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 2
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "max"
.Lgvan1:                .string          "x"
.Lgvan2:                .string          "min"
.Lgvan3:                .string          "abs"
.Lgvan4:                .string          "sign"
.Lgvan5:                .string          "gcd"
.Lgvan6:                .string          "b"
.Lgvan7:                .string          "r"
.Lgvan8:                .string          "lcm"
.Lgvan9:                .string          "a"
.Lgvan10:               .string          "g"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .quad            .Lgvan10
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 11
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 11
                        call             gva_register@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:
                        sub              rsp, 2064
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
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 1072], 2                      # result
                        mov              dword ptr [rsp + 1076], 4
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 1080], rax
                                                                                        jmp   n211_lit_integer_α
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_integer_α:
                        mov              qword ptr [rsp + 1088], 3                      # result
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rsp + 1096], rax
                                                                                        jmp   n212_call_α
.Lx332_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n212_call_α:
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1048], rax
                        .section         .rodata
.Lrkfn334:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn334]                         # fn
                        lea              rsi, [rsp + 1024]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              eax, 104
                                                                                        je    n213_lit_integer_α
                                                                                        jmp   n213_lit_integer_α
n212_call_β:
                                                                                        jmp   n213_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_integer_α:
                        mov              qword ptr [rsp + 1168], 3                      # result
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rsp + 1176], rax
                                                                                        jmp   n214_lit_integer_α
.Lx335_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_integer_α:
                        mov              qword ptr [rsp + 1184], 3                      # result
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 1192], rax
                                                                                        jmp   n215_call_α
.Lx336_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n215_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052288]                    # max
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx338_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx338_5
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx338_6]
                        lea              rdx, [rip + .Lx338_7]
                                                                                        jmp   rax
.Lx338_6:
                        mov              rdi, qword ptr [1879052288]                    # max
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx338_2
.Lx338_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx338_2
.Lx338_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx338_20
                        mov              rax, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx338_21
.Lx338_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1168]                    # v
                        mov              rdx, qword ptr [rsp + 1176]                    # v
                        call             rt_arg_stage@PLT
.Lx338_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx338_22
                        mov              rax, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx338_23
.Lx338_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 1184]                    # v
                        mov              rdx, qword ptr [rsp + 1192]                    # v
                        call             rt_arg_stage@PLT
.Lx338_23:
                        mov              rdi, qword ptr [rip + .Lx338_0]                # name
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx338_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx338_3]
                        lea              rdx, [rip + .Lx338_4]
                                                                                        jmp   rax
.Lx338_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx338_2
.Lx338_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx338_2
.Lx338_1:
                        call             rt_faildescr@PLT
.Lx338_2:
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              eax, 104
                                                                                        je    n217_lit_integer_α
                                                                                        jmp   n216_assign_α
n215_call_β:
                                                                                        jmp   n217_lit_integer_α
.Lx338_0:
                        .quad            .Lx338_0_s
.Lx338_0_s:
                        .string          "max"
#-----------------------------------------------------------------------------------------------------------------------
n216_assign_α:
                        mov              rsi, qword ptr [rsp + 1104]                    # val
                        mov              rdx, qword ptr [rsp + 1112]                    # val
                        mov              rdi, qword ptr [rip + .Lx339_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n217_lit_integer_α
.Lx339_0:
                        .quad            .Lx339_0_s
.Lx339_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_integer_α:
                        mov              qword ptr [rsp + 1264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rsp + 1272], rax
                                                                                        jmp   n218_lit_integer_α
.Lx340_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_integer_α:
                        mov              qword ptr [rsp + 1280], 3                      # result
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 1288], rax
                                                                                        jmp   n219_call_α
.Lx341_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n219_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # min
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx343_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx343_5
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx343_6]
                        lea              rdx, [rip + .Lx343_7]
                                                                                        jmp   rax
.Lx343_6:
                        mov              rdi, qword ptr [1879052320]                    # min
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx343_2
.Lx343_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx343_2
.Lx343_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx343_20
                        mov              rax, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx343_21
.Lx343_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1264]                    # v
                        mov              rdx, qword ptr [rsp + 1272]                    # v
                        call             rt_arg_stage@PLT
.Lx343_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx343_22
                        mov              rax, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx343_23
.Lx343_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 1280]                    # v
                        mov              rdx, qword ptr [rsp + 1288]                    # v
                        call             rt_arg_stage@PLT
.Lx343_23:
                        mov              rdi, qword ptr [rip + .Lx343_0]                # name
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx343_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx343_3]
                        lea              rdx, [rip + .Lx343_4]
                                                                                        jmp   rax
.Lx343_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx343_2
.Lx343_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx343_2
.Lx343_1:
                        call             rt_faildescr@PLT
.Lx343_2:
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              eax, 104
                                                                                        je    n221_lit_real_α
                                                                                        jmp   n220_assign_α
n219_call_β:
                                                                                        jmp   n221_lit_real_α
.Lx343_0:
                        .quad            .Lx343_0_s
.Lx343_0_s:
                        .string          "min"
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:
                        mov              rsi, qword ptr [rsp + 1200]                    # val
                        mov              rdx, qword ptr [rsp + 1208]                    # val
                        mov              rdi, qword ptr [rip + .Lx344_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n221_lit_real_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_real_α:
                        mov              qword ptr [rsp + 1360], 5                      # result
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 1368], rax
                                                                                        jmp   n222_lit_real_α
.Lx345_0:
                        .quad            4615063718147915776
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_real_α:
                        mov              qword ptr [rsp + 1376], 5                      # result
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rsp + 1384], rax
                                                                                        jmp   n223_call_α
.Lx346_0:
                        .quad            4611911198408756429
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052288]                    # max
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx348_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx348_5
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx348_6]
                        lea              rdx, [rip + .Lx348_7]
                                                                                        jmp   rax
.Lx348_6:
                        mov              rdi, qword ptr [1879052288]                    # max
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx348_2
.Lx348_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052296], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx348_2
.Lx348_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx348_20
                        mov              rax, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx348_21
.Lx348_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1360]                    # v
                        mov              rdx, qword ptr [rsp + 1368]                    # v
                        call             rt_arg_stage@PLT
.Lx348_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx348_22
                        mov              rax, qword ptr [rsp + 1376]
                        mov              rdx, qword ptr [rsp + 1384]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx348_23
.Lx348_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 1376]                    # v
                        mov              rdx, qword ptr [rsp + 1384]                    # v
                        call             rt_arg_stage@PLT
.Lx348_23:
                        mov              rdi, qword ptr [rip + .Lx348_0]                # name
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx348_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx348_3]
                        lea              rdx, [rip + .Lx348_4]
                                                                                        jmp   rax
.Lx348_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx348_2
.Lx348_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx348_2
.Lx348_1:
                        call             rt_faildescr@PLT
.Lx348_2:
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              eax, 104
                                                                                        je    n225_lit_real_α
                                                                                        jmp   n224_assign_α
n223_call_β:
                                                                                        jmp   n225_lit_real_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "max"
#-----------------------------------------------------------------------------------------------------------------------
n224_assign_α:
                        mov              rsi, qword ptr [rsp + 1296]                    # val
                        mov              rdx, qword ptr [rsp + 1304]                    # val
                        mov              rdi, qword ptr [rip + .Lx349_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n225_lit_real_α
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_real_α:
                        mov              qword ptr [rsp + 1456], 5                      # result
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rsp + 1464], rax
                                                                                        jmp   n226_lit_real_α
.Lx350_0:
                        .quad            4615063718147915776
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_real_α:
                        mov              qword ptr [rsp + 1472], 5                      # result
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rsp + 1480], rax
                                                                                        jmp   n227_call_α
.Lx351_0:
                        .quad            4611911198408756429
#-----------------------------------------------------------------------------------------------------------------------
n227_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052320]                    # min
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx353_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx353_5
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx353_6]
                        lea              rdx, [rip + .Lx353_7]
                                                                                        jmp   rax
.Lx353_6:
                        mov              rdi, qword ptr [1879052320]                    # min
                        mov              rsi, qword ptr [1879052328]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx353_2
.Lx353_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052304], rax                    # x
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052312], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052328], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx353_2
.Lx353_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx353_20
                        mov              rax, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx353_21
.Lx353_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1456]                    # v
                        mov              rdx, qword ptr [rsp + 1464]                    # v
                        call             rt_arg_stage@PLT
.Lx353_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx353_22
                        mov              rax, qword ptr [rsp + 1472]
                        mov              rdx, qword ptr [rsp + 1480]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx353_23
.Lx353_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 1472]                    # v
                        mov              rdx, qword ptr [rsp + 1480]                    # v
                        call             rt_arg_stage@PLT
.Lx353_23:
                        mov              rdi, qword ptr [rip + .Lx353_0]                # name
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx353_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx353_3]
                        lea              rdx, [rip + .Lx353_4]
                                                                                        jmp   rax
.Lx353_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx353_2
.Lx353_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx353_2
.Lx353_1:
                        call             rt_faildescr@PLT
.Lx353_2:
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              eax, 104
                                                                                        je    n229_lit_integer_α
                                                                                        jmp   n228_assign_α
n227_call_β:
                                                                                        jmp   n229_lit_integer_α
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          "min"
#-----------------------------------------------------------------------------------------------------------------------
n228_assign_α:
                        mov              rsi, qword ptr [rsp + 1392]                    # val
                        mov              rdx, qword ptr [rsp + 1400]                    # val
                        mov              rdi, qword ptr [rip + .Lx354_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n229_lit_integer_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_integer_α:
                        mov              qword ptr [rsp + 1552], 3                      # result
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rsp + 1560], rax
                                                                                        jmp   n230_unop_α
.Lx355_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n230_unop_α:
                        mov              rdi, qword ptr [rsp + 1552]                    # a
                        mov              rsi, qword ptr [rsp + 1560]                    # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                                                                                        jmp   n231_call_α
#-----------------------------------------------------------------------------------------------------------------------
n231_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # abs
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx358_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx358_5
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [1879052344], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx358_6]
                        lea              rdx, [rip + .Lx358_7]
                                                                                        jmp   rax
.Lx358_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx358_2
.Lx358_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052344], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx358_2
.Lx358_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx358_20
                        mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx358_21
.Lx358_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1536]                    # v
                        mov              rdx, qword ptr [rsp + 1544]                    # v
                        call             rt_arg_stage@PLT
.Lx358_21:
                        mov              rdi, qword ptr [rip + .Lx358_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx358_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx358_3]
                        lea              rdx, [rip + .Lx358_4]
                                                                                        jmp   rax
.Lx358_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx358_2
.Lx358_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx358_2
.Lx358_1:
                        call             rt_faildescr@PLT
.Lx358_2:
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        cmp              eax, 104
                                                                                        je    n233_lit_integer_α
                                                                                        jmp   n232_assign_α
n231_call_β:
                                                                                        jmp   n233_lit_integer_α
.Lx358_0:
                        .quad            .Lx358_0_s
.Lx358_0_s:
                        .string          "abs"
#-----------------------------------------------------------------------------------------------------------------------
n232_assign_α:
                        mov              rsi, qword ptr [rsp + 1488]                    # val
                        mov              rdx, qword ptr [rsp + 1496]                    # val
                        mov              rdi, qword ptr [rip + .Lx359_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n233_lit_integer_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_integer_α:
                        mov              qword ptr [rsp + 1616], 3                      # result
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rsp + 1624], rax
                                                                                        jmp   n234_call_α
.Lx360_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n234_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx362_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx362_5
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx362_6]
                        lea              rdx, [rip + .Lx362_7]
                                                                                        jmp   rax
.Lx362_6:
                        mov              rdi, qword ptr [1879052352]
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx362_2
.Lx362_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx362_2
.Lx362_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx362_20
                        mov              rax, qword ptr [rsp + 1616]
                        mov              rdx, qword ptr [rsp + 1624]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx362_21
.Lx362_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1616]                    # v
                        mov              rdx, qword ptr [rsp + 1624]                    # v
                        call             rt_arg_stage@PLT
.Lx362_21:
                        mov              rdi, qword ptr [rip + .Lx362_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx362_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx362_3]
                        lea              rdx, [rip + .Lx362_4]
                                                                                        jmp   rax
.Lx362_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx362_2
.Lx362_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx362_2
.Lx362_1:
                        call             rt_faildescr@PLT
.Lx362_2:
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              eax, 104
                                                                                        je    n236_lit_integer_α
                                                                                        jmp   n235_assign_α
n234_call_β:
                                                                                        jmp   n236_lit_integer_α
.Lx362_0:
                        .quad            .Lx362_0_s
.Lx362_0_s:
                        .string          "sign"
#-----------------------------------------------------------------------------------------------------------------------
n235_assign_α:
                        mov              rsi, qword ptr [rsp + 1568]                    # val
                        mov              rdx, qword ptr [rsp + 1576]                    # val
                        mov              rdi, qword ptr [rip + .Lx363_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n236_lit_integer_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:
                        mov              qword ptr [rsp + 1680], 3                      # result
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 1688], rax
                                                                                        jmp   n237_call_α
.Lx364_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n237_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx366_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx366_5
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx366_6]
                        lea              rdx, [rip + .Lx366_7]
                                                                                        jmp   rax
.Lx366_6:
                        mov              rdi, qword ptr [1879052352]
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx366_2
.Lx366_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx366_2
.Lx366_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx366_20
                        mov              rax, qword ptr [rsp + 1680]
                        mov              rdx, qword ptr [rsp + 1688]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx366_21
.Lx366_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1680]                    # v
                        mov              rdx, qword ptr [rsp + 1688]                    # v
                        call             rt_arg_stage@PLT
.Lx366_21:
                        mov              rdi, qword ptr [rip + .Lx366_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx366_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx366_3]
                        lea              rdx, [rip + .Lx366_4]
                                                                                        jmp   rax
.Lx366_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx366_2
.Lx366_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx366_2
.Lx366_1:
                        call             rt_faildescr@PLT
.Lx366_2:
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              eax, 104
                                                                                        je    n239_lit_integer_α
                                                                                        jmp   n238_assign_α
n237_call_β:
                                                                                        jmp   n239_lit_integer_α
.Lx366_0:
                        .quad            .Lx366_0_s
.Lx366_0_s:
                        .string          "sign"
#-----------------------------------------------------------------------------------------------------------------------
n238_assign_α:
                        mov              rsi, qword ptr [rsp + 1632]                    # val
                        mov              rdx, qword ptr [rsp + 1640]                    # val
                        mov              rdi, qword ptr [rip + .Lx367_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n239_lit_integer_α
.Lx367_0:
                        .quad            .Lx367_0_s
.Lx367_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_integer_α:
                        mov              qword ptr [rsp + 1760], 3                      # result
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rsp + 1768], rax
                                                                                        jmp   n240_unop_α
.Lx368_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n240_unop_α:
                        mov              rdi, qword ptr [rsp + 1760]                    # a
                        mov              rsi, qword ptr [rsp + 1768]                    # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                                                                                        jmp   n241_call_α
#-----------------------------------------------------------------------------------------------------------------------
n241_call_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, qword ptr [rip + .Lx371_0]                # name
                        mov              esi, 1                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx371_5
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [1879052360], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx371_6]
                        lea              rdx, [rip + .Lx371_7]
                                                                                        jmp   rax
.Lx371_6:
                        mov              rdi, qword ptr [1879052352]
                        mov              rsi, qword ptr [1879052360]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx371_2
.Lx371_7:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 16
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx371_2
.Lx371_5:
                        add              rsp, 16
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx371_20
                        mov              rax, qword ptr [rsp + 1744]
                        mov              rdx, qword ptr [rsp + 1752]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx371_21
.Lx371_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1744]                    # v
                        mov              rdx, qword ptr [rsp + 1752]                    # v
                        call             rt_arg_stage@PLT
.Lx371_21:
                        mov              rdi, qword ptr [rip + .Lx371_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx371_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx371_3]
                        lea              rdx, [rip + .Lx371_4]
                                                                                        jmp   rax
.Lx371_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx371_2
.Lx371_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx371_2
.Lx371_1:
                        call             rt_faildescr@PLT
.Lx371_2:
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              eax, 104
                                                                                        je    n243_lit_integer_α
                                                                                        jmp   n242_assign_α
n241_call_β:
                                                                                        jmp   n243_lit_integer_α
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "sign"
#-----------------------------------------------------------------------------------------------------------------------
n242_assign_α:
                        mov              rsi, qword ptr [rsp + 1696]                    # val
                        mov              rdx, qword ptr [rsp + 1704]                    # val
                        mov              rdi, qword ptr [rip + .Lx372_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n243_lit_integer_α
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_integer_α:
                        mov              qword ptr [rsp + 1840], 3                      # result
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 1848], rax
                                                                                        jmp   n244_lit_integer_α
.Lx373_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:
                        mov              qword ptr [rsp + 1856], 3                      # result
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 1864], rax
                                                                                        jmp   n245_call_α
.Lx374_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n245_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052368]                    # gcd
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx376_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx376_5
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx376_6]
                        lea              rdx, [rip + .Lx376_7]
                                                                                        jmp   rax
.Lx376_6:
                        mov              rdi, qword ptr [1879052368]                    # gcd
                        mov              rsi, qword ptr [1879052376]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx376_2
.Lx376_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx376_2
.Lx376_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx376_20
                        mov              rax, qword ptr [rsp + 1840]
                        mov              rdx, qword ptr [rsp + 1848]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx376_21
.Lx376_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1840]                    # v
                        mov              rdx, qword ptr [rsp + 1848]                    # v
                        call             rt_arg_stage@PLT
.Lx376_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx376_22
                        mov              rax, qword ptr [rsp + 1856]
                        mov              rdx, qword ptr [rsp + 1864]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx376_23
.Lx376_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 1856]                    # v
                        mov              rdx, qword ptr [rsp + 1864]                    # v
                        call             rt_arg_stage@PLT
.Lx376_23:
                        mov              rdi, qword ptr [rip + .Lx376_0]                # name
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx376_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx376_3]
                        lea              rdx, [rip + .Lx376_4]
                                                                                        jmp   rax
.Lx376_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx376_2
.Lx376_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx376_2
.Lx376_1:
                        call             rt_faildescr@PLT
.Lx376_2:
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        cmp              eax, 104
                                                                                        je    n247_lit_integer_α
                                                                                        jmp   n246_assign_α
n245_call_β:
                                                                                        jmp   n247_lit_integer_α
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          "gcd"
#-----------------------------------------------------------------------------------------------------------------------
n246_assign_α:
                        mov              rsi, qword ptr [rsp + 1776]                    # val
                        mov              rdx, qword ptr [rsp + 1784]                    # val
                        mov              rdi, qword ptr [rip + .Lx377_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n247_lit_integer_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_integer_α:
                        mov              qword ptr [rsp + 1936], 3                      # result
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rsp + 1944], rax
                                                                                        jmp   n248_lit_integer_α
.Lx378_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:
                        mov              qword ptr [rsp + 1952], 3                      # result
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 1960], rax
                                                                                        jmp   n249_call_α
.Lx379_0:
                        .quad            75
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052368]                    # gcd
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx381_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx381_5
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx381_6]
                        lea              rdx, [rip + .Lx381_7]
                                                                                        jmp   rax
.Lx381_6:
                        mov              rdi, qword ptr [1879052368]                    # gcd
                        mov              rsi, qword ptr [1879052376]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx381_2
.Lx381_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx381_2
.Lx381_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx381_20
                        mov              rax, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx381_21
.Lx381_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1936]                    # v
                        mov              rdx, qword ptr [rsp + 1944]                    # v
                        call             rt_arg_stage@PLT
.Lx381_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx381_22
                        mov              rax, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx381_23
.Lx381_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 1952]                    # v
                        mov              rdx, qword ptr [rsp + 1960]                    # v
                        call             rt_arg_stage@PLT
.Lx381_23:
                        mov              rdi, qword ptr [rip + .Lx381_0]                # name
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx381_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx381_3]
                        lea              rdx, [rip + .Lx381_4]
                                                                                        jmp   rax
.Lx381_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx381_2
.Lx381_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx381_2
.Lx381_1:
                        call             rt_faildescr@PLT
.Lx381_2:
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              eax, 104
                                                                                        je    n251_lit_integer_α
                                                                                        jmp   n250_assign_α
n249_call_β:
                                                                                        jmp   n251_lit_integer_α
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "gcd"
#-----------------------------------------------------------------------------------------------------------------------
n250_assign_α:
                        mov              rsi, qword ptr [rsp + 1872]                    # val
                        mov              rdx, qword ptr [rsp + 1880]                    # val
                        mov              rdi, qword ptr [rip + .Lx382_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n251_lit_integer_α
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_integer_α:
                        mov              qword ptr [rsp + 2032], 3                      # result
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 2040], rax
                                                                                        jmp   n252_lit_integer_α
.Lx383_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_integer_α:
                        mov              qword ptr [rsp + 2048], 3                      # result
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rsp + 2056], rax
                                                                                        jmp   n253_call_α
.Lx384_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n253_call_α:
                        sub              rsp, 64
                        mov              rax, qword ptr [1879052432]                    # a
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052440]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052448]                    # g
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052456]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [1879052416]                    # lcm
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [1879052424]
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rip + .Lx386_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx386_5
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [1879052432], rax                    # a
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [1879052440], rax
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx386_6]
                        lea              rdx, [rip + .Lx386_7]
                                                                                        jmp   rax
.Lx386_6:
                        mov              rdi, qword ptr [1879052416]                    # lcm
                        mov              rsi, qword ptr [1879052424]
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052416], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052424], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052448], rax                    # g
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052456], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052432], rax                    # a
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052440], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx386_2
.Lx386_7:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [1879052416], rax                    # lcm
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [1879052424], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052448], rax                    # g
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052456], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052432], rax                    # a
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052440], rax
                        add              rsp, 64
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx386_2
.Lx386_5:
                        add              rsp, 64
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx386_20
                        mov              rax, qword ptr [rsp + 2032]
                        mov              rdx, qword ptr [rsp + 2040]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx386_21
.Lx386_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 2032]                    # v
                        mov              rdx, qword ptr [rsp + 2040]                    # v
                        call             rt_arg_stage@PLT
.Lx386_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx386_22
                        mov              rax, qword ptr [rsp + 2048]
                        mov              rdx, qword ptr [rsp + 2056]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx386_23
.Lx386_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 2048]                    # v
                        mov              rdx, qword ptr [rsp + 2056]                    # v
                        call             rt_arg_stage@PLT
.Lx386_23:
                        mov              rdi, qword ptr [rip + .Lx386_0]                # name
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx386_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx386_3]
                        lea              rdx, [rip + .Lx386_4]
                                                                                        jmp   rax
.Lx386_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx386_2
.Lx386_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx386_2
.Lx386_1:
                        call             rt_faildescr@PLT
.Lx386_2:
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx386_240
                        add              rsp, 2064
                                                                                        jmp   main_γ
.Lx386_240:
                                                                                        jmp   n254_assign_α
n253_call_β:
                                                                                        jmp   main_γ
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          "lcm"
#-----------------------------------------------------------------------------------------------------------------------
n254_assign_α:
                        mov              rsi, qword ptr [rsp + 1968]                    # val
                        mov              rdx, qword ptr [rsp + 1976]                    # val
                        mov              rdi, qword ptr [rip + .Lx387_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 2064
                                                                                        jmp   main_γ
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n255_goto_α:
                                                                                        jmp   n256_var_α
n255_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:
                        mov              rax, qword ptr [1879052288]                    # max
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 112], rax                     # result
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n257_var_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 96], rax                      # result
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n258_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n258_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 5
                                                                                        je    .Lx392_1
                        cmp              eax, 3
                                                                                        jne   .Lx392_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx392_0
.Lx392_1:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n259_coerce_numeric_α
.Lx392_0:
                        lea              rdi, [rsp + 112]                               # self
                        lea              rsi, [rsp + 96]                                # other
                        lea              rdx, [rsp + 80]                                # out
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n259_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n259_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 5
                                                                                        je    .Lx394_1
                        cmp              eax, 3
                                                                                        jne   .Lx394_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 3
                                                                                        jne   .Lx394_0
.Lx394_1:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n260_cmp_test_α
.Lx394_0:
                        lea              rdi, [rsp + 96]                                # self
                        lea              rsi, [rsp + 112]                               # other
                        lea              rdx, [rsp + 64]                                # out
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n260_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n260_cmp_test_α:
                        lea              rdi, [rsp + 80]                                # a
                        lea              rsi, [rsp + 64]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n264_save_restore_α
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                                                                                        jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 128], rax                     # result
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n262_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n262_binop_α:
                        mov              rdi, qword ptr [rsp + 48]                      # a
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 128]                     # b
                        mov              rcx, qword ptr [rsp + 136]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                                                                                        jmp   n263_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n263_assign_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [1879052288], rax                    # max
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n264_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n264_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n265_goto_α:
                                                                                        jmp   n210_lit_string_α
n265_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n266_goto_α:
                                                                                        jmp   n267_var_α
n266_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:
                        mov              rax, qword ptr [1879052320]                    # min
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 224], rax                     # result
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n268_var_α
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 208], rax                     # result
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n269_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n269_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 5
                                                                                        je    .Lx407_1
                        cmp              eax, 3
                                                                                        jne   .Lx407_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx407_0
.Lx407_1:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n270_coerce_numeric_α
.Lx407_0:
                        lea              rdi, [rsp + 224]                               # self
                        lea              rsi, [rsp + 208]                               # other
                        lea              rdx, [rsp + 192]                               # out
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n270_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n270_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 5
                                                                                        je    .Lx409_1
                        cmp              eax, 3
                                                                                        jne   .Lx409_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx409_0
.Lx409_1:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n271_cmp_test_α
.Lx409_0:
                        lea              rdi, [rsp + 208]                               # self
                        lea              rsi, [rsp + 224]                               # other
                        lea              rdx, [rsp + 176]                               # out
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n271_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n271_cmp_test_α:
                        lea              rdi, [rsp + 192]                               # a
                        lea              rsi, [rsp + 176]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n264_save_restore_α
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                                                                                        jmp   n272_var_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:
                        mov              rax, qword ptr [1879052304]                    # x
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 240], rax                     # result
                        mov              qword ptr [rsp + 248], rdx
                                                                                        jmp   n273_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n273_binop_α:
                        mov              rdi, qword ptr [rsp + 160]                     # a
                        mov              rsi, qword ptr [rsp + 168]                     # a
                        mov              rdx, qword ptr [rsp + 240]                     # b
                        mov              rcx, qword ptr [rsp + 248]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n274_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n274_assign_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [1879052320], rax                    # min
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n264_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n275_goto_α:
                                                                                        jmp   n210_lit_string_α
n275_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n276_goto_α:
                                                                                        jmp   n277_var_α
n276_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:
                        mov              rax, qword ptr [1879052336]                    # abs
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 336], rax                     # result
                        mov              qword ptr [rsp + 344], rdx
                                                                                        jmp   n278_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:
                        mov              qword ptr [rsp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n279_coerce_numeric_α
.Lx418_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n279_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 5
                                                                                        je    .Lx420_1
                        cmp              eax, 3
                                                                                        jne   .Lx420_0
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 3
                                                                                        jne   .Lx420_0
.Lx420_1:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n280_coerce_numeric_α
.Lx420_0:
                        lea              rdi, [rsp + 336]                               # self
                        lea              rsi, [rsp + 320]                               # other
                        lea              rdx, [rsp + 304]                               # out
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n280_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n280_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 5
                                                                                        je    .Lx422_1
                        cmp              eax, 3
                                                                                        jne   .Lx422_0
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 3
                                                                                        jne   .Lx422_0
.Lx422_1:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n281_cmp_test_α
.Lx422_0:
                        lea              rdi, [rsp + 320]                               # self
                        lea              rsi, [rsp + 336]                               # other
                        lea              rdx, [rsp + 288]                               # out
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n281_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n281_cmp_test_α:
                        lea              rdi, [rsp + 304]                               # a
                        lea              rsi, [rsp + 288]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n264_save_restore_α
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                                                                                        jmp   n282_var_α
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:
                        mov              rax, qword ptr [1879052336]                    # abs
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 368], rax                     # result
                        mov              qword ptr [rsp + 376], rdx
                                                                                        jmp   n283_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n283_unop_α:
                        mov              rdi, qword ptr [rsp + 368]                     # a
                        mov              rsi, qword ptr [rsp + 376]                     # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                                                                                        jmp   n284_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n284_binop_α:
                        mov              rdi, qword ptr [rsp + 272]                     # a
                        mov              rsi, qword ptr [rsp + 280]                     # a
                        mov              rdx, qword ptr [rsp + 352]                     # b
                        mov              rcx, qword ptr [rsp + 360]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                                                                                        jmp   n285_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n285_assign_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [1879052336], rax                    # abs
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n264_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n286_goto_α:
                                                                                        jmp   n210_lit_string_α
n286_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n287_goto_α:
                                                                                        jmp   n288_var_α
n287_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 464], rax                     # result
                        mov              qword ptr [rsp + 472], rdx
                                                                                        jmp   n289_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_integer_α:
                        mov              qword ptr [rsp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n290_coerce_numeric_α
.Lx432_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n290_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 5
                                                                                        je    .Lx434_1
                        cmp              eax, 3
                                                                                        jne   .Lx434_0
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 3
                                                                                        jne   .Lx434_0
.Lx434_1:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n291_coerce_numeric_α
.Lx434_0:
                        lea              rdi, [rsp + 464]                               # self
                        lea              rsi, [rsp + 448]                               # other
                        lea              rdx, [rsp + 432]                               # out
                        mov              rcx, 147                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n291_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n291_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 5
                                                                                        je    .Lx436_1
                        cmp              eax, 3
                                                                                        jne   .Lx436_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 3
                                                                                        jne   .Lx436_0
.Lx436_1:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n292_cmp_test_α
.Lx436_0:
                        lea              rdi, [rsp + 448]                               # self
                        lea              rsi, [rsp + 464]                               # other
                        lea              rdx, [rsp + 416]                               # out
                        mov              rcx, 148                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n292_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n292_cmp_test_α:
                        lea              rdi, [rsp + 432]                               # a
                        lea              rsi, [rsp + 416]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n297_var_α
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                                                                                        jmp   n293_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_integer_α:
                        mov              qword ptr [rsp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n294_unop_α
.Lx439_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n294_unop_α:
                        mov              rdi, qword ptr [rsp + 496]                     # a
                        mov              rsi, qword ptr [rsp + 504]                     # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                                                                                        jmp   n295_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n295_binop_α:
                        mov              rdi, qword ptr [rsp + 400]                     # a
                        mov              rsi, qword ptr [rsp + 408]                     # a
                        mov              rdx, qword ptr [rsp + 480]                     # b
                        mov              rcx, qword ptr [rsp + 488]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                                                                                        jmp   n296_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n296_assign_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [1879052352], rax                    # sign
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n264_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n297_var_α:
                        mov              rax, qword ptr [1879052352]                    # sign
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 592], rax                     # result
                        mov              qword ptr [rsp + 600], rdx
                                                                                        jmp   n298_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_integer_α:
                        mov              qword ptr [rsp + 576], 3                       # result
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n299_coerce_numeric_α
.Lx444_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n299_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 5
                                                                                        je    .Lx446_1
                        cmp              eax, 3
                                                                                        jne   .Lx446_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 3
                                                                                        jne   .Lx446_0
.Lx446_1:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n300_coerce_numeric_α
.Lx446_0:
                        lea              rdi, [rsp + 592]                               # self
                        lea              rsi, [rsp + 576]                               # other
                        lea              rdx, [rsp + 560]                               # out
                        mov              rcx, 111                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n300_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n300_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 5
                                                                                        je    .Lx448_1
                        cmp              eax, 3
                                                                                        jne   .Lx448_0
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 3
                                                                                        jne   .Lx448_0
.Lx448_1:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n301_cmp_test_α
.Lx448_0:
                        lea              rdi, [rsp + 576]                               # self
                        lea              rsi, [rsp + 592]                               # other
                        lea              rdx, [rsp + 544]                               # out
                        mov              rcx, 112                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n301_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n301_cmp_test_α:
                        lea              rdi, [rsp + 560]                               # a
                        lea              rsi, [rsp + 544]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   n264_save_restore_α
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                                                                                        jmp   n302_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_integer_α:
                        mov              qword ptr [rsp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n303_binop_α
.Lx451_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n303_binop_α:
                        mov              rdi, qword ptr [rsp + 528]                     # a
                        mov              rsi, qword ptr [rsp + 536]                     # a
                        mov              rdx, qword ptr [rsp + 608]                     # b
                        mov              rcx, qword ptr [rsp + 616]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                                                                                        jmp   n304_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n304_assign_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [1879052352], rax                    # sign
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n264_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n305_goto_α:
                                                                                        jmp   n210_lit_string_α
n305_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n306_goto_α:
                                                                                        jmp   n307_var_α
n306_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n307_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 688], rax                     # result
                        mov              qword ptr [rsp + 696], rdx
                                                                                        jmp   n308_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_integer_α:
                        mov              qword ptr [rsp + 704], 3                       # result
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rsp + 712], rax
                                                                                        jmp   n309_call_α
.Lx457_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n309_call_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn459:              .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn459]                         # fn
                        lea              rsi, [rsp + 640]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n264_save_restore_α
                                                                                        jmp   n310_var_α
n309_call_β:
                                                                                        jmp   n264_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:
                        mov              rax, qword ptr [1879052368]                    # gcd
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 784], rax                     # result
                        mov              qword ptr [rsp + 792], rdx
                                                                                        jmp   n311_var_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 800], rax                     # result
                        mov              qword ptr [rsp + 808], rdx
                                                                                        jmp   n312_call_α
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn463:              .string          "REMDR"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn463]                         # fn
                        lea              rsi, [rsp + 736]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n314_var_α
                                                                                        jmp   n313_assign_α
n312_call_β:
                                                                                        jmp   n314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_assign_α:
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 816], rax                     # result
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n315_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n315_assign_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n316_var_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rsp + 832], rax                     # result
                        mov              qword ptr [rsp + 840], rdx
                                                                                        jmp   n317_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n317_assign_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n307_var_α
#-----------------------------------------------------------------------------------------------------------------------
n318_goto_α:
                                                                                        jmp   n210_lit_string_α
n318_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n319_goto_α:
                                                                                        jmp   n320_var_α
n319_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:
                        mov              rax, qword ptr [1879052432]                    # a
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 912], rax                     # result
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n321_var_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 928], rax                     # result
                        mov              qword ptr [rsp + 936], rdx
                                                                                        jmp   n322_call_α
#-----------------------------------------------------------------------------------------------------------------------
n322_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052368]                    # gcd
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052392]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052400]                    # r
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052408]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx474_0]                # name
                        mov              esi, 3                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx474_5
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [1879052392], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx474_6]
                        lea              rdx, [rip + .Lx474_7]
                                                                                        jmp   rax
.Lx474_6:
                        mov              rdi, qword ptr [1879052368]                    # gcd
                        mov              rsi, qword ptr [1879052376]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx474_2
.Lx474_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052400], rax                    # r
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052408], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052384], rax                    # b
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052392], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052368], rax                    # gcd
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052376], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx474_2
.Lx474_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx474_20
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx474_21
.Lx474_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 912]                     # v
                        mov              rdx, qword ptr [rsp + 920]                     # v
                        call             rt_arg_stage@PLT
.Lx474_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx474_22
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx474_23
.Lx474_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 928]                     # v
                        mov              rdx, qword ptr [rsp + 936]                     # v
                        call             rt_arg_stage@PLT
.Lx474_23:
                        mov              rdi, qword ptr [rip + .Lx474_0]                # name
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx474_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx474_3]
                        lea              rdx, [rip + .Lx474_4]
                                                                                        jmp   rax
.Lx474_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx474_2
.Lx474_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx474_2
.Lx474_1:
                        call             rt_faildescr@PLT
.Lx474_2:
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              eax, 104
                                                                                        je    n324_var_α
                                                                                        jmp   n323_assign_α
n322_call_β:
                                                                                        jmp   n324_var_α
.Lx474_0:
                        .quad            .Lx474_0_s
.Lx474_0_s:
                        .string          "gcd"
#-----------------------------------------------------------------------------------------------------------------------
n323_assign_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [1879052448], rax                    # g
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n324_var_α
#-----------------------------------------------------------------------------------------------------------------------
n324_var_α:
                        mov              rax, qword ptr [1879052432]                    # a
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rsp + 976], rax                     # result
                        mov              qword ptr [rsp + 984], rdx
                                                                                        jmp   n325_var_α
#-----------------------------------------------------------------------------------------------------------------------
n325_var_α:
                        mov              rax, qword ptr [1879052448]                    # g
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rsp + 992], rax                     # result
                        mov              qword ptr [rsp + 1000], rdx
                                                                                        jmp   n326_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n326_binop_α:
                        mov              rdi, qword ptr [rsp + 976]
                        mov              rsi, qword ptr [rsp + 984]
                        mov              rdx, qword ptr [rsp + 992]
                        mov              rcx, qword ptr [rsp + 1000]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx478_240
                        add              rsp, 32
                                                                                        jmp   n264_save_restore_α
.Lx478_240:
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                                                                                        jmp   n327_var_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_α:
                        mov              rax, qword ptr [1879052384]                    # b
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 1008], rax                    # result
                        mov              qword ptr [rsp + 1016], rdx
                                                                                        jmp   n328_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n328_binop_α:
                        mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 3
                                                                                        jne   .Lx480_0
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              eax, 3
                                                                                        jne   .Lx480_0
                        mov              rax, qword ptr [rsp + 968]
                        mov              rcx, qword ptr [rsp + 1016]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 944], 3
                        mov              qword ptr [rsp + 952], rax
                                                                                        jmp   n329_assign_α
.Lx480_0:
                        mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdx, qword ptr [rsp + 1008]
                        mov              rcx, qword ptr [rsp + 1016]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx480_240
                        add              rsp, 32
                                                                                        jmp   n264_save_restore_α
.Lx480_240:
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                                                                                        jmp   n329_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n329_assign_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
                        mov              qword ptr [1879052416], rax                    # lcm
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n264_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n330_goto_α:
                                                                                        jmp   n210_lit_string_α
n330_goto_β:
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
