                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__fact_α
proc_LBL__fact_α:
proc_LBL__fact_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__fact_ω
#=======================================================================================================================
# fact    fact = EQ(n, 1) 1                              :s(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 0], rax                       # n
                        mov              qword ptr [rsp + 8], rdx                       # n
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n3_coerce_numeric_α
.Lx19_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 7
                                                                                        je    .Lx21_1
                        cmp              eax, 6
                                                                                        jne   .Lx21_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx21_0
.Lx21_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # coerce_numeric
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # coerce_numeric
                                                                                        jmp   n4_coerce_numeric_α
.Lx21_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # coerce_numeric
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n4_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n4_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 7
                                                                                        je    .Lx23_1
                        cmp              eax, 6
                                                                                        jne   .Lx23_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx23_0
.Lx23_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # coerce_numeric
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # coerce_numeric
                                                                                        jmp   n5_cmp_test_α
.Lx23_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # coerce_numeric
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n5_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n5_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx25_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n9_var_α
.Lx25_240:
                        mov              qword ptr [rsp + 0], 0                         # cmp_test
                        mov              qword ptr [rsp + 8], 0                         # cmp_test
                                                                                        jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n7_binop_α
.Lx26_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n7_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # cmp_test
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # binop
                        mov              qword ptr [rsp + 8], rdx                       # binop
                                                                                        jmp   n8_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # binop
                        mov              qword ptr [1879052288], rax                    # fact
                        mov              qword ptr [1879052296], rdx                    # fact
                                                                                        jmp   n16_save_restore_α
#=======================================================================================================================
#         fact = n * fact(n - 1)                         :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        sub              rsp, 256
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 192], 0                       # stmt_claim
                        mov              qword ptr [rsp + 200], 0                       # stmt_claim
                        mov              qword ptr [rsp + 208], 0                       # stmt_claim
                        mov              qword ptr [rsp + 216], 0                       # stmt_claim
                        mov              qword ptr [rsp + 224], 0                       # stmt_claim
                        mov              qword ptr [rsp + 232], 0                       # stmt_claim
                        mov              qword ptr [rsp + 240], 0                       # stmt_claim
                        mov              qword ptr [rsp + 248], 0                       # stmt_claim
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 144], rax                     # n
                        mov              qword ptr [rsp + 152], rdx                     # n
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 224], rax                     # n
                        mov              qword ptr [rsp + 232], rdx                     # n
                                                                                        jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rsp + 240], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 248], rax                     # lit_integer
                                                                                        jmp   n12_binop_α
.Lx31_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 6
                                                                                        jne   .Lx32_0
                        mov              rax, qword ptr [rsp + 232]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 208], 6
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n13_call_α
.Lx32_0:
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx32_240
                        add              rsp, 256
                                                                                        jmp   n16_save_restore_α
.Lx32_240:
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n13_call_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx34_20
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx34_21
.Lx34_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 208]                     # v
                        mov              rdx, qword ptr [rsp + 216]                     # v
                        call             rt_arg_stage@PLT
.Lx34_21:
                        mov              rdi, qword ptr [rip + .Lx34_0]                 # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx34_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx34_3]
                        lea              rdx, [rip + .Lx34_4]
                                                                                        jmp   rax
.Lx34_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx34_2
.Lx34_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx34_2
.Lx34_1:
                        call             rt_faildescr@PLT
.Lx34_2:
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx34_240
                        add              rsp, 256
                                                                                        jmp   n16_save_restore_α
.Lx34_240:
                                                                                        jmp   n14_binop_α
n13_call_β:
                                                                                        jmp   n16_save_restore_α
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "fact"
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 6
                                                                                        jne   .Lx35_0
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 6
                                                                                        jne   .Lx35_0
                        mov              rax, qword ptr [rsp + 152]
                        mov              rcx, qword ptr [rsp + 168]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 128], 6
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n15_assign_α
.Lx35_0:
                        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx35_240
                        add              rsp, 256
                                                                                        jmp   n16_save_restore_α
.Lx35_240:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n15_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [1879052288], rax                    # fact
                        mov              qword ptr [1879052296], rdx                    # fact
                        add              rsp, 256
                                                                                        jmp   n16_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n16_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__fact_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__fact_β:
                                                                                        jmp   proc_LBL__fact_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__fact_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__fact_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__fact2_entry_α
proc_LBL__fact2_entry_α:
proc_LBL__fact2_entry_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n39_goto_α:
                                                                                        jmp   n40_var_α
n39_goto_β:
                                                                                        jmp   proc_LBL__fact2_entry_ω
#=======================================================================================================================
#         fact2 = EQ(n, 1) 1                             :s(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 0], rax                       # n
                        mov              qword ptr [rsp + 8], rdx                       # n
                                                                                        jmp   n41_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n42_coerce_numeric_α
.Lx58_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n42_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 7
                                                                                        je    .Lx60_1
                        cmp              eax, 6
                                                                                        jne   .Lx60_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx60_0
.Lx60_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # coerce_numeric
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # coerce_numeric
                                                                                        jmp   n43_coerce_numeric_α
.Lx60_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # coerce_numeric
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n43_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n43_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 7
                                                                                        je    .Lx62_1
                        cmp              eax, 6
                                                                                        jne   .Lx62_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx62_0
.Lx62_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # coerce_numeric
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # coerce_numeric
                                                                                        jmp   n44_cmp_test_α
.Lx62_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # coerce_numeric
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n44_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n44_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx64_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n48_var_α
.Lx64_240:
                        mov              qword ptr [rsp + 0], 0                         # cmp_test
                        mov              qword ptr [rsp + 8], 0                         # cmp_test
                                                                                        jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n46_binop_α
.Lx65_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n46_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # cmp_test
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # binop
                        mov              qword ptr [rsp + 8], rdx                       # binop
                                                                                        jmp   n47_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # binop
                        mov              qword ptr [1879052320], rax                    # fact2
                        mov              qword ptr [1879052328], rdx                    # fact2
                                                                                        jmp   n55_save_restore_α
