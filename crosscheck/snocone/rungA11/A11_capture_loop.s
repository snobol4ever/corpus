                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "x"
.Lgvan1:                .string          "n"
.Lgvan2:                .string          "v"
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
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_assign_α
n1_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "aaa"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # x
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_statement_end_α
n2_assign_β:
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                                                                                        jmp   n4_statement_begin_α
n3_statement_end_β:
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_lit_integer_α
n4_statement_begin_β:
                        add              rsp, 16
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_assign_α
n5_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n8_statement_begin_α
.Lx34_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n7_statement_end_α
n6_assign_β:
                                                                                        jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:
                                                                                        jmp   n8_statement_begin_α
n7_statement_end_β:
                                                                                        jmp   n8_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:
                                                                                        jmp   n9_var_α
n8_statement_begin_β:
                        add              rsp, 32
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # x
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_var_α
n9_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n25_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n11_coerce_integer_α
n10_var_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n25_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_integer_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 16]                                # var
                        lea              rsi, [rsp + 0]                                 # result
                        mov              rdx, 10682530                                  # codes
                        call             rt_coerce_int_d@PLT
                                                                                        jmp   n12_match_begin_α
n11_coerce_integer_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n25_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n12_match_begin_α:
                        sub              rsp, 256
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
                        mov              rdi, qword ptr [rsp + 288]                     # var
                        mov              rsi, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 240], rdi
                        mov              qword ptr [rsp + 248], rsi
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
.Lx45_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n13_match_sequence_α
n12_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx45_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx45_1
                                                                                        jmp   .Lx45_0
.Lx45_1:
                        mov              r10, qword ptr [1879048192]
.Lx45_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx45_2
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
                        add              rsp, 336
                                                                                        jmp   n25_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n13_match_sequence_α:
                                                                                        jmp   n24_match_pos_α
n13_match_sequence_as:
                                                                                        jmp   n14_match_end_α
n13_match_sequence_β:
                                                                                        jmp   n23_match_assign_cond_β
n13_match_sequence_af:
                                                                                        jmp   n12_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx49_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx49_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx49_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx49_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx49_1:
                        test             rax, rax
                                                                                        je    .Lx49_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx49_3]
                        lea              rdx, [rip + .Lx49_4]
                                                                                        jmp   rax
.Lx49_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx49_1
.Lx49_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx49_1
.Lx49_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx49_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx49_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 112]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 120]                     # outer_δ
                        mov              r15, qword ptr [rsp + 128]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 136]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # v
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n16_assign_α
n15_var_β:
                        add              rsp, 16
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx51_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n17_var_α
n16_assign_β:
                                                                                        jmp   n17_var_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # n
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n18_lit_integer_α
n17_var_β:
                        add              rsp, 16
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n19_binop_α
n18_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n9_var_α
.Lx53_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx54_240
                        add              rsp, 16
                                                                                        jmp   n9_var_α
.Lx54_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n20_assign_α
n19_binop_β:
                        add              rsp, 16
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax                    # n
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n9_var_α
n20_assign_β:
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n22_match_lit_α
n21_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n12_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx59_239
                        add              rsp, 16
                                                                                        jmp   n12_match_begin_β
.Lx59_239:
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        je    .Lx59_240
                        add              rsp, 16
                                                                                        jmp   n12_match_begin_β
.Lx59_240:
                        add              r14d, 1
                                                                                        jmp   n23_match_assign_cond_α
n22_match_lit_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n12_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n23_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n14_match_end_α
n23_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n22_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_pos_α:
                        mov              rax, qword ptr [rsp + 216]
                        cmp              r14d, eax
                                                                                        jne   n12_match_begin_β
                                                                                        jmp   n21_match_assign_save_α
n24_match_pos_β:
                                                                                        jmp   n12_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:
                                                                                        jmp   main_γ
n25_statement_end_β:
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
.S0:                    .string          "v"
                        .text
                        .section         .note.GNU-stack,"",@progbits
