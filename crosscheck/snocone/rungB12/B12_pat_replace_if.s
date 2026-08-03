                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "x"
.Lgvan1:                .string          "s"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_assign_α
.Lx27_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # x
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_assign_α
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "the answer"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # s
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n7_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:
                                                                                        jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # x
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_coerce_numeric_α
.Lx40_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx42_1
                        cmp              eax, 3
                                                                                        jne   .Lx42_0
                        mov              eax, dword ptr [rsp + 16]                      # lit_integer
                        cmp              eax, 3
                                                                                        jne   .Lx42_0
.Lx42_1:
                        mov              rax, qword ptr [rsp + 32]                      # var
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n12_coerce_numeric_α
.Lx42_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # lit_integer
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n12_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # lit_integer
                        cmp              eax, 5
                                                                                        je    .Lx44_1
                        cmp              eax, 3
                                                                                        jne   .Lx44_0
                        mov              eax, dword ptr [rsp + 48]                      # var
                        cmp              eax, 3
                                                                                        jne   .Lx44_0
.Lx44_1:
                        mov              rax, qword ptr [rsp + 32]                      # lit_integer
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # lit_integer
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n13_cmp_test_α
.Lx44_0:
                        lea              rdi, [rsp + 32]                                # lit_integer
                        lea              rsi, [rsp + 48]                                # var
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n13_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n13_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx46_240
                        add              rsp, 16
                                                                                        jmp   n20_statement_end_α
.Lx46_240:
                                                                                        jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n15_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n15_match_begin_α:
                        sub              rsp, 192
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
                        mov              rdi, qword ptr [rsp + 192]                     # var
                        mov              rsi, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 176], rdi
                        mov              qword ptr [rsp + 184], rsi
                        mov              qword ptr [rsp + 112], r13                     # outer_Σ
                        mov              qword ptr [rsp + 120], r14                     # outer_δ
                        mov              qword ptr [rsp + 128], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 136], rax                     # cap_gen
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]                    # cas_top
                        mov              qword ptr [r10 + 0], 0
                        mov              qword ptr [r10 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r10 + 16], rax                      # cas_patstk
                        add              r10, 24
                        mov              qword ptr [1879048192], r10                    # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx49_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n16_match_lit_α
n15_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx49_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx49_1
                                                                                        jmp   .Lx49_0
.Lx49_1:
                        mov              r10, qword ptr [1879048192]
.Lx49_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx49_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 112]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 120]                     # outer_δ
                        mov              r15, qword ptr [rsp + 128]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 136]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n20_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n16_match_lit_α:
                        mov              eax, r14d
                        add              eax, 6
                        cmp              eax, r15d
                                                                                        jg    n15_match_begin_β
                        movsxd           rcx, r14d
                        mov              edx, dword ptr [r13+rcx]
                        cmp              edx, 2004053601
                                                                                        jne   n15_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+4]
                        cmp              eax, 101
                                                                                        jne   n15_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+5]
                        cmp              eax, 114
                                                                                        jne   n15_match_begin_β
                        add              r14d, 6
                                                                                        jmp   n17_match_end_α
n16_match_lit_β:
                        sub              r14d, 6
                                                                                        jmp   n15_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx53_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx53_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 96], eax
                        mov              qword ptr [rsp + 120], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx53_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx53_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx53_1:
                        test             rax, rax
                                                                                        je    .Lx53_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx53_3]
                        lea              rdx, [rip + .Lx53_4]
                                                                                        jmp   rax
.Lx53_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx53_1
.Lx53_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx53_1
.Lx53_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx53_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx53_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 112]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 120]                     # outer_δ
                        mov              r15, qword ptr [rsp + 128]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 136]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n19_match_replace_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "question"
#-----------------------------------------------------------------------------------------------------------------------
n19_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx56_0]                 # name
                        mov              rsi, qword ptr [rsp + 192]                     # sub_lo
                        mov              rdx, qword ptr [rsp + 200]                     # sub_hi
                        mov              ecx, dword ptr [rsp + 80]                      # start
                        mov              r8, qword ptr [rsp + 104]                      # end
                        lea              r9, [rsp + 0]                                  # lit_string
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx56_1
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "s"
.Lx56_1:
                                                                                        jmp   n20_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:
                                                                                        jmp   n21_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:
                                                                                        jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # s
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n23_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx62_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n24_statement_end_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:
                        add              rsp, 352
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
