                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "x"
.Lgvan1:                .string          "first"
.Lgvan2:                .string          "last"
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
                        sub              rsp, 320
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
                        mov              qword ptr [rsp + 16], 2                        # result
                        mov              dword ptr [rsp + 20], 10
                        mov              rax, qword ptr [rip + .Lx24_0]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n2_assign_α
.Lx24_0:
                        .quad            .Lx24_0_s
.Lx24_0_s:
                        .string          "John Smith"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [1879052288], rax                    # x
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_var_α
n4_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # x
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n6_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 176], r13                     # outer_Σ
                        mov              qword ptr [rsp + 184], r14                     # outer_δ
                        mov              qword ptr [rsp + 192], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 200], rax                     # cap_gen
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
.Lx32_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n7_match_assign_save_α
n6_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx32_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx32_1
                                                                                        jmp   .Lx32_0
.Lx32_1:
.Lx32_2:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx32_2
                        mov              rax, qword ptr [r12 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rsp + 176]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 184]                     # outer_δ
                        mov              r15, qword ptr [rsp + 192]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 200]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n21_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n8_match_break_α
n7_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx36_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx36_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n6_match_begin_β
.Lx36_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx36_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx36_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n6_match_begin_β
.Lx36_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx36_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx36_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n6_match_begin_β
.Lx36_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx36_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx36_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n6_match_begin_β
.Lx36_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32
                                                                                        je    .Lx36_1
                        add              ecx, 1
                                                                                        jmp   .Lx36_0
.Lx36_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n9_match_assign_cond_α
n8_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n10_match_len_α
n9_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n8_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n9_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   n11_match_assign_save_α
n10_match_len_β:
                        sub              r14d, 1
                                                                                        jmp   n9_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n12_match_rem_α
n11_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n10_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_rem_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, r15d
                                                                                        jmp   n13_match_assign_cond_α
n12_match_rem_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n10_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n14_match_end_α
n13_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n12_match_rem_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_end_α:
                        mov              r10, r12
.Lx46_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx46_9
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
.Lx46_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx46_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx46_1:
                        test             rax, rax
                                                                                        je    .Lx46_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx46_3]
                        lea              rdx, [rip + .Lx46_4]
                                                                                        jmp   rax
.Lx46_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx46_1
.Lx46_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx46_1
.Lx46_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx46_6:
                        sub              r12, 24
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx46_6
                        mov              r13, qword ptr [rsp + 176]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 184]                     # outer_δ
                        mov              r15, qword ptr [rsp + 192]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 200]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [1879052304]                    # first
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 64], rax                      # result
                        mov              qword ptr [rsp + 72], rdx
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rsp + 80], 2                        # result
                        mov              dword ptr [rsp + 84], 3
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n17_binop_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          " / "
#-----------------------------------------------------------------------------------------------------------------------
n17_binop_α:
                        mov              rdi, qword ptr [rsp + 64]                      # a
                        mov              rsi, qword ptr [rsp + 72]                      # a
                        mov              rdx, qword ptr [rsp + 80]                      # b
                        mov              rcx, qword ptr [rsp + 88]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                                                                                        jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [1879052320]                    # last
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 96], rax                      # result
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n19_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:
                        mov              rdi, qword ptr [rsp + 48]                      # a
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 96]                      # b
                        mov              rcx, qword ptr [rsp + 104]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                                                                                        jmp   n20_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:
                        mov              rsi, qword ptr [rsp + 32]                      # val
                        mov              rdx, qword ptr [rsp + 40]                      # val
                        mov              rdi, qword ptr [rip + .Lx52_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n21_statement_end_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:
                        add              rsp, 320
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
.S0:                    .string          "first"
.S1:                    .string          "last"
                        .text
                        .section         .note.GNU-stack,"",@progbits