#=======================================================================================================================
#         fact2 = n * fact2(n - 1)                       :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:
                        sub              rsp, 960
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 192], 0                       # stmt_claim
                        mov              qword ptr [rsp + 200], 0                       # stmt_claim
                        mov              qword ptr [rsp + 208], 0                       # stmt_claim
                        mov              qword ptr [rsp + 216], 0                       # stmt_claim
                        mov              qword ptr [rsp + 224], 0                       # stmt_claim
                        mov              qword ptr [rsp + 232], 0                       # stmt_claim
                        mov              qword ptr [rsp + 240], 0                       # stmt_claim
                        mov              qword ptr [rsp + 248], 0                       # stmt_claim
                        mov              qword ptr [rsp + 256], 0                       # stmt_claim
                        mov              qword ptr [rsp + 264], 0                       # stmt_claim
                        mov              qword ptr [rsp + 272], 0                       # stmt_claim
                        mov              qword ptr [rsp + 280], 0                       # stmt_claim
                        mov              qword ptr [rsp + 288], 0                       # stmt_claim
                        mov              qword ptr [rsp + 296], 0                       # stmt_claim
                        mov              qword ptr [rsp + 304], 0                       # stmt_claim
                        mov              qword ptr [rsp + 312], 0                       # stmt_claim
                        mov              qword ptr [rsp + 320], 0                       # stmt_claim
                        mov              qword ptr [rsp + 328], 0                       # stmt_claim
                        mov              qword ptr [rsp + 336], 0                       # stmt_claim
                        mov              qword ptr [rsp + 344], 0                       # stmt_claim
                        mov              qword ptr [rsp + 352], 0                       # stmt_claim
                        mov              qword ptr [rsp + 360], 0                       # stmt_claim
                        mov              qword ptr [rsp + 368], 0                       # stmt_claim
                        mov              qword ptr [rsp + 376], 0                       # stmt_claim
                        mov              qword ptr [rsp + 384], 0                       # stmt_claim
                        mov              qword ptr [rsp + 392], 0                       # stmt_claim
                        mov              qword ptr [rsp + 400], 0                       # stmt_claim
                        mov              qword ptr [rsp + 408], 0                       # stmt_claim
                        mov              qword ptr [rsp + 416], 0                       # stmt_claim
                        mov              qword ptr [rsp + 424], 0                       # stmt_claim
                        mov              qword ptr [rsp + 432], 0                       # stmt_claim
                        mov              qword ptr [rsp + 440], 0                       # stmt_claim
                        mov              qword ptr [rsp + 448], 0                       # stmt_claim
                        mov              qword ptr [rsp + 456], 0                       # stmt_claim
                        mov              qword ptr [rsp + 464], 0                       # stmt_claim
                        mov              qword ptr [rsp + 472], 0                       # stmt_claim
                        mov              qword ptr [rsp + 480], 0                       # stmt_claim
                        mov              qword ptr [rsp + 488], 0                       # stmt_claim
                        mov              qword ptr [rsp + 496], 0                       # stmt_claim
                        mov              qword ptr [rsp + 504], 0                       # stmt_claim
                        mov              qword ptr [rsp + 512], 0                       # stmt_claim
                        mov              qword ptr [rsp + 520], 0                       # stmt_claim
                        mov              qword ptr [rsp + 528], 0                       # stmt_claim
                        mov              qword ptr [rsp + 536], 0                       # stmt_claim
                        mov              qword ptr [rsp + 544], 0                       # stmt_claim
                        mov              qword ptr [rsp + 552], 0                       # stmt_claim
                        mov              qword ptr [rsp + 560], 0                       # stmt_claim
                        mov              qword ptr [rsp + 568], 0                       # stmt_claim
                        mov              qword ptr [rsp + 576], 0                       # stmt_claim
                        mov              qword ptr [rsp + 584], 0                       # stmt_claim
                        mov              qword ptr [rsp + 592], 0                       # stmt_claim
                        mov              qword ptr [rsp + 600], 0                       # stmt_claim
                        mov              qword ptr [rsp + 608], 0                       # stmt_claim
                        mov              qword ptr [rsp + 616], 0                       # stmt_claim
                        mov              qword ptr [rsp + 624], 0                       # stmt_claim
                        mov              qword ptr [rsp + 632], 0                       # stmt_claim
                        mov              qword ptr [rsp + 640], 0                       # stmt_claim
                        mov              qword ptr [rsp + 648], 0                       # stmt_claim
                        mov              qword ptr [rsp + 656], 0                       # stmt_claim
                        mov              qword ptr [rsp + 664], 0                       # stmt_claim
                        mov              qword ptr [rsp + 672], 0                       # stmt_claim
                        mov              qword ptr [rsp + 680], 0                       # stmt_claim
                        mov              qword ptr [rsp + 688], 0                       # stmt_claim
                        mov              qword ptr [rsp + 696], 0                       # stmt_claim
                        mov              qword ptr [rsp + 704], 0                       # stmt_claim
                        mov              qword ptr [rsp + 712], 0                       # stmt_claim
                        mov              qword ptr [rsp + 720], 0                       # stmt_claim
                        mov              qword ptr [rsp + 728], 0                       # stmt_claim
                        mov              qword ptr [rsp + 736], 0                       # stmt_claim
                        mov              qword ptr [rsp + 744], 0                       # stmt_claim
                        mov              qword ptr [rsp + 752], 0                       # stmt_claim
                        mov              qword ptr [rsp + 760], 0                       # stmt_claim
                        mov              qword ptr [rsp + 768], 0                       # stmt_claim
                        mov              qword ptr [rsp + 776], 0                       # stmt_claim
                        mov              qword ptr [rsp + 784], 0                       # stmt_claim
                        mov              qword ptr [rsp + 792], 0                       # stmt_claim
                        mov              qword ptr [rsp + 800], 0                       # stmt_claim
                        mov              qword ptr [rsp + 808], 0                       # stmt_claim
                        mov              qword ptr [rsp + 816], 0                       # stmt_claim
                        mov              qword ptr [rsp + 824], 0                       # stmt_claim
                        mov              qword ptr [rsp + 832], 0                       # stmt_claim
                        mov              qword ptr [rsp + 840], 0                       # stmt_claim
                        mov              qword ptr [rsp + 848], 0                       # stmt_claim
                        mov              qword ptr [rsp + 856], 0                       # stmt_claim
                        mov              qword ptr [rsp + 864], 0                       # stmt_claim
                        mov              qword ptr [rsp + 872], 0                       # stmt_claim
                        mov              qword ptr [rsp + 880], 0                       # stmt_claim
                        mov              qword ptr [rsp + 888], 0                       # stmt_claim
                        mov              qword ptr [rsp + 896], 0                       # stmt_claim
                        mov              qword ptr [rsp + 904], 0                       # stmt_claim
                        mov              qword ptr [rsp + 912], 0                       # stmt_claim
                        mov              qword ptr [rsp + 920], 0                       # stmt_claim
                        mov              qword ptr [rsp + 928], 0                       # stmt_claim
                        mov              qword ptr [rsp + 936], 0                       # stmt_claim
                        mov              qword ptr [rsp + 944], 0                       # stmt_claim
                        mov              qword ptr [rsp + 952], 0                       # stmt_claim
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 848], rax                     # n
                        mov              qword ptr [rsp + 856], rdx                     # n
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 928], rax                     # n
                        mov              qword ptr [rsp + 936], rdx                     # n
                                                                                        jmp   n50_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        mov              qword ptr [rsp + 944], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 952], rax                     # lit_integer
                                                                                        jmp   n51_binop_α
.Lx70_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_α:
                        mov              eax, dword ptr [rsp + 928]
                        cmp              eax, 6
                                                                                        jne   .Lx71_0
                        mov              rax, qword ptr [rsp + 936]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 912], 6
                        mov              qword ptr [rsp + 920], rax
                                                                                        jmp   n52_call_α
.Lx71_0:
                        mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx71_240
                        add              rsp, 960
                                                                                        jmp   n55_save_restore_α
.Lx71_240:
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n52_call_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx73_20
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx73_21
.Lx73_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 912]                     # v
                        mov              rdx, qword ptr [rsp + 920]                     # v
                        call             rt_arg_stage@PLT
.Lx73_21:
                        mov              rdi, qword ptr [rip + .Lx73_0]                 # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx73_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx73_3]
                        lea              rdx, [rip + .Lx73_4]
                                                                                        jmp   rax
.Lx73_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx73_2
.Lx73_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx73_2
.Lx73_1:
                        call             rt_faildescr@PLT
.Lx73_2:
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx73_240
                        add              rsp, 960
                                                                                        jmp   n55_save_restore_α
.Lx73_240:
                                                                                        jmp   n53_binop_α
