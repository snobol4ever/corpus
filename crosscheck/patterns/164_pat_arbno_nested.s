                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
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
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_match_begin_α
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          "aabaab"
#-----------------------------------------------------------------------------------------------------------------------
n1_match_begin_α:
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
.Lx41_0:
                        mov              r14d, dword ptr [rbp + 16]
                                                                                        jmp   n2_match_sequence_α
n1_match_begin_β:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, r15d
                                                                                        jg    .Lx41_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx41_1
                                                                                        jmp   .Lx41_0
.Lx41_1:
                        mov              rax, qword ptr [rbp + 24]                      # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 32]
                        mov              r10, qword ptr [1879048192]
.Lx41_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx41_2
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
                                                                                        jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_match_sequence_α:
                        mov              dword ptr [rbp + 96], r14d
                                                                                        jmp   n28_lit_integer_α
n2_match_sequence_as:
                                                                                        jmp   n3_match_end_α
n2_match_sequence_β:
                                                                                        jmp   n22_match_rpos_β
n2_match_sequence_af:
                                                                                        jmp   n1_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_end_α:
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
                        mov              rbp, qword ptr [rbp + 56]                      # old_rbp
                        add              rsp, 336
                                                                                        jmp   n4_lit_string_α
#=======================================================================================================================
# Y1 OUTPUT = '1:ok'                                            :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_assign_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "1:ok"
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx47_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n6_lit_string_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# T2 'aabxa' ? POS(0) ARBNO(ARBNO('a') 'b') RPOS(0)             :S(Y2)F(N2)
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_match_begin_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "aabxa"
#-----------------------------------------------------------------------------------------------------------------------
n7_match_begin_α:
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
                        mov              rdi, qword ptr [rsp + 560]                     # lit_string
                        mov              rsi, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 312], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 320], r13                     # outer_Σ
                        mov              qword ptr [rbp + 328], r14                     # outer_δ
                        mov              qword ptr [rbp + 336], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 344], rax                     # cap_gen
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
                        mov              qword ptr [rbp + 288], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 280], rax                     # patstk_mark
                        mov              dword ptr [rbp + 272], 0                       # start_δ
.Lx50_0:
                        mov              r14d, dword ptr [rbp + 272]
                                                                                        jmp   n8_match_sequence_α
n7_match_begin_β:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, r15d
                                                                                        jg    .Lx50_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx50_1
                                                                                        jmp   .Lx50_0
.Lx50_1:
                        mov              rax, qword ptr [rbp + 280]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 288]
                        mov              r10, qword ptr [1879048192]
.Lx50_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx50_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 320]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 328]                     # outer_δ
                        mov              r15, qword ptr [rbp + 336]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 344]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 200]                     # old_rbp
                        add              rsp, 576
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_match_sequence_α:
                        mov              dword ptr [rbp + 464], r14d
                                                                                        jmp   n19_lit_integer_α
n8_match_sequence_as:
                                                                                        jmp   n9_match_end_α
n8_match_sequence_β:
                                                                                        jmp   n13_match_rpos_β
n8_match_sequence_af:
                                                                                        jmp   n7_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_end_α:
                        mov              rax, qword ptr [rbp + 280]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 288]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx54_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx54_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx54_1:
                        test             rax, rax
                                                                                        je    .Lx54_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx54_3]
                        lea              rdx, [rip + .Lx54_4]
                                                                                        jmp   rax
.Lx54_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx54_1
.Lx54_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx54_1
.Lx54_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx54_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx54_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 320]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 328]                     # outer_δ
                        mov              r15, qword ptr [rbp + 336]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 344]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 200]                     # old_rbp
                        add              rsp, 576
                                                                                        jmp   n10_lit_string_α
#=======================================================================================================================
# Y2 OUTPUT = '2:ok'                                            :(END)
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_assign_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "2:ok"
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx56_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rsp + 544], 3                       # result
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n13_match_rpos_α
n12_lit_integer_β:
                                                                                        jmp   n14_match_arbno_β
.Lx57_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n13_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n14_match_arbno_β
                                                                                        jmp   n9_match_end_α
