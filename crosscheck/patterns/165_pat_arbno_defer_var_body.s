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
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # Q
                        mov              qword ptr [1879052296], rdx                    # Q
                        add              rsp, 16
                                                                                        jmp   n2_lit_string_α
#=======================================================================================================================
#  'aaa' ? POS(0) ARBNO(*Q) RPOS(0)                             :S(Y1)F(N1)
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        sub              rsp, 272
                        mov              qword ptr [rsp + 0], 0
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
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_match_head_α
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          "aaa"
#-----------------------------------------------------------------------------------------------------------------------
n3_match_head_α:
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
                        mov              qword ptr [rbp + 64], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 56], rax
                        mov              dword ptr [rbp + 48], 0
.Lx41_0:
                        mov              r14d, dword ptr [rbp + 48]
                                                                                        jmp   n4_match_sequence_α
n3_match_head_β:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, r15d
                                                                                        jg    .Lx41_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx41_1
                                                                                        jmp   .Lx41_0
.Lx41_1:
                        mov              rax, qword ptr [rbp + 56]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 64]
                        mov              r10, qword ptr [1879048192]
.Lx41_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx41_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]
                        add              rsp, 272
                                                                                        jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_match_sequence_α:
                        mov              dword ptr [rbp + 128], r14d
                                                                                        jmp   n26_lit_integer_α
n4_match_sequence_as:
                                                                                        jmp   n5_match_release_α
n4_match_sequence_β:
                                                                                        jmp   n23_match_rpos_β
n4_match_sequence_af:
                                                                                        jmp   n3_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_release_α:
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
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]
                        add              rsp, 272
                                                                                        jmp   n6_lit_string_α
#=======================================================================================================================
# Y1 OUTPUT = '1:ok'                                            :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_assign_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "1:ok"
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx47_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# T2 Q = 'aa'
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n9_assign_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "aa"
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # Q
                        mov              qword ptr [1879052296], rdx                    # Q
                        add              rsp, 16
                                                                                        jmp   n10_lit_string_α
#=======================================================================================================================
#  'aaa' ? POS(0) ARBNO(*Q) RPOS(0)                             :S(Y2)F(N2)
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 560
                        mov              qword ptr [rsp + 0], 0
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
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_match_head_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "aaa"
#-----------------------------------------------------------------------------------------------------------------------
n11_match_head_α:
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
                        mov              qword ptr [rbp + 352], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 344], rax
                        mov              dword ptr [rbp + 336], 0
.Lx52_0:
                        mov              r14d, dword ptr [rbp + 336]
                                                                                        jmp   n12_match_sequence_α
n11_match_head_β:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, r15d
                                                                                        jg    .Lx52_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx52_1
                                                                                        jmp   .Lx52_0
.Lx52_1:
                        mov              rax, qword ptr [rbp + 344]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 352]
                        mov              r10, qword ptr [1879048192]
.Lx52_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx52_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 384]
                        mov              r14, qword ptr [rbp + 392]
                        mov              r15, qword ptr [rbp + 400]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 376]
                        add              rsp, 560
                                                                                        jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_match_sequence_α:
                        mov              dword ptr [rbp + 416], r14d
                                                                                        jmp   n20_lit_integer_α
n12_match_sequence_as:
                                                                                        jmp   n13_match_release_α
n12_match_sequence_β:
                                                                                        jmp   n17_match_rpos_β
n12_match_sequence_af:
                                                                                        jmp   n11_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_release_α:
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
.Lx56_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx56_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx56_1:
                        test             rax, rax
                                                                                        je    .Lx56_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx56_3]
                        lea              rdx, [rip + .Lx56_4]
                                                                                        jmp   rax
.Lx56_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx56_1
.Lx56_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx56_1
.Lx56_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx56_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx56_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 384]
                        mov              r14, qword ptr [rbp + 392]
                        mov              r15, qword ptr [rbp + 400]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 376]
                        add              rsp, 560
                                                                                        jmp   n14_lit_string_α
#=======================================================================================================================
# Y2 OUTPUT = '2:ok'                                            :(END)
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n15_assign_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "2:ok"
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx58_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rsp + 528], 6
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n17_match_rpos_α
n16_lit_integer_β:
                                                                                        jmp   n18_match_arbno_β
.Lx59_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n17_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n18_match_arbno_β
                                                                                        jmp   n13_match_release_α
n17_match_rpos_β:
                                                                                        jmp   n18_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n18_match_arbno_α:
                        mov              dword ptr [rbp + 464], r14d
                        mov              dword ptr [rbp + 468], r14d
                        mov              dword ptr [rbp + 472], 0
                        mov              qword ptr [rbp + 488], rsp
                        mov              qword ptr [rbp + 480], 0
                                                                                        jmp   n16_lit_integer_α
n18_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 468]
                        mov              rax, qword ptr [rbp + 480]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 480], rsp
                        mov              rbp, rsp
                        add              rbp, -472
                                                                                        jmp   n19_match_defer_α
n18_match_arbno_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              r14d, eax
                                                                                        je    n19_match_defer_β
                        mov              rbp, qword ptr [rbp + 472]
                        mov              eax, dword ptr [rbp + 472]
                        add              eax, 1
                        mov              dword ptr [rbp + 472], eax
                        mov              dword ptr [rbp + 468], r14d
                                                                                        jmp   n16_lit_integer_α
n18_match_arbno_af:
                        mov              rax, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              rsp, [rbp + 536]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 472]
                        test             ecx, ecx
                                                                                        jz    .Lx62_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 472], ecx
                        mov              qword ptr [rbp + 480], rax
                        lea              rbp, [rax + -472]
                                                                                        jmp   n19_match_defer_β