n52_call_β:
                                                                                        jmp   n55_save_restore_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "fact2"
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_α:
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 6
                                                                                        jne   .Lx74_0
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 6
                                                                                        jne   .Lx74_0
                        mov              rax, qword ptr [rsp + 856]
                        mov              rcx, qword ptr [rsp + 872]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 832], 6
                        mov              qword ptr [rsp + 840], rax
                                                                                        jmp   n54_assign_α
.Lx74_0:
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx74_240
                        add              rsp, 960
                                                                                        jmp   n55_save_restore_α
.Lx74_240:
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                                                                                        jmp   n54_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [1879052320], rax                    # fact2
                        mov              qword ptr [1879052328], rdx                    # fact2
                        add              rsp, 960
                                                                                        jmp   n55_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n55_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__fact2_entry_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__fact2_entry_β:
                                                                                        jmp   proc_LBL__fact2_entry_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__fact2_entry_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__fact2_entry_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_fact_α
proc_fact_α:
proc_fact_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n78_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n79_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n79_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx83_0]                 # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx83_1
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "fact"
.Lx83_1:
                                                                                        jmp   proc_fact_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_β:
                                                                                        jmp   proc_fact_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_fact_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_facto_α
proc_facto_α:
proc_facto_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n84_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n85_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n85_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx89_0]                 # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx89_1
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "fact"
.Lx89_1:
                                                                                        jmp   proc_facto_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_facto_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_facto_β:
                                                                                        jmp   proc_facto_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_facto_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_facto_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_fact2_α
proc_fact2_α:
proc_fact2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n90_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n91_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n91_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx95_0]                 # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx95_1
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "fact2_entry"
.Lx95_1:
                                                                                        jmp   proc_fact2_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_fact2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_fact2_β:
                                                                                        jmp   proc_fact2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_fact2_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_fact2_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__fact"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__fact_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1120
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__fact2_entry"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__fact2_entry_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1120
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "fact"
.Lstartup_pp2_0:        .string          "n"
                        .align           8
.Lstartup_pnames2:
                        .quad            .Lstartup_pp2_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_pnames2]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_fact_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "facto"
.Lstartup_pp3_0:        .string          "n"
                        .align           8
.Lstartup_pnames3:
                        .quad            .Lstartup_pp3_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_pnames3]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        .section         .rodata
.Lstartup_prn3:         .string          "fact"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_prn3]
                        call             rt_proc_set_result_name@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_facto_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "fact2"
.Lstartup_pp4_0:        .string          "n"
                        .align           8
.Lstartup_pnames4:
                        .quad            .Lstartup_pp4_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + .Lstartup_pnames4]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_fact2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "fact"
.Lgvan1:                .string          "n"
.Lgvan2:                .string          "fact2"
.Lgvan3:                .string          "facto"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#         DEFINE('fact(n)')                              :(fact_end)
#         NE(fact(5), 120)           :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        sub              rsp, 368
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 192], 0                       # stmt_claim
                        mov              qword ptr [rsp + 200], 0                       # stmt_claim
                        mov              qword ptr [rsp + 208], 0                       # stmt_claim
                        mov              qword ptr [rsp + 216], 0                       # stmt_claim
                        mov              qword ptr [rsp + 224], 0                       # stmt_claim
                        mov              qword ptr [rsp + 232], 0                       # stmt_claim
                        mov              qword ptr [rsp + 240], 0                       # stmt_claim
                        mov              qword ptr [rsp + 248], 0                       # stmt_claim
                        mov              qword ptr [rsp + 256], 0                       # stmt_claim
                        mov              qword ptr [rsp + 264], 0                       # stmt_claim
                        mov              qword ptr [rsp + 272], 0                       # stmt_claim
                        mov              qword ptr [rsp + 280], 0                       # stmt_claim
                        mov              qword ptr [rsp + 288], 0                       # stmt_claim
                        mov              qword ptr [rsp + 296], 0                       # stmt_claim
                        mov              qword ptr [rsp + 304], 0                       # stmt_claim
                        mov              qword ptr [rsp + 312], 0                       # stmt_claim
                        mov              qword ptr [rsp + 320], 0                       # stmt_claim
                        mov              qword ptr [rsp + 328], 0                       # stmt_claim
                        mov              qword ptr [rsp + 336], 0                       # stmt_claim
                        mov              qword ptr [rsp + 344], 0                       # stmt_claim
                        mov              qword ptr [rsp + 352], 0                       # stmt_claim
                        mov              qword ptr [rsp + 360], 0                       # stmt_claim
                        mov              qword ptr [rsp + 352], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 360], rax                     # lit_integer
                                                                                        jmp   n97_call_α
.Lx168_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx170_20
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx170_21
.Lx170_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 352]                     # v
                        mov              rdx, qword ptr [rsp + 360]                     # v
                        call             rt_arg_stage@PLT
.Lx170_21:
                        mov              rdi, qword ptr [rip + .Lx170_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx170_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx170_3]
                        lea              rdx, [rip + .Lx170_4]
                                                                                        jmp   rax
.Lx170_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx170_2
.Lx170_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx170_2
.Lx170_1:
                        call             rt_faildescr@PLT
.Lx170_2:
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx170_240
                        add              rsp, 368
                                                                                        jmp   n104_lit_string_α
.Lx170_240:
                                                                                        jmp   n98_lit_integer_α
n97_call_β:
                                                                                        jmp   n104_lit_string_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "fact"
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        mov              qword ptr [rsp + 288], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 296], rax                     # lit_integer
                                                                                        jmp   n99_coerce_numeric_α
.Lx171_0:
                        .quad            120
#-----------------------------------------------------------------------------------------------------------------------
n99_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 7
                                                                                        je    .Lx173_1
                        cmp              eax, 6
                                                                                        jne   .Lx173_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx173_0
.Lx173_1:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n100_coerce_numeric_α
.Lx173_0:
                        lea              rdi, [rsp + 304]                               # self
                        lea              rsi, [rsp + 288]                               # other
                        lea              rdx, [rsp + 272]                               # out
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n100_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n100_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 7
                                                                                        je    .Lx175_1
                        cmp              eax, 6
                                                                                        jne   .Lx175_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 6
                                                                                        jne   .Lx175_0
.Lx175_1:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n101_cmp_test_α
.Lx175_0:
                        lea              rdi, [rsp + 288]                               # self
                        lea              rsi, [rsp + 304]                               # other
                        lea              rdx, [rsp + 256]                               # out
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n101_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n101_cmp_test_α:
                        lea              rdi, [rsp + 272]                               # a
                        lea              rsi, [rsp + 256]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx177_240
                        add              rsp, 368
                                                                                        jmp   n104_lit_string_α
.Lx177_240:
                        add              rsp, 368
                                                                                        jmp   n102_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1010/001: fact(5)=120'          :(END)
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 26                        # lit_string
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n103_assign_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "FAIL 1010/001: fact(5)=120"
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx179_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DIFFER(OPSYN(.facto, 'fact'))                   :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 5                         # lit_string
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n105_call_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "facto"
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd182:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd182]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx181_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n111_lit_integer_α
.Lx181_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                                                                                        jmp   n106_lit_string_α
n105_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n111_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 4                         # lit_string
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n107_call_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "fact"
#-----------------------------------------------------------------------------------------------------------------------
n107_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd185:            .string          "OPSYN"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd185]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx184_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n111_lit_integer_α
.Lx184_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                                                                                        jmp   n108_call_α
n107_call_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n111_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd187:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd187]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 99
                                                                                        jne   .Lx186_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n111_lit_integer_α
