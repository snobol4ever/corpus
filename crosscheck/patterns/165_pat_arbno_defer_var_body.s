                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "Q"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 1
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 1
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
#  Q = 'a'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_assign_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # Q
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
#=======================================================================================================================
#  'aaa' ? POS(0) ARBNO(*Q) RPOS(0)                             :S(Y1)F(N1)
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        sub              rsp, 272
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
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_match_begin_α
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "aaa"
#-----------------------------------------------------------------------------------------------------------------------
n6_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 88], rbp                      # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 96], r13                      # outer_Σ
                        mov              qword ptr [rbp + 104], r14                     # outer_δ
                        mov              qword ptr [rbp + 112], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 120], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 64], rsp                      # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 56], rax                      # patstk_mark
                        mov              dword ptr [rbp + 48], 0                        # start_δ
.Lx63_0:
                        mov              r14d, dword ptr [rbp + 48]
                                                                                        jmp   n7_match_sequence_α
n6_match_begin_β:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, r15d
                                                                                        jg    .Lx63_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx63_1
                                                                                        jmp   .Lx63_0
.Lx63_1:
                        mov              rax, qword ptr [rbp + 56]                      # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 64]
                        mov              r10, qword ptr [1879048192]
.Lx63_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx63_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 104]                     # outer_δ
                        mov              r15, qword ptr [rbp + 112]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 120]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]                      # old_rbp
                        add              rsp, 272
                                                                                        jmp   n42_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n38_lit_integer_α
n7_match_sequence_as:
                                                                                        jmp   n8_match_end_α
n7_match_sequence_β:
                                                                                        jmp   n35_match_rpos_β
n7_match_sequence_af:
                                                                                        jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_end_α:
                        mov              rax, qword ptr [rbp + 56]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 64]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx67_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx67_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx67_1:
                        test             rax, rax
                                                                                        je    .Lx67_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx67_3]
                        lea              rdx, [rip + .Lx67_4]
                                                                                        jmp   rax
.Lx67_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx67_1
.Lx67_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx67_1
.Lx67_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx67_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx67_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 104]                     # outer_δ
                        mov              r15, qword ptr [rbp + 112]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 120]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n9_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_end_α:
                        mov              rbp, qword ptr [rbp + 88]                      # old_rbp
                        add              rsp, 272
                                                                                        jmp   n10_statement_begin_α
#=======================================================================================================================
# Y1 OUTPUT = '1:ok'                                            :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_begin_α:
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_assign_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "1:ok"
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx73_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n13_statement_end_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n14_statement_begin_α
#=======================================================================================================================
# T2 Q = 'aa'
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_begin_α:
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_assign_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "aa"
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # Q
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n17_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n18_statement_begin_α
#=======================================================================================================================
#  'aaa' ? POS(0) ARBNO(*Q) RPOS(0)                             :S(Y2)F(N2)
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:
                                                                                        jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        sub              rsp, 560
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
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_match_begin_α
.Lx84_0:
                        .quad            .Lx84_0_s
.Lx84_0_s:
                        .string          "aaa"
#-----------------------------------------------------------------------------------------------------------------------
n20_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 376], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 384], r13                     # outer_Σ
                        mov              qword ptr [rbp + 392], r14                     # outer_δ
                        mov              qword ptr [rbp + 400], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 408], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 352], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 344], rax                     # patstk_mark
                        mov              dword ptr [rbp + 336], 0                       # start_δ
.Lx86_0:
                        mov              r14d, dword ptr [rbp + 336]
                                                                                        jmp   n21_match_sequence_α
n20_match_begin_β:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, r15d
                                                                                        jg    .Lx86_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx86_1
                                                                                        jmp   .Lx86_0
.Lx86_1:
                        mov              rax, qword ptr [rbp + 344]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 352]
                        mov              r10, qword ptr [1879048192]
.Lx86_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx86_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 384]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 392]                     # outer_δ
                        mov              r15, qword ptr [rbp + 400]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 408]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 376]                     # old_rbp
                        add              rsp, 560
                                                                                        jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n21_match_sequence_α:
                        mov              dword ptr [rbp + 416], r14d
                                                                                        jmp   n32_lit_integer_α
