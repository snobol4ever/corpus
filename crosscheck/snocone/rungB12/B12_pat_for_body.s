                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "words"
.Lgvan1:                .string          "i"
.Lgvan2:                .string          "w"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 3
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 3
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
n0_statement_begin_β:
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 336
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
                        mov              qword ptr [rsp + 16], 2                        # result
                        mov              dword ptr [rsp + 20], 11
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n2_assign_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "cat dog fox"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052288], rax                    # words
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_lit_integer_α
n4_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rsp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n6_assign_α
.Lx34_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [1879052304], rax                    # i
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [1879052304]                    # i
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 80], rax                      # result
                        mov              qword ptr [rsp + 88], rdx
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rsp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n9_coerce_numeric_α
.Lx37_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n9_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 5
                                                                                        je    .Lx39_1
                        cmp              eax, 3
                                                                                        jne   .Lx39_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx39_0
.Lx39_1:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n10_coerce_numeric_α
.Lx39_0:
                        lea              rdi, [rsp + 80]                                # self
                        lea              rsi, [rsp + 64]                                # other
                        lea              rdx, [rsp + 48]                                # out
                        mov              rcx, 118                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n10_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n10_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 5
                                                                                        je    .Lx41_1
                        cmp              eax, 3
                                                                                        jne   .Lx41_0
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 3
                                                                                        jne   .Lx41_0
.Lx41_1:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n11_cmp_test_α
.Lx41_0:
                        lea              rdi, [rsp + 64]                                # self
                        lea              rsi, [rsp + 80]                                # other
                        lea              rdx, [rsp + 32]                                # out
                        mov              rcx, 119                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n11_cmp_test_α
#-----------------------------------------------------------------------------------------------------------------------
n11_cmp_test_α:
                        lea              rdi, [rsp + 48]                                # a
                        lea              rsi, [rsp + 32]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jle   .Lx43_240
                        add              rsp, 336
                                                                                        jmp   n25_statement_end_α
.Lx43_240:
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # words
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 224], r13                     # outer_Σ
                        mov              qword ptr [rsp + 232], r14                     # outer_δ
                        mov              qword ptr [rsp + 240], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 248], rax                     # cap_gen
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx46_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n14_match_assign_save_α
n13_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx46_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx46_1
                                                                                        jmp   .Lx46_0
.Lx46_1:
.Lx46_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx46_2
                        mov              rax, qword ptr [r12 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rsp + 224]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 232]                     # outer_δ
                        mov              r15, qword ptr [rsp + 240]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 248]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n15_match_break_α
n14_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n13_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx50_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx50_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n13_match_begin_β
.Lx50_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx50_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx50_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n13_match_begin_β
.Lx50_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx50_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx50_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n13_match_begin_β
.Lx50_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx50_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx50_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n13_match_begin_β
.Lx50_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx50_1
                        add              ecx, 1
                                                                                        jmp   .Lx50_0
.Lx50_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n16_match_assign_cond_α
n15_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n13_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n17_match_len_α
n16_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n15_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n16_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   n18_match_end_α
n17_match_len_β:
                        sub              r14d, 1
                                                                                        jmp   n16_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_end_α:
                        mov              r10, r12
.Lx55_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx55_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx55_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx55_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx55_1:
                        test             rax, rax
                                                                                        je    .Lx55_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx55_3]
                        lea              rdx, [rip + .Lx55_4]
                                                                                        jmp   rax
.Lx55_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx55_1
.Lx55_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx55_1
.Lx55_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx55_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx55_6
                        mov              r13, qword ptr [rsp + 224]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 232]                     # outer_δ
                        mov              r15, qword ptr [rsp + 240]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 248]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [1879052320]                    # w
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 144], rax                     # result
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n20_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 144]                     # val
                        mov              rdx, qword ptr [rsp + 152]                     # val
                        mov              rdi, qword ptr [rip + .Lx57_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n21_var_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [1879052304]                    # i
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 112], rax                     # result
                        mov              qword ptr [rsp + 120], rdx
                                                                                        jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rsp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n23_binop_α
.Lx59_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n23_binop_α:
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 3
                                                                                        jne   .Lx60_0
                        mov              rax, qword ptr [rsp + 120]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 96], 3
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n24_assign_α
.Lx60_0:
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx60_240
                        add              rsp, 368
                                                                                        jmp   main_γ
.Lx60_240:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n24_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [1879052304], rax                    # i
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:
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
                        .section         .rodata
.S0:                    .string          "w"
                        .text
                        .section         .note.GNU-stack,"",@progbits