.Lx186_240:
                        mov              qword ptr [rsp + 0], rax                       # call
                        mov              qword ptr [rsp + 8], rdx                       # call
                        add              rsp, 80
                                                                                        jmp   n109_lit_string_α
n108_call_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n111_lit_integer_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1010/002: opsyn alias'          :(END)
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 26                        # lit_string
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n110_assign_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "FAIL 1010/002: opsyn alias"
#-----------------------------------------------------------------------------------------------------------------------
n110_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx189_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         NE(facto(4), 24)           :f(e003)
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_integer_α:
                        sub              rsp, 704
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 192], 0                       # stmt_claim
                        mov              qword ptr [rsp + 200], 0                       # stmt_claim
                        mov              qword ptr [rsp + 208], 0                       # stmt_claim
                        mov              qword ptr [rsp + 216], 0                       # stmt_claim
                        mov              qword ptr [rsp + 224], 0                       # stmt_claim
                        mov              qword ptr [rsp + 232], 0                       # stmt_claim
                        mov              qword ptr [rsp + 240], 0                       # stmt_claim
                        mov              qword ptr [rsp + 248], 0                       # stmt_claim
                        mov              qword ptr [rsp + 256], 0                       # stmt_claim
                        mov              qword ptr [rsp + 264], 0                       # stmt_claim
                        mov              qword ptr [rsp + 272], 0                       # stmt_claim
                        mov              qword ptr [rsp + 280], 0                       # stmt_claim
                        mov              qword ptr [rsp + 288], 0                       # stmt_claim
                        mov              qword ptr [rsp + 296], 0                       # stmt_claim
                        mov              qword ptr [rsp + 304], 0                       # stmt_claim
                        mov              qword ptr [rsp + 312], 0                       # stmt_claim
                        mov              qword ptr [rsp + 320], 0                       # stmt_claim
                        mov              qword ptr [rsp + 328], 0                       # stmt_claim
                        mov              qword ptr [rsp + 336], 0                       # stmt_claim
                        mov              qword ptr [rsp + 344], 0                       # stmt_claim
                        mov              qword ptr [rsp + 352], 0                       # stmt_claim
                        mov              qword ptr [rsp + 360], 0                       # stmt_claim
                        mov              qword ptr [rsp + 368], 0                       # stmt_claim
                        mov              qword ptr [rsp + 376], 0                       # stmt_claim
                        mov              qword ptr [rsp + 384], 0                       # stmt_claim
                        mov              qword ptr [rsp + 392], 0                       # stmt_claim
                        mov              qword ptr [rsp + 400], 0                       # stmt_claim
                        mov              qword ptr [rsp + 408], 0                       # stmt_claim
                        mov              qword ptr [rsp + 416], 0                       # stmt_claim
                        mov              qword ptr [rsp + 424], 0                       # stmt_claim
                        mov              qword ptr [rsp + 432], 0                       # stmt_claim
                        mov              qword ptr [rsp + 440], 0                       # stmt_claim
                        mov              qword ptr [rsp + 448], 0                       # stmt_claim
                        mov              qword ptr [rsp + 456], 0                       # stmt_claim
                        mov              qword ptr [rsp + 464], 0                       # stmt_claim
                        mov              qword ptr [rsp + 472], 0                       # stmt_claim
                        mov              qword ptr [rsp + 480], 0                       # stmt_claim
                        mov              qword ptr [rsp + 488], 0                       # stmt_claim
                        mov              qword ptr [rsp + 496], 0                       # stmt_claim
                        mov              qword ptr [rsp + 504], 0                       # stmt_claim
                        mov              qword ptr [rsp + 512], 0                       # stmt_claim
                        mov              qword ptr [rsp + 520], 0                       # stmt_claim
                        mov              qword ptr [rsp + 528], 0                       # stmt_claim
                        mov              qword ptr [rsp + 536], 0                       # stmt_claim
                        mov              qword ptr [rsp + 544], 0                       # stmt_claim
                        mov              qword ptr [rsp + 552], 0                       # stmt_claim
                        mov              qword ptr [rsp + 560], 0                       # stmt_claim
                        mov              qword ptr [rsp + 568], 0                       # stmt_claim
                        mov              qword ptr [rsp + 576], 0                       # stmt_claim
                        mov              qword ptr [rsp + 584], 0                       # stmt_claim
                        mov              qword ptr [rsp + 592], 0                       # stmt_claim
                        mov              qword ptr [rsp + 600], 0                       # stmt_claim
                        mov              qword ptr [rsp + 608], 0                       # stmt_claim
                        mov              qword ptr [rsp + 616], 0                       # stmt_claim
                        mov              qword ptr [rsp + 624], 0                       # stmt_claim
                        mov              qword ptr [rsp + 632], 0                       # stmt_claim
                        mov              qword ptr [rsp + 640], 0                       # stmt_claim
                        mov              qword ptr [rsp + 648], 0                       # stmt_claim
                        mov              qword ptr [rsp + 656], 0                       # stmt_claim
                        mov              qword ptr [rsp + 664], 0                       # stmt_claim
                        mov              qword ptr [rsp + 672], 0                       # stmt_claim
                        mov              qword ptr [rsp + 680], 0                       # stmt_claim
                        mov              qword ptr [rsp + 688], 0                       # stmt_claim
                        mov              qword ptr [rsp + 696], 0                       # stmt_claim
                        mov              qword ptr [rsp + 688], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 696], rax                     # lit_integer
                                                                                        jmp   n112_call_α
.Lx190_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx192_20
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx192_21
.Lx192_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 688]                     # v
                        mov              rdx, qword ptr [rsp + 696]                     # v
                        call             rt_arg_stage@PLT
.Lx192_21:
                        mov              rdi, qword ptr [rip + .Lx192_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx192_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx192_3]
                        lea              rdx, [rip + .Lx192_4]
                                                                                        jmp   rax
.Lx192_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx192_2
.Lx192_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx192_2
.Lx192_1:
                        call             rt_faildescr@PLT
.Lx192_2:
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx192_240
                        add              rsp, 704
                                                                                        jmp   n119_lit_integer_α
.Lx192_240:
                                                                                        jmp   n113_lit_integer_α
n112_call_β:
                                                                                        jmp   n119_lit_integer_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "facto"
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:
                        mov              qword ptr [rsp + 624], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rsp + 632], rax                     # lit_integer
                                                                                        jmp   n114_coerce_numeric_α
.Lx193_0:
                        .quad            24
#-----------------------------------------------------------------------------------------------------------------------
n114_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 7
                                                                                        je    .Lx195_1
                        cmp              eax, 6
                                                                                        jne   .Lx195_0
                        mov              eax, dword ptr [rsp + 624]
                        cmp              eax, 6
                                                                                        jne   .Lx195_0
.Lx195_1:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n115_coerce_numeric_α
.Lx195_0:
                        lea              rdi, [rsp + 640]                               # self
                        lea              rsi, [rsp + 624]                               # other
                        lea              rdx, [rsp + 608]                               # out
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n115_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n115_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 624]
                        cmp              eax, 7
                                                                                        je    .Lx197_1
                        cmp              eax, 6
                                                                                        jne   .Lx197_0
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 6
                                                                                        jne   .Lx197_0
.Lx197_1:
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n116_cmp_test_α
.Lx197_0:
                        lea              rdi, [rsp + 624]                               # self
                        lea              rsi, [rsp + 640]                               # other
                        lea              rdx, [rsp + 592]                               # out
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n116_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n116_cmp_test_α:
                        lea              rdi, [rsp + 608]                               # a
                        lea              rsi, [rsp + 592]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx199_240
                        add              rsp, 704
                                                                                        jmp   n119_lit_integer_α
