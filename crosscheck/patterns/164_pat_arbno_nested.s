                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
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
#  'aabaab' ? POS(0) ARBNO(ARBNO('a') 'b') RPOS(0)              :S(Y1)F(N1)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_match_begin_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "aabaab"
#-----------------------------------------------------------------------------------------------------------------------
n2_match_begin_α:
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
                        mov              rdi, qword ptr [rsp + 320]                     # lit_string
                        mov              rsi, qword ptr [rsp + 328]
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
                        mov              qword ptr [rbp + 32], rsp                      # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 24], rax                      # patstk_mark
                        mov              dword ptr [rbp + 16], 0                        # start_δ
.Lx55_0:
                        mov              r14d, dword ptr [rbp + 16]
                                                                                        jmp   n3_match_sequence_α
n2_match_begin_β:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, r15d
                                                                                        jg    .Lx55_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx55_1
                                                                                        jmp   .Lx55_0
.Lx55_1:
                        mov              rax, qword ptr [rbp + 24]                      # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        mov              r10, qword ptr [1879048192]
.Lx55_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx55_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 72]                      # outer_δ
                        mov              r15, qword ptr [rbp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]                      # old_rbp
                        add              rsp, 336
                                                                                        jmp   n40_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_match_sequence_α:
                        mov              dword ptr [rbp + 96], r14d
                                                                                        jmp   n36_lit_integer_α
n3_match_sequence_as:
                                                                                        jmp   n4_match_end_α
n3_match_sequence_β:
                                                                                        jmp   n30_match_rpos_β
n3_match_sequence_af:
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_end_α:
                        mov              rax, qword ptr [rbp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx59_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx59_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx59_1:
                        test             rax, rax
                                                                                        je    .Lx59_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx59_3]
                        lea              rdx, [rip + .Lx59_4]
                                                                                        jmp   rax
.Lx59_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx59_1
.Lx59_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx59_1
.Lx59_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx59_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx59_6
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
                        add              rsp, 336
                                                                                        jmp   n6_statement_begin_α
#=======================================================================================================================
# Y1 OUTPUT = '1:ok'                                            :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_begin_α:
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_assign_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "1:ok"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx65_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n9_statement_end_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n10_statement_begin_α
#=======================================================================================================================
# T2 'aabxa' ? POS(0) ARBNO(ARBNO('a') 'b') RPOS(0)             :S(Y2)F(N2)
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_begin_α:
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_match_begin_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "aabxa"
#-----------------------------------------------------------------------------------------------------------------------
n12_match_begin_α:
                        sub              rsp, 672
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
                        mov              rdi, qword ptr [rsp + 672]                     # lit_string
                        mov              rsi, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 424], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 432], r13                     # outer_Σ
                        mov              qword ptr [rbp + 440], r14                     # outer_δ
                        mov              qword ptr [rbp + 448], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 456], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 400], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 392], rax                     # patstk_mark
                        mov              dword ptr [rbp + 384], 0                       # start_δ
.Lx72_0:
                        mov              r14d, dword ptr [rbp + 384]
                                                                                        jmp   n13_match_sequence_α
n12_match_begin_β:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, r15d
                                                                                        jg    .Lx72_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx72_1
                                                                                        jmp   .Lx72_0
.Lx72_1:
                        mov              rax, qword ptr [rbp + 392]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 400]
                        mov              r10, qword ptr [1879048192]
.Lx72_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx72_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 432]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 440]                     # outer_δ
                        mov              r15, qword ptr [rbp + 448]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 456]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 424]                     # old_rbp
                        add              rsp, 688
                                                                                        jmp   n47_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_match_sequence_α:
                        mov              dword ptr [rbp + 464], r14d
                                                                                        jmp   n27_lit_integer_α
n13_match_sequence_as:
                                                                                        jmp   n14_match_end_α
n13_match_sequence_β:
                                                                                        jmp   n21_match_rpos_β
n13_match_sequence_af:
                                                                                        jmp   n12_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_end_α:
                        mov              rax, qword ptr [rbp + 392]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 400]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx76_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx76_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx76_1:
                        test             rax, rax
                                                                                        je    .Lx76_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx76_3]
                        lea              rdx, [rip + .Lx76_4]
                                                                                        jmp   rax
.Lx76_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx76_1
.Lx76_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx76_1
.Lx76_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx76_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx76_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 432]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 440]                     # outer_δ
                        mov              r15, qword ptr [rbp + 448]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 456]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n15_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:
                        mov              rbp, qword ptr [rbp + 424]                     # old_rbp
                        add              rsp, 688
                                                                                        jmp   n16_statement_begin_α
