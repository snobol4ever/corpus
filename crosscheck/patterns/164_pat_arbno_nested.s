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
n0_statement_begin_β:
                                                                                        jmp   n36_statement_begin_α
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
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_match_begin_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "aabaab"
#-----------------------------------------------------------------------------------------------------------------------
n2_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 64], r13                      # outer_Σ
                        mov              qword ptr [rbp + 72], r14                      # outer_δ
                        mov              qword ptr [rbp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 88], rax                      # cap_gen
                        mov              qword ptr [rbp + 56], rbp                      # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 32], rsp                      # zls2_mark
                        mov              dword ptr [rbp + 16], 0                        # start_δ
.Lx51_0:
                        mov              r14d, dword ptr [rbp + 16]
                                                                                        jmp   n3_lit_integer_α
n2_match_begin_β:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, r15d
                                                                                        jg    .Lx51_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx51_1
                                                                                        jmp   .Lx51_0
.Lx51_1:
n2_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 32]
                        mov              r13, qword ptr [rbp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 72]                      # outer_δ
                        mov              r15, qword ptr [rbp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]                      # old_rbp
                        add              rsp, 320
                                                                                        jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rsp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n4_match_pos_α
.Lx52_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n4_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n2_match_begin_β
                                                                                        jmp   n5_match_arbno_α
n4_match_pos_β:
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_arbno_α:
                        mov              dword ptr [rbp + 144], r14d
                        mov              dword ptr [rbp + 148], r14d
                        mov              dword ptr [rbp + 152], 0
                        mov              qword ptr [rbp + 168], rsp
                        mov              qword ptr [rbp + 176], rbp
                        mov              qword ptr [rbp + 160], 0
                                                                                        jmp   n6_lit_integer_α
n5_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 148]
                        mov              rax, qword ptr [rbp + 160]
                        sub              rsp, 128
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 160], rsp
                        mov              rbp, rsp
                        add              rbp, -168
                                                                                        jmp   n31_match_arbno_α
n5_match_arbno_as:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              r14d, eax
                                                                                        je    n31_match_arbno_β
                        mov              rbp, qword ptr [rbp + 168]
                        mov              eax, dword ptr [rbp + 152]
                        add              eax, 1
                        mov              dword ptr [rbp + 152], eax
                        mov              dword ptr [rbp + 148], r14d
                                                                                        jmp   n6_lit_integer_α
n5_match_arbno_af:
                        mov              rax, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              rsp, [rbp + 296]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 152]
                        test             ecx, ecx
                                                                                        jz    .Lx55_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 152], ecx
                        mov              qword ptr [rbp + 160], rax
                        lea              rbp, [rax + -168]
                                                                                        jmp   n31_match_arbno_β
.Lx55_2:
                        mov              r14d, dword ptr [rbp + 144]
                        mov              rbp, qword ptr [rbp + 176]
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   n4_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rsp + 288], 3                       # result
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n7_match_rpos_α
.Lx56_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n7_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n5_match_arbno_β
                                                                                        jmp   n8_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n8_match_end_α:
                        mov              r10, r12
.Lx59_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx59_9
                        mov              rsp, qword ptr [rbp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
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
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 72]                      # outer_δ
                        mov              r15, qword ptr [rbp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]                      # old_rbp
                                                                                        jmp   n9_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_end_α:
                        add              rsp, 320
                                                                                        jmp   n10_statement_begin_α
#=======================================================================================================================
# Y1 OUTPUT = '1:ok'                                            :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_begin_α:
                                                                                        jmp   n11_lit_string_α
n10_statement_begin_β:
                                                                                        jmp   n14_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_assign_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "1:ok"
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx65_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n13_statement_end_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n14_statement_begin_α
#=======================================================================================================================
# T2 'aabxa' ? POS(0) ARBNO(ARBNO('a') 'b') RPOS(0)             :S(Y2)F(N2)
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_begin_α:
                                                                                        jmp   n15_lit_string_α
n14_statement_begin_β:
                                                                                        jmp   n43_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
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
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_match_begin_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "aabxa"
#-----------------------------------------------------------------------------------------------------------------------
n16_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 416], r13                     # outer_Σ
                        mov              qword ptr [rbp + 424], r14                     # outer_δ
                        mov              qword ptr [rbp + 432], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 440], rax                     # cap_gen
                        mov              qword ptr [rbp + 408], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 384], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 368], 0                       # start_δ
.Lx72_0:
                        mov              r14d, dword ptr [rbp + 368]
                                                                                        jmp   n17_lit_integer_α
n16_match_begin_β:
                        add              dword ptr [rbp + 368], 1
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, r15d
                                                                                        jg    .Lx72_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx72_1
                                                                                        jmp   .Lx72_0
.Lx72_1:
n16_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 384]
                        mov              r13, qword ptr [rbp + 416]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 424]                     # outer_δ
                        mov              r15, qword ptr [rbp + 432]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 440]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 408]                     # old_rbp
                        add              rsp, 560
                                                                                        jmp   n43_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        mov              qword ptr [rsp + 352], 3                       # result
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n18_match_pos_α
.Lx73_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n18_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n16_match_begin_β
                                                                                        jmp   n19_match_arbno_α