.Lx199_240:
                        add              rsp, 704
                                                                                        jmp   n117_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1010/003: facto(4)=24 via alias' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 36                        # lit_string
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n118_assign_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "FAIL 1010/003: facto(4)=24 via alias"
#-----------------------------------------------------------------------------------------------------------------------
n118_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx201_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         DEFINE('fact2(n)', .fact2_entry)               :(fact2_end)
#         NE(fact2(6), 720)          :f(e004)
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:
                        sub              rsp, 1072
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 192], 0                       # stmt_claim
                        mov              qword ptr [rsp + 200], 0                       # stmt_claim
                        mov              qword ptr [rsp + 208], 0                       # stmt_claim
                        mov              qword ptr [rsp + 216], 0                       # stmt_claim
                        mov              qword ptr [rsp + 224], 0                       # stmt_claim
                        mov              qword ptr [rsp + 232], 0                       # stmt_claim
                        mov              qword ptr [rsp + 240], 0                       # stmt_claim
                        mov              qword ptr [rsp + 248], 0                       # stmt_claim
                        mov              qword ptr [rsp + 256], 0                       # stmt_claim
                        mov              qword ptr [rsp + 264], 0                       # stmt_claim
                        mov              qword ptr [rsp + 272], 0                       # stmt_claim
                        mov              qword ptr [rsp + 280], 0                       # stmt_claim
                        mov              qword ptr [rsp + 288], 0                       # stmt_claim
                        mov              qword ptr [rsp + 296], 0                       # stmt_claim
                        mov              qword ptr [rsp + 304], 0                       # stmt_claim
                        mov              qword ptr [rsp + 312], 0                       # stmt_claim
                        mov              qword ptr [rsp + 320], 0                       # stmt_claim
                        mov              qword ptr [rsp + 328], 0                       # stmt_claim
                        mov              qword ptr [rsp + 336], 0                       # stmt_claim
                        mov              qword ptr [rsp + 344], 0                       # stmt_claim
                        mov              qword ptr [rsp + 352], 0                       # stmt_claim
                        mov              qword ptr [rsp + 360], 0                       # stmt_claim
                        mov              qword ptr [rsp + 368], 0                       # stmt_claim
                        mov              qword ptr [rsp + 376], 0                       # stmt_claim
                        mov              qword ptr [rsp + 384], 0                       # stmt_claim
                        mov              qword ptr [rsp + 392], 0                       # stmt_claim
                        mov              qword ptr [rsp + 400], 0                       # stmt_claim
                        mov              qword ptr [rsp + 408], 0                       # stmt_claim
                        mov              qword ptr [rsp + 416], 0                       # stmt_claim
                        mov              qword ptr [rsp + 424], 0                       # stmt_claim
                        mov              qword ptr [rsp + 432], 0                       # stmt_claim
                        mov              qword ptr [rsp + 440], 0                       # stmt_claim
                        mov              qword ptr [rsp + 448], 0                       # stmt_claim
                        mov              qword ptr [rsp + 456], 0                       # stmt_claim
                        mov              qword ptr [rsp + 464], 0                       # stmt_claim
                        mov              qword ptr [rsp + 472], 0                       # stmt_claim
                        mov              qword ptr [rsp + 480], 0                       # stmt_claim
                        mov              qword ptr [rsp + 488], 0                       # stmt_claim
                        mov              qword ptr [rsp + 496], 0                       # stmt_claim
                        mov              qword ptr [rsp + 504], 0                       # stmt_claim
                        mov              qword ptr [rsp + 512], 0                       # stmt_claim
                        mov              qword ptr [rsp + 520], 0                       # stmt_claim
                        mov              qword ptr [rsp + 528], 0                       # stmt_claim
                        mov              qword ptr [rsp + 536], 0                       # stmt_claim
                        mov              qword ptr [rsp + 544], 0                       # stmt_claim
                        mov              qword ptr [rsp + 552], 0                       # stmt_claim
                        mov              qword ptr [rsp + 560], 0                       # stmt_claim
                        mov              qword ptr [rsp + 568], 0                       # stmt_claim
                        mov              qword ptr [rsp + 576], 0                       # stmt_claim
                        mov              qword ptr [rsp + 584], 0                       # stmt_claim
                        mov              qword ptr [rsp + 592], 0                       # stmt_claim
                        mov              qword ptr [rsp + 600], 0                       # stmt_claim
                        mov              qword ptr [rsp + 608], 0                       # stmt_claim
                        mov              qword ptr [rsp + 616], 0                       # stmt_claim
                        mov              qword ptr [rsp + 624], 0                       # stmt_claim
                        mov              qword ptr [rsp + 632], 0                       # stmt_claim
                        mov              qword ptr [rsp + 640], 0                       # stmt_claim
                        mov              qword ptr [rsp + 648], 0                       # stmt_claim
                        mov              qword ptr [rsp + 656], 0                       # stmt_claim
                        mov              qword ptr [rsp + 664], 0                       # stmt_claim
                        mov              qword ptr [rsp + 672], 0                       # stmt_claim
                        mov              qword ptr [rsp + 680], 0                       # stmt_claim
                        mov              qword ptr [rsp + 688], 0                       # stmt_claim
                        mov              qword ptr [rsp + 696], 0                       # stmt_claim
                        mov              qword ptr [rsp + 704], 0                       # stmt_claim
                        mov              qword ptr [rsp + 712], 0                       # stmt_claim
                        mov              qword ptr [rsp + 720], 0                       # stmt_claim
                        mov              qword ptr [rsp + 728], 0                       # stmt_claim
                        mov              qword ptr [rsp + 736], 0                       # stmt_claim
                        mov              qword ptr [rsp + 744], 0                       # stmt_claim
                        mov              qword ptr [rsp + 752], 0                       # stmt_claim
                        mov              qword ptr [rsp + 760], 0                       # stmt_claim
                        mov              qword ptr [rsp + 768], 0                       # stmt_claim
                        mov              qword ptr [rsp + 776], 0                       # stmt_claim
                        mov              qword ptr [rsp + 784], 0                       # stmt_claim
                        mov              qword ptr [rsp + 792], 0                       # stmt_claim
                        mov              qword ptr [rsp + 800], 0                       # stmt_claim
                        mov              qword ptr [rsp + 808], 0                       # stmt_claim
                        mov              qword ptr [rsp + 816], 0                       # stmt_claim
                        mov              qword ptr [rsp + 824], 0                       # stmt_claim
                        mov              qword ptr [rsp + 832], 0                       # stmt_claim
                        mov              qword ptr [rsp + 840], 0                       # stmt_claim
                        mov              qword ptr [rsp + 848], 0                       # stmt_claim
                        mov              qword ptr [rsp + 856], 0                       # stmt_claim
                        mov              qword ptr [rsp + 864], 0                       # stmt_claim
                        mov              qword ptr [rsp + 872], 0                       # stmt_claim
                        mov              qword ptr [rsp + 880], 0                       # stmt_claim
                        mov              qword ptr [rsp + 888], 0                       # stmt_claim
                        mov              qword ptr [rsp + 896], 0                       # stmt_claim
                        mov              qword ptr [rsp + 904], 0                       # stmt_claim
                        mov              qword ptr [rsp + 912], 0                       # stmt_claim
                        mov              qword ptr [rsp + 920], 0                       # stmt_claim
                        mov              qword ptr [rsp + 928], 0                       # stmt_claim
                        mov              qword ptr [rsp + 936], 0                       # stmt_claim
                        mov              qword ptr [rsp + 944], 0                       # stmt_claim
                        mov              qword ptr [rsp + 952], 0                       # stmt_claim
                        mov              qword ptr [rsp + 960], 0                       # stmt_claim
                        mov              qword ptr [rsp + 968], 0                       # stmt_claim
                        mov              qword ptr [rsp + 976], 0                       # stmt_claim
                        mov              qword ptr [rsp + 984], 0                       # stmt_claim
                        mov              qword ptr [rsp + 992], 0                       # stmt_claim
                        mov              qword ptr [rsp + 1000], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1008], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1016], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1024], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1032], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1040], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1048], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1056], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1064], 0                      # stmt_claim
                        mov              qword ptr [rsp + 1056], 6                      # lit_integer
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 1064], rax                    # lit_integer
                                                                                        jmp   n120_call_α
