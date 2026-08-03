                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "X"
.Lgvan1:                .string          "Y"
.Lgvan2:                .string          "Z"
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
#=======================================================================================================================
#  '(A!(C:D))' ? POS(0) BAL . X RPOS(0)   :F(N1)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
n0_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_match_begin_α
n1_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n58_statement_begin_α
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          "(A!(C:D))"
#-----------------------------------------------------------------------------------------------------------------------
n2_match_begin_α:
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
                        mov              rdi, qword ptr [rsp + 208]                     # lit_string
                        mov              rsi, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 64], r13                      # outer_Σ
                        mov              qword ptr [rsp + 72], r14                      # outer_δ
                        mov              qword ptr [rsp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 88], rax                      # cap_gen
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
.Lx78_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n3_match_sequence_α
n2_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx78_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx78_1
                                                                                        jmp   .Lx78_0
.Lx78_1:
                        mov              r10, qword ptr [1879048192]
.Lx78_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx78_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 72]                      # outer_δ
                        mov              r15, qword ptr [rsp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 224
                                                                                        jmp   n58_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_match_sequence_α:
                                                                                        jmp   n55_lit_integer_α
n3_match_sequence_as:
                                                                                        jmp   n4_match_end_α
n3_match_sequence_β:
                                                                                        jmp   n51_match_rpos_β
n3_match_sequence_af:
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx82_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx82_9
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
.Lx82_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx82_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx82_1:
                        test             rax, rax
                                                                                        je    .Lx82_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx82_3]
                        lea              rdx, [rip + .Lx82_4]
                                                                                        jmp   rax
.Lx82_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx82_1
.Lx82_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx82_1
.Lx82_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx82_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx82_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 72]                      # outer_δ
                        mov              r15, qword ptr [rsp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n5_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_end_α:
                        add              rsp, 224
                                                                                        jmp   n6_statement_begin_α
n5_statement_end_β:
                        add              rsp, 224
                                                                                        jmp   n58_statement_begin_α
#=======================================================================================================================
#  OUTPUT = 'bal1=' X                      :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_begin_α:
                                                                                        jmp   n7_lit_string_α
n6_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_var_α
n7_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n12_statement_begin_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "bal1="
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # X
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n9_binop_α
n8_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n12_statement_begin_α
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
                                                                                        jmp   n10_assign_α
n9_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n12_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx90_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n11_statement_end_α
n10_assign_β:
                        add              rsp, 48
                                                                                        jmp   n12_statement_begin_α
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n12_statement_begin_α
n11_statement_end_β:
                        add              rsp, 48
                                                                                        jmp   n12_statement_begin_α
#=======================================================================================================================
# T2 '(AB)+(CD)' ? POS(0) BAL . Y RPOS(0)  :F(N2)
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:
                                                                                        jmp   n13_lit_string_α
n12_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_match_begin_α
n13_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n64_statement_begin_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "(AB)+(CD)"
#-----------------------------------------------------------------------------------------------------------------------
n14_match_begin_α:
                        sub              rsp, 480
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
                        mov              rdi, qword ptr [rsp + 480]                     # lit_string
                        mov              rsi, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 352], r13                     # outer_Σ
                        mov              qword ptr [rsp + 360], r14                     # outer_δ
                        mov              qword ptr [rsp + 368], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 376], rax                     # cap_gen
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
.Lx97_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n15_match_sequence_α
n14_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx97_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx97_1
                                                                                        jmp   .Lx97_0
.Lx97_1:
                        mov              r10, qword ptr [1879048192]
.Lx97_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx97_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 352]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 360]                     # outer_δ
                        mov              r15, qword ptr [rsp + 368]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 376]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 496
                                                                                        jmp   n64_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n15_match_sequence_α:
                                                                                        jmp   n48_lit_integer_α
n15_match_sequence_as:
                                                                                        jmp   n16_match_end_α
n15_match_sequence_β:
                                                                                        jmp   n44_match_rpos_β
n15_match_sequence_af:
                                                                                        jmp   n14_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx101_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx101_9
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
.Lx101_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx101_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx101_1:
                        test             rax, rax
                                                                                        je    .Lx101_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx101_3]
                        lea              rdx, [rip + .Lx101_4]
                                                                                        jmp   rax
.Lx101_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx101_1
.Lx101_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx101_1
.Lx101_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx101_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx101_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 352]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 360]                     # outer_δ
                        mov              r15, qword ptr [rsp + 368]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 376]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n17_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:
                        add              rsp, 496
                                                                                        jmp   n18_statement_begin_α
n17_statement_end_β:
                        add              rsp, 496
                                                                                        jmp   n64_statement_begin_α
#=======================================================================================================================
#  OUTPUT = 'bal2=' Y                      :(T3)
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:
                                                                                        jmp   n19_lit_string_α
