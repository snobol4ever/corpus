                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "W"
.Lgvan1:                .string          "C"
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
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#  'ab-cd-x' ? POS(0) (ARBNO(LEN(2) . C '-')) . W 'x' RPOS(0)   :S(Y)F(N)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
n0_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_match_begin_α
n1_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n33_statement_begin_α
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          "ab-cd-x"
#-----------------------------------------------------------------------------------------------------------------------
n2_match_begin_α:
                        sub              rsp, 352
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
                        mov              rdi, qword ptr [rsp + 352]                     # lit_string
                        mov              rsi, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 56], rbp                      # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 64], r13                      # outer_Σ
                        mov              qword ptr [rbp + 72], r14                      # outer_δ
                        mov              qword ptr [rbp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 88], rax                      # cap_gen
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
.Lx41_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n3_match_sequence_α
n2_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx41_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx41_1
                                                                                        jmp   .Lx41_0
.Lx41_1:
                        mov              r10, qword ptr [1879048192]
.Lx41_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx41_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 72]                      # outer_δ
                        mov              r15, qword ptr [rbp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]                      # old_rbp
                        add              rsp, 368
                                                                                        jmp   n33_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_match_sequence_α:
                                                                                        jmp   n29_lit_integer_α
n3_match_sequence_as:
                                                                                        jmp   n4_match_end_α
n3_match_sequence_β:
                                                                                        jmp   n19_match_rpos_β
n3_match_sequence_af:
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx45_8:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx45_8
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
.Lx45_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx45_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx45_1:
                        test             rax, rax
                                                                                        je    .Lx45_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx45_3]
                        lea              rdx, [rip + .Lx45_4]
                                                                                        jmp   rax
.Lx45_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx45_1
.Lx45_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx45_1
.Lx45_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx45_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx45_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 72]                      # outer_δ
                        mov              r15, qword ptr [rbp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n5_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_end_α:
                        mov              rbp, qword ptr [rbp + 56]                      # old_rbp
                        add              rsp, 368
                                                                                        jmp   n6_statement_begin_α
n5_statement_end_β:
                        mov              rbp, qword ptr [rbp + 56]
                        add              rsp, 368
                                                                                        jmp   n33_statement_begin_α
#=======================================================================================================================
# Y OUTPUT = 'C=[' C '] W=[' W ']'                              :(END)
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_begin_α:
                                                                                        jmp   n7_lit_string_α
n6_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_var_α
n7_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "C=["
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # C
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n9_binop_α
n8_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_lit_string_α
n9_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_binop_α
n10_lit_string_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "] W=["
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n12_var_α
n11_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # W
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n13_binop_α
n12_var_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n14_lit_string_α
n13_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_binop_α
n14_lit_string_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   main_γ
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # binop
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n16_assign_α
n15_binop_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx59_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n17_statement_end_α
n16_assign_β:
                        add              rsp, 144
                                                                                        jmp   main_γ
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:
                        add              rsp, 144
                                                                                        jmp   main_γ
n17_statement_end_β:
                        add              rsp, 144
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rsp + 336], 3                       # result
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n19_match_rpos_α
n18_lit_integer_β:
                                                                                        jmp   n20_match_lit_β
.Lx62_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n19_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n20_match_lit_β
                                                                                        jmp   n4_match_end_α
n19_match_rpos_β:
                                                                                        jmp   n20_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n23_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 120
                                                                                        jne   n23_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   n18_lit_integer_α
n20_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n23_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n22_match_arbno_α
n21_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_arbno_α:
                        sub              rsp, 528
                        mov              eax, 0
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rax
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rax
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rax
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rax
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rax
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rax
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rax
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rax
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rax
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rax
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rax
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rax
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rax
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rax
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rax
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rax
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rax
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rax
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rax
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rax
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rax
                        mov              qword ptr [rsp + 520], rax
                        mov              dword ptr [rsp + 480], r14d
                        mov              dword ptr [rsp + 484], r14d
                        mov              dword ptr [rsp + 488], 1
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 512], rax
                                                                                        jmp   n23_match_assign_cond_α