.Lx202_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n120_call_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx204_20
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx204_21
.Lx204_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 1056]                    # v
                        mov              rdx, qword ptr [rsp + 1064]                    # v
                        call             rt_arg_stage@PLT
.Lx204_21:
                        mov              rdi, qword ptr [rip + .Lx204_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx204_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx204_3]
                        lea              rdx, [rip + .Lx204_4]
                                                                                        jmp   rax
.Lx204_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx204_2
.Lx204_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx204_2
.Lx204_1:
                        call             rt_faildescr@PLT
.Lx204_2:
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx204_240
                        add              rsp, 1072
                                                                                        jmp   n127_lit_string_α
.Lx204_240:
                                                                                        jmp   n121_lit_integer_α
n120_call_β:
                                                                                        jmp   n127_lit_string_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "fact2"
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:
                        mov              qword ptr [rsp + 992], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 1000], rax                    # lit_integer
                                                                                        jmp   n122_coerce_numeric_α
.Lx205_0:
                        .quad            720
#-----------------------------------------------------------------------------------------------------------------------
n122_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              eax, 7
                                                                                        je    .Lx207_1
                        cmp              eax, 6
                                                                                        jne   .Lx207_0
                        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 6
                                                                                        jne   .Lx207_0
.Lx207_1:
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                                                                                        jmp   n123_coerce_numeric_α
.Lx207_0:
                        lea              rdi, [rsp + 1008]                              # self
                        lea              rsi, [rsp + 992]                               # other
                        lea              rdx, [rsp + 976]                               # out
                        mov              rcx, 149                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n123_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n123_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 7
                                                                                        je    .Lx209_1
                        cmp              eax, 6
                                                                                        jne   .Lx209_0
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              eax, 6
                                                                                        jne   .Lx209_0
.Lx209_1:
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                                                                                        jmp   n124_cmp_test_α
.Lx209_0:
                        lea              rdi, [rsp + 992]                               # self
                        lea              rsi, [rsp + 1008]                              # other
                        lea              rdx, [rsp + 960]                               # out
                        mov              rcx, 150                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n124_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n124_cmp_test_α:
                        lea              rdi, [rsp + 976]                               # a
                        lea              rsi, [rsp + 960]                               # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   .Lx211_240
                        add              rsp, 1072
                                                                                        jmp   n127_lit_string_α
.Lx211_240:
                        add              rsp, 1072
                                                                                        jmp   n125_lit_string_α
#=======================================================================================================================
#         OUTPUT = 'FAIL 1010/004: fact2(6)=720 alt entry' :(END)
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 37                        # lit_string
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n126_assign_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "FAIL 1010/004: fact2(6)=720 alt entry"
#-----------------------------------------------------------------------------------------------------------------------
n126_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx213_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#         OUTPUT = 'PASS 1010_func_recursion (4/4)'
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1                         # lit_string
                        mov              dword ptr [rsp + 4], 30                        # lit_string
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_string
                                                                                        jmp   n128_assign_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "PASS 1010_func_recursion (4/4)"
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # lit_string
                        mov              rdi, qword ptr [rip + .Lx215_0]                # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx215_0:
                        .quad            .Lx215_0_s
.Lx215_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n129_goto_α:
                                                                                        jmp   n130_var_α
n129_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# fact    fact = EQ(n, 1) 1                              :s(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 0], rax                       # n
                        mov              qword ptr [rsp + 8], rdx                       # n
                                                                                        jmp   n131_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n132_coerce_numeric_α
.Lx218_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n132_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 7
                                                                                        je    .Lx220_1
                        cmp              eax, 6
                                                                                        jne   .Lx220_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx220_0
.Lx220_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # coerce_numeric
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # coerce_numeric
                                                                                        jmp   n133_coerce_numeric_α
.Lx220_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # coerce_numeric
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n133_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n133_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 7
                                                                                        je    .Lx222_1
                        cmp              eax, 6
                                                                                        jne   .Lx222_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx222_0
.Lx222_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # coerce_numeric
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # coerce_numeric
                                                                                        jmp   n134_cmp_test_α
.Lx222_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # coerce_numeric
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n134_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n134_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx224_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n138_var_α
.Lx224_240:
                        mov              qword ptr [rsp + 0], 0                         # cmp_test
                        mov              qword ptr [rsp + 8], 0                         # cmp_test
                                                                                        jmp   n135_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n136_binop_α
.Lx225_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n136_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # cmp_test
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # binop
                        mov              qword ptr [rsp + 8], rdx                       # binop
                                                                                        jmp   n137_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # binop
                        mov              qword ptr [1879052288], rax                    # fact
                        mov              qword ptr [1879052296], rdx                    # fact
                                                                                        jmp   n145_save_restore_α
#=======================================================================================================================
#         fact = n * fact(n - 1)                         :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:
                        sub              rsp, 256
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 192], 0                       # stmt_claim
                        mov              qword ptr [rsp + 200], 0                       # stmt_claim
                        mov              qword ptr [rsp + 208], 0                       # stmt_claim
                        mov              qword ptr [rsp + 216], 0                       # stmt_claim
                        mov              qword ptr [rsp + 224], 0                       # stmt_claim
                        mov              qword ptr [rsp + 232], 0                       # stmt_claim
                        mov              qword ptr [rsp + 240], 0                       # stmt_claim
                        mov              qword ptr [rsp + 248], 0                       # stmt_claim
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 144], rax                     # n
                        mov              qword ptr [rsp + 152], rdx                     # n
                                                                                        jmp   n139_var_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 224], rax                     # n
                        mov              qword ptr [rsp + 232], rdx                     # n
                                                                                        jmp   n140_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:
                        mov              qword ptr [rsp + 240], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 248], rax                     # lit_integer
                                                                                        jmp   n141_binop_α
.Lx230_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n141_binop_α:
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 6
                                                                                        jne   .Lx231_0
                        mov              rax, qword ptr [rsp + 232]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 208], 6
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n142_call_α
.Lx231_0:
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx231_240
                        add              rsp, 256
                                                                                        jmp   n145_save_restore_α
.Lx231_240:
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n142_call_α
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx233_20
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx233_21
.Lx233_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 208]                     # v
                        mov              rdx, qword ptr [rsp + 216]                     # v
                        call             rt_arg_stage@PLT
.Lx233_21:
                        mov              rdi, qword ptr [rip + .Lx233_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx233_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx233_3]
                        lea              rdx, [rip + .Lx233_4]
                                                                                        jmp   rax