n21_match_sequence_as:
                                                                                        jmp   n22_match_end_α
n21_match_sequence_β:
                                                                                        jmp   n29_match_rpos_β
n21_match_sequence_af:
                                                                                        jmp   n20_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_end_α:
                        mov              rax, qword ptr [rbp + 344]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 352]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx90_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx90_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx90_1:
                        test             rax, rax
                                                                                        je    .Lx90_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx90_3]
                        lea              rdx, [rip + .Lx90_4]
                                                                                        jmp   rax
.Lx90_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx90_1
.Lx90_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx90_1
.Lx90_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx90_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx90_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 384]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 392]                     # outer_δ
                        mov              r15, qword ptr [rbp + 400]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 408]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n23_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:
                        mov              rbp, qword ptr [rbp + 376]                     # old_rbp
                        add              rsp, 560
                                                                                        jmp   n24_statement_begin_α
#=======================================================================================================================
# Y2 OUTPUT = '2:ok'                                            :(END)
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:
                                                                                        jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n26_assign_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "2:ok"
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx96_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n27_statement_end_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rsp + 528], 3                       # result
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n29_match_rpos_α
n28_lit_integer_β:
                                                                                        jmp   n30_match_arbno_β
.Lx99_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n29_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n30_match_arbno_β
                                                                                        jmp   n22_match_end_α
n29_match_rpos_β:
                                                                                        jmp   n30_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n30_match_arbno_α:
                        mov              dword ptr [rbp + 464], r14d
                        mov              dword ptr [rbp + 468], r14d
                        mov              dword ptr [rbp + 472], 0
                        mov              qword ptr [rbp + 488], rsp
                        mov              qword ptr [rbp + 480], 0
                                                                                        jmp   n28_lit_integer_α
n30_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 468]
                        mov              rax, qword ptr [rbp + 480]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 480], rsp
                        mov              rbp, rsp
                        add              rbp, -472
                                                                                        jmp   n31_match_defer_α
n30_match_arbno_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              r14d, eax
                                                                                        je    n31_match_defer_β
                        mov              rbp, qword ptr [rbp + 472]
                        mov              eax, dword ptr [rbp + 472]
                        add              eax, 1
                        mov              dword ptr [rbp + 472], eax
                        mov              dword ptr [rbp + 468], r14d
                                                                                        jmp   n28_lit_integer_α
n30_match_arbno_af:
                        mov              rax, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              rsp, [rbp + 536]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 472]
                        test             ecx, ecx
                                                                                        jz    .Lx102_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 472], ecx
                        mov              qword ptr [rbp + 480], rax
                        lea              rbp, [rax + -472]
                                                                                        jmp   n31_match_defer_β
.Lx102_2:
                        mov              r14d, dword ptr [rbp + 464]
                        mov              rsp, qword ptr [rbp + 488]
                                                                                        jmp   n33_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n31_match_defer_α:
                        mov              rax, qword ptr [1879052288]                    # Q
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx103_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx103_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx103_10
.Lx103_9:
                        xor              eax, eax
.Lx103_10:
                        test             rax, rax
                                                                                        jz    .Lx103_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx103_4]
                        lea              rdx, [rip + .Lx103_5]
                                                                                        jmp   rax
.Lx103_4:
                                                                                        jmp   n30_match_arbno_as
.Lx103_5:
                                                                                        jmp   n30_match_arbno_af
.Lx103_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx103_2:
                        test             rax, rax
                                                                                        je    .Lx103_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx103_7]
                        lea              rdx, [rip + .Lx103_8]
                                                                                        jmp   rax
.Lx103_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx103_2
.Lx103_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx103_2
.Lx103_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n30_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx103_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n30_match_arbno_as
.Lx103_6:
                        add              rsp, 16
                                                                                        jmp   n30_match_arbno_af