n13_match_rpos_β:
                                                                                        jmp   n14_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_arbno_α:
                        mov              dword ptr [rbp + 512], r14d
                        mov              dword ptr [rbp + 516], r14d
                        mov              dword ptr [rbp + 520], 0
                        mov              qword ptr [rbp + 536], rsp
                        mov              qword ptr [rbp + 528], 0
                                                                                        jmp   n12_lit_integer_α
n14_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 516]
                        mov              rax, qword ptr [rbp + 528]
                        sub              rsp, 144
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 528], rsp
                        mov              rbp, rsp
                        add              rbp, -520
                                                                                        jmp   n15_match_sequence_α
n14_match_arbno_as:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              r14d, eax
                                                                                        je    n15_match_sequence_β
                        mov              rbp, qword ptr [rbp + 520]
                        mov              eax, dword ptr [rbp + 520]
                        add              eax, 1
                        mov              dword ptr [rbp + 520], eax
                        mov              dword ptr [rbp + 516], r14d
                                                                                        jmp   n12_lit_integer_α
n14_match_arbno_af:
                        mov              rax, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              rsp, [rbp + 664]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 520]
                        test             ecx, ecx
                                                                                        jz    .Lx60_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 520], ecx
                        mov              qword ptr [rbp + 528], rax
                        lea              rbp, [rax + -520]
                                                                                        jmp   n15_match_sequence_β
.Lx60_2:
                        mov              r14d, dword ptr [rbp + 512]
                        mov              rsp, qword ptr [rbp + 536]
                                                                                        jmp   n20_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_sequence_α:
                        mov              dword ptr [rbp + 560], r14d
                                                                                        jmp   n17_match_arbno_α
n15_match_sequence_as:
                                                                                        jmp   n14_match_arbno_as
n15_match_sequence_β:
                                                                                        jmp   n16_match_lit_β
n15_match_sequence_af:
                                                                                        jmp   n14_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n16_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n17_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n17_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n14_match_arbno_as
n16_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n17_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_arbno_α:
                        mov              dword ptr [rbp + 592], r14d
                        mov              dword ptr [rbp + 596], r14d
                        mov              dword ptr [rbp + 600], 0
                        mov              qword ptr [rbp + 616], rsp
                        mov              qword ptr [rbp + 608], 0
                                                                                        jmp   n16_match_lit_α
n17_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 596]
                        mov              rax, qword ptr [rbp + 608]
                        sub              rsp, 48
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 608], rsp
                        mov              rbp, rsp
                        add              rbp, -600
                                                                                        jmp   n18_match_lit_α
n17_match_arbno_as:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              r14d, eax
                                                                                        je    n18_match_lit_β
                        mov              rbp, qword ptr [rbp + 600]
                        mov              eax, dword ptr [rbp + 600]
                        add              eax, 1
                        mov              dword ptr [rbp + 600], eax
                        mov              dword ptr [rbp + 596], r14d
                                                                                        jmp   n16_match_lit_α
n17_match_arbno_af:
                        mov              rax, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              rsp, [rbp + 648]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 600]
                        test             ecx, ecx
                                                                                        jz    .Lx66_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 600], ecx
                        mov              qword ptr [rbp + 608], rax
                        lea              rbp, [rax + -600]
                                                                                        jmp   n18_match_lit_β
.Lx66_2:
                        mov              r14d, dword ptr [rbp + 592]
                        mov              rsp, qword ptr [rbp + 616]
                                                                                        jmp   n14_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n18_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n17_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n17_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n17_match_arbno_as
n18_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n17_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rsp + 368], 3                       # result
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n20_match_pos_α
n19_lit_integer_β:
                                                                                        jmp   n7_match_begin_β
.Lx69_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n20_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n7_match_begin_β
                                                                                        jmp   n14_match_arbno_α
n20_match_pos_β:
                                                                                        jmp   n7_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rsp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n22_match_rpos_α
n21_lit_integer_β:
                                                                                        jmp   n23_match_arbno_β
.Lx71_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n22_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n23_match_arbno_β
                                                                                        jmp   n3_match_end_α
n22_match_rpos_β:
                                                                                        jmp   n23_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n23_match_arbno_α:
                        mov              dword ptr [rbp + 160], r14d
                        mov              dword ptr [rbp + 164], r14d
                        mov              dword ptr [rbp + 168], 0
                        mov              qword ptr [rbp + 184], rsp
                        mov              qword ptr [rbp + 176], 0
                                                                                        jmp   n21_lit_integer_α