n22_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 484]
                        mov              rax, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        sub              rsp, 512
                        mov              edx, 0
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], rdx
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rdx
                        mov              qword ptr [rsp + 48], rdx
                        mov              qword ptr [rsp + 56], rdx
                        mov              qword ptr [rsp + 64], rdx
                        mov              qword ptr [rsp + 72], rdx
                        mov              qword ptr [rsp + 80], rdx
                        mov              qword ptr [rsp + 88], rdx
                        mov              qword ptr [rsp + 96], rdx
                        mov              qword ptr [rsp + 104], rdx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rdx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rdx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rdx
                        mov              qword ptr [rsp + 160], rdx
                        mov              qword ptr [rsp + 168], rdx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rdx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rdx
                        mov              qword ptr [rsp + 208], rdx
                        mov              qword ptr [rsp + 216], rdx
                        mov              qword ptr [rsp + 224], rdx
                        mov              qword ptr [rsp + 232], rdx
                        mov              qword ptr [rsp + 240], rdx
                        mov              qword ptr [rsp + 248], rdx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 264], rdx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rdx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rdx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rdx
                        mov              qword ptr [rsp + 320], rdx
                        mov              qword ptr [rsp + 328], rdx
                        mov              qword ptr [rsp + 336], rdx
                        mov              qword ptr [rsp + 344], rdx
                        mov              qword ptr [rsp + 352], rdx
                        mov              qword ptr [rsp + 360], rdx
                        mov              qword ptr [rsp + 368], rdx
                        mov              qword ptr [rsp + 376], rdx
                        mov              qword ptr [rsp + 384], rdx
                        mov              qword ptr [rsp + 392], rdx
                        mov              qword ptr [rsp + 400], rdx
                        mov              qword ptr [rsp + 408], rdx
                        mov              qword ptr [rsp + 416], rdx
                        mov              qword ptr [rsp + 424], rdx
                        mov              qword ptr [rsp + 432], rdx
                        mov              qword ptr [rsp + 440], rdx
                        mov              qword ptr [rsp + 448], rdx
                        mov              qword ptr [rsp + 456], rdx
                        mov              dword ptr [rsp + 464], r14d
                        mov              dword ptr [rsp + 468], r14d
                        mov              dword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 504], rdx
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 496], rax
                                                                                        jmp   n24_match_sequence_α
n22_match_arbno_as:
                        mov              eax, dword ptr [rsp + 480]
                        cmp              r14d, eax
                                                                                        je    n24_match_sequence_β
                        mov              dword ptr [rsp + 484], r14d
                                                                                        jmp   n23_match_assign_cond_α
n22_match_arbno_af:
                        mov              eax, dword ptr [rsp + 472]
                        test             eax, eax
                                                                                        jnz   .Lx69_2
                        add              rsp, 512
                                                                                        jmp   n24_match_sequence_β
.Lx69_2:
                        mov              r14d, dword ptr [rsp + 464]
                        add              rsp, 512
                                                                                        jmp   n21_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n23_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 512]
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
                                                                                        jmp   n20_match_lit_α
n23_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n22_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_sequence_α:
                        mov              dword ptr [rbp + 256], r14d
                                                                                        jmp   n26_match_assign_save_α
n24_match_sequence_as:
                                                                                        jmp   n22_match_arbno_as
n24_match_sequence_β:
                                                                                        jmp   n25_match_lit_β
n24_match_sequence_af:
                                                                                        jmp   n22_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n25_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n28_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 45
                                                                                        jne   n28_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   n22_match_arbno_as
n25_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n28_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n26_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n27_match_len_α
n26_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n22_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n27_match_len_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jle   .Lx78_240
                        add              rsp, 16
                                                                                        jmp   n22_match_arbno_af
.Lx78_240:
                        add              r14d, 2
                                                                                        jmp   n28_match_assign_cond_α
n27_match_len_β:
                        sub              r14d, 2
                        add              rsp, 16
                                                                                        jmp   n22_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n28_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S1]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n25_match_lit_α
n28_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n27_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        mov              qword ptr [rsp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n30_match_pos_α
n29_lit_integer_β:
                                                                                        jmp   n2_match_begin_β
.Lx81_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n30_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n2_match_begin_β
                                                                                        jmp   n21_match_assign_save_α
n30_match_pos_β:
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n31_goto_α:
                                                                                        jmp   n6_statement_begin_α
n31_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n32_goto_α:
                                                                                        jmp   n33_statement_begin_α
n32_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_begin_α:
                                                                                        jmp   n34_lit_string_α
n33_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n35_assign_α
n34_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx88_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n36_statement_end_α
n35_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n36_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
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
                        .section         .rodata
.S0:                    .string          "W"
.S1:                    .string          "C"
                        .text
                        .section         .note.GNU-stack,"",@progbits