n18_match_pos_β:
                                                                                        jmp   n16_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_arbno_α:
                        mov              dword ptr [rbp + 480], r14d
                        mov              dword ptr [rbp + 484], r14d
                        mov              dword ptr [rbp + 488], 0
                        mov              qword ptr [rbp + 504], rsp
                        mov              qword ptr [rbp + 512], rbp
                        mov              qword ptr [rbp + 496], 0
                                                                                        jmp   n20_lit_integer_α
n19_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 484]
                        mov              rax, qword ptr [rbp + 496]
                        sub              rsp, 128
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 496], rsp
                        mov              rbp, rsp
                        add              rbp, -504
                                                                                        jmp   n28_match_arbno_α
n19_match_arbno_as:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              r14d, eax
                                                                                        je    n28_match_arbno_β
                        mov              rbp, qword ptr [rbp + 504]
                        mov              eax, dword ptr [rbp + 488]
                        add              eax, 1
                        mov              dword ptr [rbp + 488], eax
                        mov              dword ptr [rbp + 484], r14d
                                                                                        jmp   n20_lit_integer_α
n19_match_arbno_af:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              rsp, [rbp + 632]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 488]
                        test             ecx, ecx
                                                                                        jz    .Lx76_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 488], ecx
                        mov              qword ptr [rbp + 496], rax
                        lea              rbp, [rax + -504]
                                                                                        jmp   n28_match_arbno_β
.Lx76_2:
                        mov              r14d, dword ptr [rbp + 480]
                        mov              rbp, qword ptr [rbp + 512]
                        mov              rsp, qword ptr [rbp + 504]
                                                                                        jmp   n18_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rsp + 528], 3                       # result
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n21_match_rpos_α
.Lx77_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n21_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n19_match_arbno_β
                                                                                        jmp   n22_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n22_match_end_α:
                        mov              r10, r12
.Lx80_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx80_9
                        mov              rsp, qword ptr [rbp + 384]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx80_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx80_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx80_1:
                        test             rax, rax
                                                                                        je    .Lx80_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx80_3]
                        lea              rdx, [rip + .Lx80_4]
                                                                                        jmp   rax
.Lx80_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx80_1
.Lx80_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx80_1
.Lx80_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 416]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 424]                     # outer_δ
                        mov              r15, qword ptr [rbp + 432]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 440]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 408]                     # old_rbp
                                                                                        jmp   n23_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:
                        add              rsp, 560
                                                                                        jmp   n24_statement_begin_α
#=======================================================================================================================
# Y2 OUTPUT = '2:ok'                                            :(END)
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:
                                                                                        jmp   n25_lit_string_α
n24_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n26_assign_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "2:ok"
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx86_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n27_statement_end_α
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n28_match_arbno_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                                                                                        jmp   n29_match_lit_α
n28_match_arbno_β:
                                                                                        jmp   n30_match_lit_α
n28_match_arbno_as:
                        mov              eax, dword ptr [rsp + 4]
                        cmp              r14d, eax
                                                                                        je    n30_match_lit_β
                        mov              dword ptr [rsp + 4], r14d
                                                                                        jmp   n29_match_lit_α
n28_match_arbno_af:
                        mov              eax, dword ptr [rsp + 0]
                        cmp              r14d, eax
                                                                                        jne   n30_match_lit_β
                        add              rsp, 16
                                                                                        jmp   n19_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n29_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n28_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n28_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n19_match_arbno_as
n29_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n28_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n30_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n28_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n28_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n28_match_arbno_as
n30_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n28_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n31_match_arbno_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                                                                                        jmp   n32_match_lit_α
n31_match_arbno_β:
                                                                                        jmp   n33_match_lit_α
n31_match_arbno_as:
                        mov              eax, dword ptr [rsp + 4]
                        cmp              r14d, eax
                                                                                        je    n33_match_lit_β
                        mov              dword ptr [rsp + 4], r14d
                                                                                        jmp   n32_match_lit_α
n31_match_arbno_af:
                        mov              eax, dword ptr [rsp + 0]
                        cmp              r14d, eax
                                                                                        jne   n33_match_lit_β
                        add              rsp, 16
                                                                                        jmp   n5_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n32_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n31_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98
                                                                                        jne   n31_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n5_match_arbno_as
n32_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n31_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n31_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97
                                                                                        jne   n31_match_arbno_af
                        add              r14d, 1
                                                                                        jmp   n31_match_arbno_as
n33_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n31_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n34_goto_α:
                                                                                        jmp   n10_statement_begin_α
n34_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_goto_α:
                                                                                        jmp   n36_statement_begin_α
n35_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N1 OUTPUT = '1:fail'
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:
                                                                                        jmp   n37_lit_string_α
n36_statement_begin_β:
                                                                                        jmp   n14_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_assign_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "1:fail"
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx106_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n39_statement_end_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n14_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n40_goto_α:
                                                                                        jmp   n14_statement_begin_α
n40_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n41_goto_α:
                                                                                        jmp   n24_statement_begin_α
n41_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n42_goto_α:
                                                                                        jmp   n43_statement_begin_α
n42_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N2 OUTPUT = '2:fail'
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:
                                                                                        jmp   n44_lit_string_α
n43_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n45_assign_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "2:fail"
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx115_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n46_statement_end_α
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:
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