#=======================================================================================================================
# Y2 OUTPUT = '2:ok'                                            :(END)
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_assign_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "2:ok"
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx82_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n19_statement_end_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rsp + 656], 3                       # result
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 664], rax
                                                                                        jmp   n21_match_rpos_α
n20_lit_integer_β:
                                                                                        jmp   n22_match_arbno_β
.Lx85_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n21_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n22_match_arbno_β
                                                                                        jmp   n14_match_end_α
n21_match_rpos_β:
                                                                                        jmp   n22_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_arbno_α:
                        mov              dword ptr [rbp + 512], r14d
                        mov              dword ptr [rbp + 516], r14d
                        mov              dword ptr [rbp + 520], 0
                        mov              qword ptr [rbp + 536], rsp
                        mov              qword ptr [rbp + 528], 0
                                                                                        jmp   n20_lit_integer_α
n22_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 516]
                        mov              rax, qword ptr [rbp + 528]
                        sub              rsp, 144
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 528], rsp
                        mov              rbp, rsp
                        add              rbp, -520
                                                                                        jmp   n23_match_sequence_α
n22_match_arbno_as:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              r14d, eax
                                                                                        je    n23_match_sequence_β
                        mov              rbp, qword ptr [rbp + 520]
                        mov              eax, dword ptr [rbp + 520]
                        add              eax, 1
                        mov              dword ptr [rbp + 520], eax
                        mov              dword ptr [rbp + 516], r14d
                                                                                        jmp   n20_lit_integer_α
n22_match_arbno_af:
                        mov              rax, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              rsp, [rbp + 664]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 520]
                        test             ecx, ecx
                                                                                        jz    .Lx88_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 520], ecx
                        mov              qword ptr [rbp + 528], rax
                        lea              rbp, [rax + -520]
                                                                                        jmp   n23_match_sequence_β
.Lx88_2:
                        mov              r14d, dword ptr [rbp + 512]
                        mov              rsp, qword ptr [rbp + 536]
                                                                                        jmp   n28_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n23_match_sequence_α:
                        mov              dword ptr [rbp + 560], r14d
                                                                                        jmp   n25_match_arbno_α
n23_match_sequence_as:
                                                                                        jmp   n22_match_arbno_as
n23_match_sequence_β:
                                                                                        jmp   n24_match_lit_β
n23_match_sequence_af:
                                                                                        jmp   n22_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n24_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n25_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n25_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n22_match_arbno_as
n24_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n25_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n25_match_arbno_α:
                        mov              dword ptr [rbp + 592], r14d
                        mov              dword ptr [rbp + 596], r14d
                        mov              dword ptr [rbp + 600], 0
                        mov              qword ptr [rbp + 616], rsp
                        mov              qword ptr [rbp + 608], 0
                                                                                        jmp   n24_match_lit_α
n25_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 596]
                        mov              rax, qword ptr [rbp + 608]
                        sub              rsp, 48
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 608], rsp
                        mov              rbp, rsp
                        add              rbp, -600
                                                                                        jmp   n26_match_lit_α
n25_match_arbno_as:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              r14d, eax
                                                                                        je    n26_match_lit_β
                        mov              rbp, qword ptr [rbp + 600]
                        mov              eax, dword ptr [rbp + 600]
                        add              eax, 1
                        mov              dword ptr [rbp + 600], eax
                        mov              dword ptr [rbp + 596], r14d
                                                                                        jmp   n24_match_lit_α
n25_match_arbno_af:
                        mov              rax, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              rsp, [rbp + 648]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 600]
                        test             ecx, ecx
                                                                                        jz    .Lx94_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 600], ecx
                        mov              qword ptr [rbp + 608], rax
                        lea              rbp, [rax + -600]
                                                                                        jmp   n26_match_lit_β
.Lx94_2:
                        mov              r14d, dword ptr [rbp + 592]
                        mov              rsp, qword ptr [rbp + 616]
                                                                                        jmp   n22_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n26_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n25_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n25_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n25_match_arbno_as
n26_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n25_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:
                        mov              qword ptr [rsp + 480], 3                       # result
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n28_match_pos_α
n27_lit_integer_β:
                                                                                        jmp   n12_match_begin_β
.Lx97_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n28_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n12_match_begin_β
                                                                                        jmp   n22_match_arbno_α