n18_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_var_α
n19_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n24_statement_begin_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "bal2="
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # Y
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n21_binop_α
n20_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n24_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n22_assign_α
n21_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n24_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx109_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n23_statement_end_α
n22_assign_β:
                        add              rsp, 48
                                                                                        jmp   n24_statement_begin_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n24_statement_begin_α
n23_statement_end_β:
                        add              rsp, 48
                                                                                        jmp   n24_statement_begin_α
#=======================================================================================================================
# T3 '9395' ? POS(0) BAL . Z RPOS(0)       :F(N3)
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:
                                                                                        jmp   n25_lit_string_α
n24_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n26_match_begin_α
n25_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n70_statement_begin_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "9395"
#-----------------------------------------------------------------------------------------------------------------------
n26_match_begin_α:
                        sub              rsp, 752
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
                        mov              rdi, qword ptr [rsp + 752]                     # lit_string
                        mov              rsi, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 624], r13                     # outer_Σ
                        mov              qword ptr [rsp + 632], r14                     # outer_δ
                        mov              qword ptr [rsp + 640], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 648], rax                     # cap_gen
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
.Lx116_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n27_match_sequence_α
n26_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx116_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx116_1
                                                                                        jmp   .Lx116_0
.Lx116_1:
                        mov              r10, qword ptr [1879048192]
.Lx116_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx116_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 624]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 632]                     # outer_δ
                        mov              r15, qword ptr [rsp + 640]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 648]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 768
                                                                                        jmp   n70_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n27_match_sequence_α:
                                                                                        jmp   n41_lit_integer_α
n27_match_sequence_as:
                                                                                        jmp   n28_match_end_α
n27_match_sequence_β:
                                                                                        jmp   n37_match_rpos_β
n27_match_sequence_af:
                                                                                        jmp   n26_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n28_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx120_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx120_9
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
.Lx120_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx120_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx120_1:
                        test             rax, rax
                                                                                        je    .Lx120_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx120_3]
                        lea              rdx, [rip + .Lx120_4]
                                                                                        jmp   rax
.Lx120_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx120_1
.Lx120_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx120_1
.Lx120_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx120_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx120_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 624]                     # outer_Σ
                        mov              r14, qword ptr [rsp + 632]                     # outer_δ
                        mov              r15, qword ptr [rsp + 640]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 648]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n29_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_end_α:
                        add              rsp, 768
                                                                                        jmp   n30_statement_begin_α
n29_statement_end_β:
                        add              rsp, 768
                                                                                        jmp   n70_statement_begin_α
#=======================================================================================================================
#  OUTPUT = 'bal3=' Z                      :(END)
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_begin_α:
                                                                                        jmp   n31_lit_string_α
n30_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_var_α
n31_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "bal3="
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # Z
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n33_binop_α
n32_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # lit_string
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n34_assign_α
n33_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx128_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n35_statement_end_α
n34_assign_β:
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   main_γ
n35_statement_end_β:
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rsp + 736], 3                       # result
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 744], rax
                                                                                        jmp   n37_match_rpos_α
n36_lit_integer_β:
                                                                                        jmp   n40_match_assign_cond_β
.Lx131_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n37_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n40_match_assign_cond_β
                                                                                        jmp   n28_match_end_α
n37_match_rpos_β:
                                                                                        jmp   n40_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n39_match_bal_α
n38_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n26_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n39_match_bal_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 4], eax
                        mov              dword ptr [rsp + 8], 0
n39_match_bal_β:
.Lx136_0:
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jge   .Lx136_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 0], 1
                        mov              edx, dword ptr [rsp + 8]
                        cmp              esi, 40
                                                                                        jne   .Lx136_1
                        add              edx, 1
                                                                                        jmp   .Lx136_2
.Lx136_1:
                        cmp              esi, 41
                                                                                        jne   .Lx136_2
                        sub              edx, 1
                        cmp              edx, 0
                                                                                        jl    .Lx136_3
.Lx136_2:
                        mov              dword ptr [rsp + 8], edx
                        test             edx, edx
                                                                                        jne   .Lx136_0
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        mov              r14d, eax
                                                                                        jmp   n40_match_assign_cond_α
.Lx136_3:
                        mov              eax, dword ptr [rsp + 4]
                        mov              r14d, eax
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n26_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n40_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
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
                                                                                        jmp   n36_lit_integer_α
n40_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n39_match_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rsp + 672], 3                       # result
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n42_match_pos_α
n41_lit_integer_β:
                                                                                        jmp   n26_match_begin_β
.Lx139_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n42_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n26_match_begin_β
                                                                                        jmp   n38_match_assign_save_α
n42_match_pos_β:
                                                                                        jmp   n26_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rsp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n44_match_rpos_α
n43_lit_integer_β:
                                                                                        jmp   n47_match_assign_cond_β
.Lx141_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n44_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n47_match_assign_cond_β
                                                                                        jmp   n16_match_end_α