.Lx233_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx233_2
.Lx233_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx233_2
.Lx233_1:
                        call             rt_faildescr@PLT
.Lx233_2:
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx233_240
                        add              rsp, 256
                                                                                        jmp   n145_save_restore_α
.Lx233_240:
                                                                                        jmp   n143_binop_α
n142_call_β:
                                                                                        jmp   n145_save_restore_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "fact"
#-----------------------------------------------------------------------------------------------------------------------
n143_binop_α:
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 6
                                                                                        jne   .Lx234_0
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 6
                                                                                        jne   .Lx234_0
                        mov              rax, qword ptr [rsp + 152]
                        mov              rcx, qword ptr [rsp + 168]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 128], 6
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n144_assign_α
.Lx234_0:
                        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx234_240
                        add              rsp, 256
                                                                                        jmp   n145_save_restore_α
.Lx234_240:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n144_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [1879052288], rax                    # fact
                        mov              qword ptr [1879052296], rdx                    # fact
                        add              rsp, 256
                                                                                        jmp   n145_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n145_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n146_goto_α:
                                                                                        jmp   n96_lit_integer_α
n146_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n147_goto_α:
                                                                                        jmp   n104_lit_string_α
n147_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n148_goto_α:
                                                                                        jmp   n111_lit_integer_α
n148_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n149_goto_α:
                                                                                        jmp   n119_lit_integer_α
n149_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n150_goto_α:
                                                                                        jmp   n151_var_α
n150_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
#         fact2 = EQ(n, 1) 1                             :s(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 0], rax                       # n
                        mov              qword ptr [rsp + 8], rdx                       # n
                                                                                        jmp   n152_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n153_coerce_numeric_α
.Lx244_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n153_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 7
                                                                                        je    .Lx246_1
                        cmp              eax, 6
                                                                                        jne   .Lx246_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx246_0
.Lx246_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # coerce_numeric
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # coerce_numeric
                                                                                        jmp   n154_coerce_numeric_α
.Lx246_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # coerce_numeric
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n154_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n154_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 7
                                                                                        je    .Lx248_1
                        cmp              eax, 6
                                                                                        jne   .Lx248_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx248_0
.Lx248_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # coerce_numeric
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # coerce_numeric
                                                                                        jmp   n155_cmp_test_α
.Lx248_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # coerce_numeric
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n155_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n155_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx250_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n159_var_α
.Lx250_240:
                        mov              qword ptr [rsp + 0], 0                         # cmp_test
                        mov              qword ptr [rsp + 8], 0                         # cmp_test
                                                                                        jmp   n156_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6                         # lit_integer
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 8], rax                       # lit_integer
                                                                                        jmp   n157_binop_α
.Lx251_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n157_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # cmp_test
                        mov              rsi, qword ptr [rsp + 40]                      # cmp_test
                        mov              rdx, qword ptr [rsp + 16]                      # b
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # binop
                        mov              qword ptr [rsp + 8], rdx                       # binop
                                                                                        jmp   n158_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # binop
                        mov              qword ptr [1879052320], rax                    # fact2
                        mov              qword ptr [1879052328], rdx                    # fact2
                        add              rsp, 112
                                                                                        jmp   n145_save_restore_α