n28_match_pos_β:
                                                                                        jmp   n12_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        mov              qword ptr [rsp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n30_match_rpos_α
n29_lit_integer_β:
                                                                                        jmp   n31_match_arbno_β
.Lx99_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n30_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n31_match_arbno_β
                                                                                        jmp   n4_match_end_α
n30_match_rpos_β:
                                                                                        jmp   n31_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n31_match_arbno_α:
                        mov              dword ptr [rbp + 160], r14d
                        mov              dword ptr [rbp + 164], r14d
                        mov              dword ptr [rbp + 168], 0
                        mov              qword ptr [rbp + 184], rsp
                        mov              qword ptr [rbp + 176], 0
                                                                                        jmp   n29_lit_integer_α
n31_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 164]
                        mov              rax, qword ptr [rbp + 176]
                        sub              rsp, 144
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 176], rsp
                        mov              rbp, rsp
                        add              rbp, -168
                                                                                        jmp   n32_match_sequence_α
n31_match_arbno_as:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              r14d, eax
                                                                                        je    n32_match_sequence_β
                        mov              rbp, qword ptr [rbp + 168]
                        mov              eax, dword ptr [rbp + 168]
                        add              eax, 1
                        mov              dword ptr [rbp + 168], eax
                        mov              dword ptr [rbp + 164], r14d
                                                                                        jmp   n29_lit_integer_α
n31_match_arbno_af:
                        mov              rax, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              rsp, [rbp + 312]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 168]
                        test             ecx, ecx
                                                                                        jz    .Lx102_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 168], ecx
                        mov              qword ptr [rbp + 176], rax
                        lea              rbp, [rax + -168]
                                                                                        jmp   n32_match_sequence_β
.Lx102_2:
                        mov              r14d, dword ptr [rbp + 160]
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   n37_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n32_match_sequence_α:
                        mov              dword ptr [rbp + 208], r14d
                                                                                        jmp   n34_match_arbno_α
n32_match_sequence_as:
                                                                                        jmp   n31_match_arbno_as
n32_match_sequence_β:
                                                                                        jmp   n33_match_lit_β
n32_match_sequence_af:
                                                                                        jmp   n31_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n33_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n34_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n34_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n31_match_arbno_as
n33_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n34_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n34_match_arbno_α:
                        mov              dword ptr [rbp + 240], r14d
                        mov              dword ptr [rbp + 244], r14d
                        mov              dword ptr [rbp + 248], 0
                        mov              qword ptr [rbp + 264], rsp
                        mov              qword ptr [rbp + 256], 0
                                                                                        jmp   n33_match_lit_α
n34_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 244]
                        mov              rax, qword ptr [rbp + 256]
                        sub              rsp, 48
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 256], rsp
                        mov              rbp, rsp
                        add              rbp, -248
                                                                                        jmp   n35_match_lit_α
n34_match_arbno_as:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              r14d, eax
                                                                                        je    n35_match_lit_β
                        mov              rbp, qword ptr [rbp + 248]
                        mov              eax, dword ptr [rbp + 248]
                        add              eax, 1
                        mov              dword ptr [rbp + 248], eax
                        mov              dword ptr [rbp + 244], r14d
                                                                                        jmp   n33_match_lit_α
n34_match_arbno_af:
                        mov              rax, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              rsp, [rbp + 296]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 248]
                        test             ecx, ecx
                                                                                        jz    .Lx108_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 248], ecx
                        mov              qword ptr [rbp + 256], rax
                        lea              rbp, [rax + -248]
                                                                                        jmp   n35_match_lit_β
.Lx108_2:
                        mov              r14d, dword ptr [rbp + 240]
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   n31_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n35_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n34_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n34_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n34_match_arbno_as
n35_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n34_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rsp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n37_match_pos_α
n36_lit_integer_β:
                                                                                        jmp   n2_match_begin_β
.Lx111_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n37_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n2_match_begin_β
                                                                                        jmp   n31_match_arbno_α
n37_match_pos_β:
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n38_goto_α:
                                                                                        jmp   n6_statement_begin_α
n38_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n39_goto_α:
                                                                                        jmp   n40_statement_begin_α
n39_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N1 OUTPUT = '1:fail'
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n42_assign_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "1:fail"
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx118_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n43_statement_end_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n10_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n44_goto_α:
                                                                                        jmp   n10_statement_begin_α
n44_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n45_goto_α:
                                                                                        jmp   n16_statement_begin_α
n45_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n46_goto_α:
                                                                                        jmp   n47_statement_begin_α
n46_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N2 OUTPUT = '2:fail'
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:
                                                                                        jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n49_assign_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "2:fail"
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx127_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n50_statement_end_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:
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
                        .section         .note.GNU-stack,"",@progbits