.Lx62_2:
                        mov              r14d, dword ptr [rbp + 464]
                        mov              rsp, qword ptr [rbp + 488]
                                                                                        jmp   n21_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_defer_α:
                        mov              rax, qword ptr [1879052288]                    # Q
                        mov              rdx, qword ptr [1879052296]                    # Q
                        cmp              eax, 3
                                                                                        jne   .Lx63_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx63_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx63_10
.Lx63_9:
                        xor              eax, eax
.Lx63_10:
                        test             rax, rax
                                                                                        jz    .Lx63_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx63_4]
                        lea              rdx, [rip + .Lx63_5]
                                                                                        jmp   rax
.Lx63_4:
                                                                                        jmp   n18_match_arbno_as
.Lx63_5:
                                                                                        jmp   n18_match_arbno_af
.Lx63_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx63_2:
                        test             rax, rax
                                                                                        je    .Lx63_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx63_7]
                        lea              rdx, [rip + .Lx63_8]
                                                                                        jmp   rax
.Lx63_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx63_2
.Lx63_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx63_2
.Lx63_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n18_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx63_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n18_match_arbno_as
.Lx63_6:
                        add              rsp, 16
                                                                                        jmp   n18_match_arbno_af
n19_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rsp + 432], 6
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n21_match_pos_α
n20_lit_integer_β:
                                                                                        jmp   n11_match_head_β
.Lx64_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n21_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n11_match_head_β
                                                                                        jmp   n18_match_arbno_α
n21_match_pos_β:
                                                                                        jmp   n11_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rsp + 240], 6
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n23_match_rpos_α
n22_lit_integer_β:
                                                                                        jmp   n24_match_arbno_β
.Lx66_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n23_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n24_match_arbno_β
                                                                                        jmp   n5_match_release_α
n23_match_rpos_β:
                                                                                        jmp   n24_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_arbno_α:
                        mov              dword ptr [rbp + 176], r14d
                        mov              dword ptr [rbp + 180], r14d
                        mov              dword ptr [rbp + 184], 0
                        mov              qword ptr [rbp + 200], rsp
                        mov              qword ptr [rbp + 192], 0
                                                                                        jmp   n22_lit_integer_α
n24_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 180]
                        mov              rax, qword ptr [rbp + 192]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 192], rsp
                        mov              rbp, rsp
                        add              rbp, -184
                                                                                        jmp   n25_match_defer_α
n24_match_arbno_as:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              r14d, eax
                                                                                        je    n25_match_defer_β
                        mov              rbp, qword ptr [rbp + 184]
                        mov              eax, dword ptr [rbp + 184]
                        add              eax, 1
                        mov              dword ptr [rbp + 184], eax
                        mov              dword ptr [rbp + 180], r14d
                                                                                        jmp   n22_lit_integer_α
n24_match_arbno_af:
                        mov              rax, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              rsp, [rbp + 248]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 184]
                        test             ecx, ecx
                                                                                        jz    .Lx69_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 184], ecx
                        mov              qword ptr [rbp + 192], rax
                        lea              rbp, [rax + -184]
                                                                                        jmp   n25_match_defer_β
.Lx69_2:
                        mov              r14d, dword ptr [rbp + 176]
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   n27_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n25_match_defer_α:
                        mov              rax, qword ptr [1879052288]                    # Q
                        mov              rdx, qword ptr [1879052296]                    # Q
                        cmp              eax, 3
                                                                                        jne   .Lx70_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx70_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx70_10
.Lx70_9:
                        xor              eax, eax
.Lx70_10:
                        test             rax, rax
                                                                                        jz    .Lx70_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx70_4]
                        lea              rdx, [rip + .Lx70_5]
                                                                                        jmp   rax
.Lx70_4:
                                                                                        jmp   n24_match_arbno_as
.Lx70_5:
                                                                                        jmp   n24_match_arbno_af
.Lx70_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx70_2:
                        test             rax, rax
                                                                                        je    .Lx70_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx70_7]
                        lea              rdx, [rip + .Lx70_8]
                                                                                        jmp   rax
.Lx70_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx70_2
.Lx70_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx70_2
.Lx70_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n24_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx70_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n24_match_arbno_as
.Lx70_6:
                        add              rsp, 16
                                                                                        jmp   n24_match_arbno_af
n25_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        mov              qword ptr [rsp + 144], 6
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n27_match_pos_α
n26_lit_integer_β:
                                                                                        jmp   n3_match_head_β
.Lx71_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n27_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n3_match_head_β
                                                                                        jmp   n24_match_arbno_α
n27_match_pos_β:
                                                                                        jmp   n3_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n28_goto_α:
                                                                                        jmp   n6_lit_string_α
n28_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_goto_α:
                                                                                        jmp   n30_lit_string_α
n29_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N1 OUTPUT = '1:fail'
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n31_assign_α
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          "1:fail"
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx76_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n32_goto_α:
                                                                                        jmp   n8_lit_string_α
n32_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_goto_α:
                                                                                        jmp   n14_lit_string_α
n33_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_goto_α:
                                                                                        jmp   n35_lit_string_α
n34_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N2 OUTPUT = '2:fail'
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n36_assign_α
.Lx80_0:
                        .quad            .Lx80_0_s
.Lx80_0_s:
                        .string          "2:fail"
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx81_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
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
                        .section         .rodata
.S0:                    .string          "Q"
                        .text
                        .section         .note.GNU-stack,"",@progbits