#=======================================================================================================================
#         fact2 = n * fact2(n - 1)                       :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:
                        sub              rsp, 960
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0                         # stmt_claim
                        mov              qword ptr [rsp + 16], 0                        # stmt_claim
                        mov              qword ptr [rsp + 24], 0                        # stmt_claim
                        mov              qword ptr [rsp + 32], 0                        # stmt_claim
                        mov              qword ptr [rsp + 40], 0                        # stmt_claim
                        mov              qword ptr [rsp + 48], 0                        # stmt_claim
                        mov              qword ptr [rsp + 56], 0                        # stmt_claim
                        mov              qword ptr [rsp + 64], 0                        # stmt_claim
                        mov              qword ptr [rsp + 72], 0                        # stmt_claim
                        mov              qword ptr [rsp + 80], 0                        # stmt_claim
                        mov              qword ptr [rsp + 88], 0                        # stmt_claim
                        mov              qword ptr [rsp + 96], 0                        # stmt_claim
                        mov              qword ptr [rsp + 104], 0                       # stmt_claim
                        mov              qword ptr [rsp + 112], 0                       # stmt_claim
                        mov              qword ptr [rsp + 120], 0                       # stmt_claim
                        mov              qword ptr [rsp + 128], 0                       # stmt_claim
                        mov              qword ptr [rsp + 136], 0                       # stmt_claim
                        mov              qword ptr [rsp + 144], 0                       # stmt_claim
                        mov              qword ptr [rsp + 152], 0                       # stmt_claim
                        mov              qword ptr [rsp + 160], 0                       # stmt_claim
                        mov              qword ptr [rsp + 168], 0                       # stmt_claim
                        mov              qword ptr [rsp + 176], 0                       # stmt_claim
                        mov              qword ptr [rsp + 184], 0                       # stmt_claim
                        mov              qword ptr [rsp + 192], 0                       # stmt_claim
                        mov              qword ptr [rsp + 200], 0                       # stmt_claim
                        mov              qword ptr [rsp + 208], 0                       # stmt_claim
                        mov              qword ptr [rsp + 216], 0                       # stmt_claim
                        mov              qword ptr [rsp + 224], 0                       # stmt_claim
                        mov              qword ptr [rsp + 232], 0                       # stmt_claim
                        mov              qword ptr [rsp + 240], 0                       # stmt_claim
                        mov              qword ptr [rsp + 248], 0                       # stmt_claim
                        mov              qword ptr [rsp + 256], 0                       # stmt_claim
                        mov              qword ptr [rsp + 264], 0                       # stmt_claim
                        mov              qword ptr [rsp + 272], 0                       # stmt_claim
                        mov              qword ptr [rsp + 280], 0                       # stmt_claim
                        mov              qword ptr [rsp + 288], 0                       # stmt_claim
                        mov              qword ptr [rsp + 296], 0                       # stmt_claim
                        mov              qword ptr [rsp + 304], 0                       # stmt_claim
                        mov              qword ptr [rsp + 312], 0                       # stmt_claim
                        mov              qword ptr [rsp + 320], 0                       # stmt_claim
                        mov              qword ptr [rsp + 328], 0                       # stmt_claim
                        mov              qword ptr [rsp + 336], 0                       # stmt_claim
                        mov              qword ptr [rsp + 344], 0                       # stmt_claim
                        mov              qword ptr [rsp + 352], 0                       # stmt_claim
                        mov              qword ptr [rsp + 360], 0                       # stmt_claim
                        mov              qword ptr [rsp + 368], 0                       # stmt_claim
                        mov              qword ptr [rsp + 376], 0                       # stmt_claim
                        mov              qword ptr [rsp + 384], 0                       # stmt_claim
                        mov              qword ptr [rsp + 392], 0                       # stmt_claim
                        mov              qword ptr [rsp + 400], 0                       # stmt_claim
                        mov              qword ptr [rsp + 408], 0                       # stmt_claim
                        mov              qword ptr [rsp + 416], 0                       # stmt_claim
                        mov              qword ptr [rsp + 424], 0                       # stmt_claim
                        mov              qword ptr [rsp + 432], 0                       # stmt_claim
                        mov              qword ptr [rsp + 440], 0                       # stmt_claim
                        mov              qword ptr [rsp + 448], 0                       # stmt_claim
                        mov              qword ptr [rsp + 456], 0                       # stmt_claim
                        mov              qword ptr [rsp + 464], 0                       # stmt_claim
                        mov              qword ptr [rsp + 472], 0                       # stmt_claim
                        mov              qword ptr [rsp + 480], 0                       # stmt_claim
                        mov              qword ptr [rsp + 488], 0                       # stmt_claim
                        mov              qword ptr [rsp + 496], 0                       # stmt_claim
                        mov              qword ptr [rsp + 504], 0                       # stmt_claim
                        mov              qword ptr [rsp + 512], 0                       # stmt_claim
                        mov              qword ptr [rsp + 520], 0                       # stmt_claim
                        mov              qword ptr [rsp + 528], 0                       # stmt_claim
                        mov              qword ptr [rsp + 536], 0                       # stmt_claim
                        mov              qword ptr [rsp + 544], 0                       # stmt_claim
                        mov              qword ptr [rsp + 552], 0                       # stmt_claim
                        mov              qword ptr [rsp + 560], 0                       # stmt_claim
                        mov              qword ptr [rsp + 568], 0                       # stmt_claim
                        mov              qword ptr [rsp + 576], 0                       # stmt_claim
                        mov              qword ptr [rsp + 584], 0                       # stmt_claim
                        mov              qword ptr [rsp + 592], 0                       # stmt_claim
                        mov              qword ptr [rsp + 600], 0                       # stmt_claim
                        mov              qword ptr [rsp + 608], 0                       # stmt_claim
                        mov              qword ptr [rsp + 616], 0                       # stmt_claim
                        mov              qword ptr [rsp + 624], 0                       # stmt_claim
                        mov              qword ptr [rsp + 632], 0                       # stmt_claim
                        mov              qword ptr [rsp + 640], 0                       # stmt_claim
                        mov              qword ptr [rsp + 648], 0                       # stmt_claim
                        mov              qword ptr [rsp + 656], 0                       # stmt_claim
                        mov              qword ptr [rsp + 664], 0                       # stmt_claim
                        mov              qword ptr [rsp + 672], 0                       # stmt_claim
                        mov              qword ptr [rsp + 680], 0                       # stmt_claim
                        mov              qword ptr [rsp + 688], 0                       # stmt_claim
                        mov              qword ptr [rsp + 696], 0                       # stmt_claim
                        mov              qword ptr [rsp + 704], 0                       # stmt_claim
                        mov              qword ptr [rsp + 712], 0                       # stmt_claim
                        mov              qword ptr [rsp + 720], 0                       # stmt_claim
                        mov              qword ptr [rsp + 728], 0                       # stmt_claim
                        mov              qword ptr [rsp + 736], 0                       # stmt_claim
                        mov              qword ptr [rsp + 744], 0                       # stmt_claim
                        mov              qword ptr [rsp + 752], 0                       # stmt_claim
                        mov              qword ptr [rsp + 760], 0                       # stmt_claim
                        mov              qword ptr [rsp + 768], 0                       # stmt_claim
                        mov              qword ptr [rsp + 776], 0                       # stmt_claim
                        mov              qword ptr [rsp + 784], 0                       # stmt_claim
                        mov              qword ptr [rsp + 792], 0                       # stmt_claim
                        mov              qword ptr [rsp + 800], 0                       # stmt_claim
                        mov              qword ptr [rsp + 808], 0                       # stmt_claim
                        mov              qword ptr [rsp + 816], 0                       # stmt_claim
                        mov              qword ptr [rsp + 824], 0                       # stmt_claim
                        mov              qword ptr [rsp + 832], 0                       # stmt_claim
                        mov              qword ptr [rsp + 840], 0                       # stmt_claim
                        mov              qword ptr [rsp + 848], 0                       # stmt_claim
                        mov              qword ptr [rsp + 856], 0                       # stmt_claim
                        mov              qword ptr [rsp + 864], 0                       # stmt_claim
                        mov              qword ptr [rsp + 872], 0                       # stmt_claim
                        mov              qword ptr [rsp + 880], 0                       # stmt_claim
                        mov              qword ptr [rsp + 888], 0                       # stmt_claim
                        mov              qword ptr [rsp + 896], 0                       # stmt_claim
                        mov              qword ptr [rsp + 904], 0                       # stmt_claim
                        mov              qword ptr [rsp + 912], 0                       # stmt_claim
                        mov              qword ptr [rsp + 920], 0                       # stmt_claim
                        mov              qword ptr [rsp + 928], 0                       # stmt_claim
                        mov              qword ptr [rsp + 936], 0                       # stmt_claim
                        mov              qword ptr [rsp + 944], 0                       # stmt_claim
                        mov              qword ptr [rsp + 952], 0                       # stmt_claim
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 848], rax                     # n
                        mov              qword ptr [rsp + 856], rdx                     # n
                                                                                        jmp   n160_var_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]                    # n
                        mov              qword ptr [rsp + 928], rax                     # n
                        mov              qword ptr [rsp + 936], rdx                     # n
                                                                                        jmp   n161_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:
                        mov              qword ptr [rsp + 944], 6                       # lit_integer
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 952], rax                     # lit_integer
                                                                                        jmp   n162_binop_α
.Lx256_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n162_binop_α:
                        mov              eax, dword ptr [rsp + 928]
                        cmp              eax, 6
                                                                                        jne   .Lx257_0
                        mov              rax, qword ptr [rsp + 936]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 912], 6
                        mov              qword ptr [rsp + 920], rax
                                                                                        jmp   n163_call_α
.Lx257_0:
                        mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx257_240
                        add              rsp, 960
                                                                                        jmp   n145_save_restore_α
.Lx257_240:
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n163_call_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx259_20
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx259_21
.Lx259_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 912]                     # v
                        mov              rdx, qword ptr [rsp + 920]                     # v
                        call             rt_arg_stage@PLT
.Lx259_21:
                        mov              rdi, qword ptr [rip + .Lx259_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx259_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx259_3]
                        lea              rdx, [rip + .Lx259_4]
                                                                                        jmp   rax
.Lx259_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx259_2
.Lx259_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx259_2
.Lx259_1:
                        call             rt_faildescr@PLT
.Lx259_2:
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx259_240
                        add              rsp, 960
                                                                                        jmp   n145_save_restore_α
.Lx259_240:
                                                                                        jmp   n164_binop_α
n163_call_β:
                                                                                        jmp   n145_save_restore_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "fact2"
#-----------------------------------------------------------------------------------------------------------------------
n164_binop_α:
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 6
                                                                                        jne   .Lx260_0
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 6
                                                                                        jne   .Lx260_0
                        mov              rax, qword ptr [rsp + 856]
                        mov              rcx, qword ptr [rsp + 872]
                        imul             rax, rcx
                        mov              qword ptr [rsp + 832], 6
                        mov              qword ptr [rsp + 840], rax
                                                                                        jmp   n165_assign_α
.Lx260_0:
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx260_240
                        add              rsp, 960
                                                                                        jmp   n145_save_restore_α
.Lx260_240:
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                                                                                        jmp   n165_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n165_assign_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [1879052320], rax                    # fact2
                        mov              qword ptr [1879052328], rdx                    # fact2
                        add              rsp, 960
                                                                                        jmp   n145_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n166_goto_α:
                                                                                        jmp   n119_lit_integer_α
n166_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n167_goto_α:
                                                                                        jmp   n127_lit_string_α
n167_goto_β:
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