n23_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 164]
                        mov              rax, qword ptr [rbp + 176]
                        sub              rsp, 144
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 176], rsp
                        mov              rbp, rsp
                        add              rbp, -168
                                                                                        jmp   n24_match_sequence_α
n23_match_arbno_as:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              r14d, eax
                                                                                        je    n24_match_sequence_β
                        mov              rbp, qword ptr [rbp + 168]
                        mov              eax, dword ptr [rbp + 168]
                        add              eax, 1
                        mov              dword ptr [rbp + 168], eax
                        mov              dword ptr [rbp + 164], r14d
                                                                                        jmp   n21_lit_integer_α
n23_match_arbno_af:
                        mov              rax, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              rsp, [rbp + 312]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 168]
                        test             ecx, ecx
                                                                                        jz    .Lx74_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 168], ecx
                        mov              qword ptr [rbp + 176], rax
                        lea              rbp, [rax + -168]
                                                                                        jmp   n24_match_sequence_β
.Lx74_2:
                        mov              r14d, dword ptr [rbp + 160]
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   n29_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_sequence_α:
                        mov              dword ptr [rbp + 208], r14d
                                                                                        jmp   n26_match_arbno_α
n24_match_sequence_as:
                                                                                        jmp   n23_match_arbno_as
n24_match_sequence_β:
                                                                                        jmp   n25_match_lit_β
n24_match_sequence_af:
                                                                                        jmp   n23_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n25_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n26_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n26_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n23_match_arbno_as
n25_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n26_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n26_match_arbno_α:
                        mov              dword ptr [rbp + 240], r14d
                        mov              dword ptr [rbp + 244], r14d
                        mov              dword ptr [rbp + 248], 0
                        mov              qword ptr [rbp + 264], rsp
                        mov              qword ptr [rbp + 256], 0
                                                                                        jmp   n25_match_lit_α
n26_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 244]
                        mov              rax, qword ptr [rbp + 256]
                        sub              rsp, 48
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 256], rsp
                        mov              rbp, rsp
                        add              rbp, -248
                                                                                        jmp   n27_match_lit_α
n26_match_arbno_as:
                        mov              eax, dword ptr [rbp + 256]
                        cmp              r14d, eax
                                                                                        je    n27_match_lit_β
                        mov              rbp, qword ptr [rbp + 248]
                        mov              eax, dword ptr [rbp + 248]
                        add              eax, 1
                        mov              dword ptr [rbp + 248], eax
                        mov              dword ptr [rbp + 244], r14d
                                                                                        jmp   n25_match_lit_α
n26_match_arbno_af:
                        mov              rax, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              rsp, [rbp + 296]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 248]
                        test             ecx, ecx
                                                                                        jz    .Lx80_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 248], ecx
                        mov              qword ptr [rbp + 256], rax
                        lea              rbp, [rax + -248]
                                                                                        jmp   n27_match_lit_β
.Lx80_2:
                        mov              r14d, dword ptr [rbp + 240]
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   n23_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n27_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n26_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n26_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n26_match_arbno_as
n27_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n26_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rsp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n29_match_pos_α
n28_lit_integer_β:
                                                                                        jmp   n1_match_begin_β
.Lx83_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n29_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n1_match_begin_β
                                                                                        jmp   n23_match_arbno_α
n29_match_pos_β:
                                                                                        jmp   n1_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n30_goto_α:
                                                                                        jmp   n4_lit_string_α
n30_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_goto_α:
                                                                                        jmp   n32_lit_string_α
n31_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N1 OUTPUT = '1:fail'
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n33_assign_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "1:fail"
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx88_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n6_lit_string_α
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n34_goto_α:
                                                                                        jmp   n6_lit_string_α
n34_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_goto_α:
                                                                                        jmp   n10_lit_string_α
n35_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_goto_α:
                                                                                        jmp   n37_lit_string_α
n36_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N2 OUTPUT = '2:fail'
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_assign_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "2:fail"
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx93_0]                 # name
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "OUTPUT"
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