n31_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:
                        mov              qword ptr [rsp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n33_match_pos_α
n32_lit_integer_β:
                                                                                        jmp   n20_match_begin_β
.Lx104_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n33_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n20_match_begin_β
                                                                                        jmp   n30_match_arbno_α
n33_match_pos_β:
                                                                                        jmp   n20_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        mov              qword ptr [rsp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n35_match_rpos_α
n34_lit_integer_β:
                                                                                        jmp   n36_match_arbno_β
.Lx106_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n35_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n36_match_arbno_β
                                                                                        jmp   n8_match_end_α
n35_match_rpos_β:
                                                                                        jmp   n36_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n36_match_arbno_α:
                        mov              dword ptr [rbp + 176], r14d
                        mov              dword ptr [rbp + 180], r14d
                        mov              dword ptr [rbp + 184], 0
                        mov              qword ptr [rbp + 200], rsp
                        mov              qword ptr [rbp + 192], 0
                                                                                        jmp   n34_lit_integer_α
n36_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 180]
                        mov              rax, qword ptr [rbp + 192]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 192], rsp
                        mov              rbp, rsp
                        add              rbp, -184
                                                                                        jmp   n37_match_defer_α
n36_match_arbno_as:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              r14d, eax
                                                                                        je    n37_match_defer_β
                        mov              rbp, qword ptr [rbp + 184]
                        mov              eax, dword ptr [rbp + 184]
                        add              eax, 1
                        mov              dword ptr [rbp + 184], eax
                        mov              dword ptr [rbp + 180], r14d
                                                                                        jmp   n34_lit_integer_α
n36_match_arbno_af:
                        mov              rax, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              rsp, [rbp + 248]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 184]
                        test             ecx, ecx
                                                                                        jz    .Lx109_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 184], ecx
                        mov              qword ptr [rbp + 192], rax
                        lea              rbp, [rax + -184]
                                                                                        jmp   n37_match_defer_β
.Lx109_2:
                        mov              r14d, dword ptr [rbp + 176]
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   n39_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n37_match_defer_α:
                        mov              rax, qword ptr [1879052288]                    # Q
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 8
                                                                                        jne   .Lx110_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx110_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx110_10
.Lx110_9:
                        xor              eax, eax
.Lx110_10:
                        test             rax, rax
                                                                                        jz    .Lx110_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx110_4]
                        lea              rdx, [rip + .Lx110_5]
                                                                                        jmp   rax
.Lx110_4:
                                                                                        jmp   n36_match_arbno_as
.Lx110_5:
                                                                                        jmp   n36_match_arbno_af
.Lx110_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx110_2:
                        test             rax, rax
                                                                                        je    .Lx110_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx110_7]
                        lea              rdx, [rip + .Lx110_8]
                                                                                        jmp   rax
.Lx110_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx110_2
.Lx110_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx110_2
.Lx110_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n36_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx110_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n36_match_arbno_as
.Lx110_6:
                        add              rsp, 16
                                                                                        jmp   n36_match_arbno_af
n37_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        mov              qword ptr [rsp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n39_match_pos_α
n38_lit_integer_β:
                                                                                        jmp   n6_match_begin_β
.Lx111_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n39_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n6_match_begin_β
                                                                                        jmp   n36_match_arbno_α
n39_match_pos_β:
                                                                                        jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n40_goto_α:
                                                                                        jmp   n10_statement_begin_α
n40_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n41_goto_α:
                                                                                        jmp   n42_statement_begin_α
n41_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N1 OUTPUT = '1:fail'
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:
                                                                                        jmp   n43_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n44_assign_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "1:fail"
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx118_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n45_statement_end_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n14_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_goto_α:
                                                                                        jmp   n14_statement_begin_α
n46_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n47_goto_α:
                                                                                        jmp   n24_statement_begin_α
n47_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_goto_α:
                                                                                        jmp   n49_statement_begin_α
n48_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N2 OUTPUT = '2:fail'
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:
                                                                                        jmp   n50_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n51_assign_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "2:fail"
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx127_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n52_statement_end_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:
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
.S0:                    .string          "Q"
                        .text
                        .section         .note.GNU-stack,"",@progbits
