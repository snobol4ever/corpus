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
#  'AAAB' ? POS(0) ARBNO( ('AA' | 'A') $ OUTPUT ) 'B' RPOS(0)   :S(Y)F(N)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
n0_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_match_begin_α
n1_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n23_statement_begin_α
.Lx29_0:
                        .quad            .Lx29_0_s
.Lx29_0_s:
                        .string          "AAAB"
#-----------------------------------------------------------------------------------------------------------------------
n2_match_begin_α:
                        sub              rsp, 304
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
                        mov              rdi, qword ptr [rsp + 304]                     # lit_string
                        mov              rsi, qword ptr [rsp + 312]
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
.Lx31_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n3_match_sequence_α
n2_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx31_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx31_1
                                                                                        jmp   .Lx31_0
.Lx31_1:
                        mov              r10, qword ptr [1879048192]
.Lx31_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx31_2
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
                        add              rsp, 320
                                                                                        jmp   n23_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_match_sequence_α:
                                                                                        jmp   n19_lit_integer_α
n3_match_sequence_as:
                                                                                        jmp   n4_match_end_α
n3_match_sequence_β:
                                                                                        jmp   n11_match_rpos_β
n3_match_sequence_af:
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx35_8:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx35_8
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
.Lx35_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx35_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx35_1:
                        test             rax, rax
                                                                                        je    .Lx35_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx35_3]
                        lea              rdx, [rip + .Lx35_4]
                                                                                        jmp   rax
.Lx35_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx35_1
.Lx35_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx35_1
.Lx35_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx35_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx35_6
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
                        add              rsp, 320
                                                                                        jmp   n6_statement_begin_α
n5_statement_end_β:
                        mov              rbp, qword ptr [rbp + 56]
                        add              rsp, 320
                                                                                        jmp   n23_statement_begin_α
#=======================================================================================================================
# Y OUTPUT = 'ok'                                               :(END)
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_begin_α:
                                                                                        jmp   n7_lit_string_α
n6_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_assign_α
n7_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx40_0:
                        .quad            .Lx40_0_s
.Lx40_0_s:
                        .string          "ok"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx41_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n9_statement_end_α
n8_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n9_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rsp + 288], 3                       # result
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n11_match_rpos_α
n10_lit_integer_β:
                                                                                        jmp   n12_match_lit_β
.Lx44_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n11_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n12_match_lit_β
                                                                                        jmp   n4_match_end_α
n11_match_rpos_β:
                                                                                        jmp   n12_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n13_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66
                                                                                        jne   n13_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n10_lit_integer_α
n12_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n13_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_arbno_α:
                        sub              rsp, 416
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
                        mov              dword ptr [rsp + 384], r14d
                        mov              dword ptr [rsp + 388], r14d
                        mov              dword ptr [rsp + 392], 1
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n12_match_lit_α
n13_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 388]
                        mov              rax, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        sub              rsp, 400
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
                        mov              dword ptr [rsp + 368], r14d
                        mov              dword ptr [rsp + 372], r14d
                        mov              dword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rcx
                                                                                        jmp   n14_match_assign_save_α
n13_match_arbno_as:
                        mov              eax, dword ptr [rsp + 384]
                        cmp              r14d, eax
                                                                                        je    n16_match_assign_imm_β
                        mov              dword ptr [rsp + 388], r14d
                                                                                        jmp   n12_match_lit_α
n13_match_arbno_af:
                        mov              eax, dword ptr [rsp + 376]
                        test             eax, eax
                                                                                        jnz   .Lx49_2
                        add              rsp, 400
                                                                                        jmp   n16_match_assign_imm_β
.Lx49_2:
                        mov              r14d, dword ptr [rsp + 368]
                        add              rsp, 400
                                                                                        jmp   n20_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n15_match_alternate_α
n14_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n13_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n15_match_alternate_α:
                        mov              dword ptr [rbp + 240], r14d
                        lea              rax, [rip + .Lx53_21]
                        mov              qword ptr [rbp + 256], rax
                                                                                        jmp   n18_match_lit_α
.Lx53_21:
                        lea              rax, [rip + .Lx53_19]
                        mov              qword ptr [rbp + 256], rax
                                                                                        jmp   n17_match_lit_α
n15_match_alternate_s0:
                        lea              rax, [rip + .Lx53_40]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n15_match_alternate_as
n15_match_alternate_s1:
                        lea              rax, [rip + .Lx53_41]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n15_match_alternate_as
.Lx53_40:
                                                                                        jmp   n18_match_lit_β
.Lx53_41:
                                                                                        jmp   n17_match_lit_β
n15_match_alternate_as:
                                                                                        jmp   n16_match_assign_imm_α
n15_match_alternate_β:
                        mov              rax, qword ptr [rbp + 248]
                                                                                        jmp   rax
n15_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 240]
                        mov              rax, qword ptr [rbp + 256]
                                                                                        jmp   rax
.Lx53_19:
                                                                                        jmp   n14_match_assign_save_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_assign_imm_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rdi, [rip + .S0]                               # varname
                        mov              esi, eax                                       # saved_delta
                        mov              edx, r14d                                      # cur_delta
                        mov              ecx, 1                                         # is_imm
                        call             rt_cap_open@PLT
                        test             rax, rax
                                                                                        je    .Lx55_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx55_2]
                        lea              rdx, [rip + .Lx55_3]
                                                                                        jmp   rax
.Lx55_2:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_cap_finish@PLT
                                                                                        jmp   .Lx55_1
.Lx55_3:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_cap_finish@PLT
.Lx55_1:
                                                                                        jmp   n13_match_arbno_as
n16_match_assign_imm_β:
                                                                                        jmp   n15_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n15_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n15_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n15_match_alternate_s1
n17_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n15_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n18_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n15_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n15_match_alternate_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 65
                                                                                        jne   n15_match_alternate_af
                        add              r14d, 2
                                                                                        jmp   n15_match_alternate_s0
n18_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n15_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rsp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n20_match_pos_α
n19_lit_integer_β:
                                                                                        jmp   n2_match_begin_β
.Lx60_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n20_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n2_match_begin_β
                                                                                        jmp   n13_match_arbno_α
n20_match_pos_β:
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n21_goto_α:
                                                                                        jmp   n6_statement_begin_α
n21_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_goto_α:
                                                                                        jmp   n23_statement_begin_α
n22_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# N OUTPUT = 'fail'
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:
                                                                                        jmp   n24_lit_string_α
n23_statement_begin_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_assign_α
n24_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx67_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n26_statement_end_α
n25_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n26_statement_end_β:
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
.S0:                    .string          "OUTPUT"
                        .text
                        .section         .note.GNU-stack,"",@progbits