n44_match_rpos_β:
                                                                                        jmp   n47_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n45_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n46_match_bal_α
n45_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n14_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n46_match_bal_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 4], eax
                        mov              dword ptr [rsp + 8], 0
n46_match_bal_β:
.Lx146_0:
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jge   .Lx146_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 0], 1
                        mov              edx, dword ptr [rsp + 8]
                        cmp              esi, 40
                                                                                        jne   .Lx146_1
                        add              edx, 1
                                                                                        jmp   .Lx146_2
.Lx146_1:
                        cmp              esi, 41
                                                                                        jne   .Lx146_2
                        sub              edx, 1
                        cmp              edx, 0
                                                                                        jl    .Lx146_3
.Lx146_2:
                        mov              dword ptr [rsp + 8], edx
                        test             edx, edx
                                                                                        jne   .Lx146_0
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        mov              r14d, eax
                                                                                        jmp   n47_match_assign_cond_α
.Lx146_3:
                        mov              eax, dword ptr [rsp + 4]
                        mov              r14d, eax
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n14_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n47_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
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
                                                                                        jmp   n43_lit_integer_α
n47_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n46_match_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        mov              qword ptr [rsp + 400], 3                       # result
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n49_match_pos_α
n48_lit_integer_β:
                                                                                        jmp   n14_match_begin_β
.Lx149_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n49_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n14_match_begin_β
                                                                                        jmp   n45_match_assign_save_α
n49_match_pos_β:
                                                                                        jmp   n14_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        mov              qword ptr [rsp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n51_match_rpos_α
n50_lit_integer_β:
                                                                                        jmp   n54_match_assign_cond_β
.Lx151_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n51_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n54_match_assign_cond_β
                                                                                        jmp   n4_match_end_α
n51_match_rpos_β:
                                                                                        jmp   n54_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n52_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n53_match_bal_α
n52_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n53_match_bal_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 4], eax
                        mov              dword ptr [rsp + 8], 0
n53_match_bal_β:
.Lx156_0:
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jge   .Lx156_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 0], 1
                        mov              edx, dword ptr [rsp + 8]
                        cmp              esi, 40
                                                                                        jne   .Lx156_1
                        add              edx, 1
                                                                                        jmp   .Lx156_2
.Lx156_1:
                        cmp              esi, 41
                                                                                        jne   .Lx156_2
                        sub              edx, 1
                        cmp              edx, 0
                                                                                        jl    .Lx156_3
.Lx156_2:
                        mov              dword ptr [rsp + 8], edx
                        test             edx, edx
                                                                                        jne   .Lx156_0
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        mov              r14d, eax
                                                                                        jmp   n54_match_assign_cond_α
.Lx156_3:
                        mov              eax, dword ptr [rsp + 4]
                        mov              r14d, eax
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n54_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S2]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n50_lit_integer_α
n54_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n53_match_bal_β
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:
                        mov              qword ptr [rsp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n56_match_pos_α
n55_lit_integer_β:
                                                                                        jmp   n2_match_begin_β
.Lx159_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n56_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n2_match_begin_β
                                                                                        jmp   n52_match_assign_save_α
n56_match_pos_β:
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n57_goto_α:
                                                                                        jmp   n58_statement_begin_α
n57_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N1 OUTPUT = 'bal1 FAILED'
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_begin_α:
                                                                                        jmp   n59_lit_string_α
n58_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n60_assign_α
n59_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n12_statement_begin_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "bal1 FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx165_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n61_statement_end_α
n60_assign_β:
                        add              rsp, 16
                                                                                        jmp   n12_statement_begin_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n12_statement_begin_α
n61_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n12_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n62_goto_α:
                                                                                        jmp   n12_statement_begin_α
n62_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n63_goto_α:
                                                                                        jmp   n64_statement_begin_α
n63_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N2 OUTPUT = 'bal2 FAILED'
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:
                                                                                        jmp   n65_lit_string_α
n64_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n66_assign_α
n65_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n24_statement_begin_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "bal2 FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx173_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n67_statement_end_α
n66_assign_β:
                        add              rsp, 16
                                                                                        jmp   n24_statement_begin_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n24_statement_begin_α
n67_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n24_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n68_goto_α:
                                                                                        jmp   n24_statement_begin_α
n68_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n69_goto_α:
                                                                                        jmp   n70_statement_begin_α
n69_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N3 OUTPUT = 'bal3 FAILED'
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_begin_α:
                                                                                        jmp   n71_lit_string_α
n70_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n72_assign_α
n71_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "bal3 FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx181_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n73_statement_end_α
n72_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n73_statement_end_β:
                        add              rsp, 16
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
.S0:                    .string          "Z"
.S1:                    .string          "Y"
.S2:                    .string          "X"
                        .text
                        .section         .note.GNU-stack,"",@progbits
