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
#  'B' ? POS(0) ARBNO('') 'B' RPOS(0)                           :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
n0_statement_begin_β:
                                                                                        jmp   n54_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 240
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
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_match_begin_α
n1_lit_string_β:
                        add              rsp, 16
                        add              rsp, 240
                                                                                        jmp   n54_statement_begin_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "B"
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
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx76_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n3_lit_integer_α
n2_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx76_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx76_1
                                                                                        jmp   .Lx76_0
.Lx76_1:
n2_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rbp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 72]                      # outer_δ
                        mov              r15, qword ptr [rbp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]                      # old_rbp
                        add              rsp, 240
                                                                                        jmp   n54_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rsp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n4_match_pos_α
n3_lit_integer_β:
                                                                                        jmp   n2_match_begin_β
.Lx77_0:
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
                        sub              rsp, 176
                        mov              eax, 0
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rax
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
                        mov              dword ptr [rsp + 144], r14d
                        mov              dword ptr [rsp + 148], r14d
                        mov              dword ptr [rsp + 152], 1
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n6_match_lit_α
n5_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 148]
                        mov              rax, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        sub              rsp, 176
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
                        mov              dword ptr [rsp + 144], r14d
                        mov              dword ptr [rsp + 148], r14d
                        mov              dword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rcx
                                                                                        jmp   n51_match_lit_α
n5_match_arbno_as:
                        mov              eax, dword ptr [rsp + 144]
                        cmp              r14d, eax
                                                                                        je    n51_match_lit_β
                        mov              dword ptr [rsp + 148], r14d
                                                                                        jmp   n6_match_lit_α
n5_match_arbno_af:
                        mov              eax, dword ptr [rsp + 152]
                        test             eax, eax
                                                                                        jnz   .Lx80_2
                        add              rsp, 176
                                                                                        jmp   n51_match_lit_β
.Lx80_2:
                        mov              r14d, dword ptr [rsp + 144]
                        add              rsp, 176
                                                                                        jmp   n4_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n5_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66
                                                                                        jne   n5_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n7_lit_integer_α
n6_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n5_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rsp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n8_match_rpos_α
n7_lit_integer_β:
                                                                                        jmp   n6_match_lit_β
.Lx83_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n8_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n6_match_lit_β
                                                                                        jmp   n9_match_end_α
n8_match_rpos_β:
                                                                                        jmp   n6_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_end_α:
                        mov              r10, r12
.Lx86_8:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx86_8
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx86_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx86_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx86_1:
                        test             rax, rax
                                                                                        je    .Lx86_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx86_3]
                        lea              rdx, [rip + .Lx86_4]
                                                                                        jmp   rax
.Lx86_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx86_1
.Lx86_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx86_1
.Lx86_2:
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
                                                                                        jmp   n10_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:
                        add              rsp, 240
                                                                                        jmp   n11_statement_begin_α
n10_statement_end_β:
                        add              rsp, 240
                                                                                        jmp   n54_statement_begin_α
#=======================================================================================================================
# A1 OUTPUT = '1:null-body-ok'                                  :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_begin_α:
                                                                                        jmp   n12_lit_string_α
n11_statement_begin_β:
                                                                                        jmp   n15_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_assign_α
n12_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n15_statement_begin_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "1:null-body-ok"
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx92_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n14_statement_end_α
n13_assign_β:
                                                                                        jmp   n14_statement_end_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n15_statement_begin_α
n14_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n15_statement_begin_α
#=======================================================================================================================
# T2 'AB' ? POS(0) ARBNO('' | 'A') 'B' RPOS(0)                  :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_begin_α:
                                                                                        jmp   n16_lit_string_α
n15_statement_begin_β:
                                                                                        jmp   n61_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        sub              rsp, 448
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
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_match_begin_α
n16_lit_string_β:
                        add              rsp, 16
                        add              rsp, 448
                                                                                        jmp   n61_statement_begin_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n17_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 336], r13                     # outer_Σ
                        mov              qword ptr [rbp + 344], r14                     # outer_δ
                        mov              qword ptr [rbp + 352], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 360], rax                     # cap_gen
                        mov              qword ptr [rbp + 328], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx99_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n18_lit_integer_α
n17_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx99_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx99_1
                                                                                        jmp   .Lx99_0
.Lx99_1:
n17_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rbp + 336]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 344]                     # outer_δ
                        mov              r15, qword ptr [rbp + 352]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 360]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 328]                     # old_rbp
                        add              rsp, 448
                                                                                        jmp   n61_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rsp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n19_match_pos_α
n18_lit_integer_β:
                                                                                        jmp   n17_match_begin_β
.Lx100_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n19_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n17_match_begin_β
                                                                                        jmp   n20_match_arbno_α
n19_match_pos_β:
                                                                                        jmp   n17_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_arbno_α:
                        sub              rsp, 880
                        mov              eax, 0
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rax
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
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rax
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rax
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rax
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rax
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rax
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rax
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rax
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rax
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rax
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rax
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rax
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rax
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rax
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rax
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rax
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rax
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rax
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rax
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rax
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rax
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rax
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rax
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rax
                        mov              dword ptr [rsp + 848], r14d
                        mov              dword ptr [rsp + 852], r14d
                        mov              dword ptr [rsp + 856], 1
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 872], rax
                                                                                        jmp   n21_match_lit_α
n20_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 852]
                        mov              rax, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        sub              rsp, 880
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
                        mov              qword ptr [rsp + 464], rdx
                        mov              qword ptr [rsp + 472], rdx
                        mov              qword ptr [rsp + 480], rdx
                        mov              qword ptr [rsp + 488], rdx
                        mov              qword ptr [rsp + 496], rdx
                        mov              qword ptr [rsp + 504], rdx
                        mov              qword ptr [rsp + 512], rdx
                        mov              qword ptr [rsp + 520], rdx
                        mov              qword ptr [rsp + 528], rdx
                        mov              qword ptr [rsp + 536], rdx
                        mov              qword ptr [rsp + 544], rdx
                        mov              qword ptr [rsp + 552], rdx
                        mov              qword ptr [rsp + 560], rdx
                        mov              qword ptr [rsp + 568], rdx
                        mov              qword ptr [rsp + 576], rdx
                        mov              qword ptr [rsp + 584], rdx
                        mov              qword ptr [rsp + 592], rdx
                        mov              qword ptr [rsp + 600], rdx
                        mov              qword ptr [rsp + 608], rdx
                        mov              qword ptr [rsp + 616], rdx
                        mov              qword ptr [rsp + 624], rdx
                        mov              qword ptr [rsp + 632], rdx
                        mov              qword ptr [rsp + 640], rdx
                        mov              qword ptr [rsp + 648], rdx
                        mov              qword ptr [rsp + 656], rdx
                        mov              qword ptr [rsp + 664], rdx
                        mov              qword ptr [rsp + 672], rdx
                        mov              qword ptr [rsp + 680], rdx
                        mov              qword ptr [rsp + 688], rdx
                        mov              qword ptr [rsp + 696], rdx
                        mov              qword ptr [rsp + 704], rdx
                        mov              qword ptr [rsp + 712], rdx
                        mov              qword ptr [rsp + 720], rdx
                        mov              qword ptr [rsp + 728], rdx
                        mov              qword ptr [rsp + 736], rdx
                        mov              qword ptr [rsp + 744], rdx
                        mov              qword ptr [rsp + 752], rdx
                        mov              qword ptr [rsp + 760], rdx
                        mov              qword ptr [rsp + 768], rdx
                        mov              qword ptr [rsp + 776], rdx
                        mov              qword ptr [rsp + 784], rdx
                        mov              qword ptr [rsp + 792], rdx
                        mov              qword ptr [rsp + 800], rdx
                        mov              qword ptr [rsp + 808], rdx
                        mov              qword ptr [rsp + 816], rdx
                        mov              qword ptr [rsp + 824], rdx
                        mov              qword ptr [rsp + 832], rdx
                        mov              qword ptr [rsp + 840], rdx
                        mov              dword ptr [rsp + 848], r14d
                        mov              dword ptr [rsp + 852], r14d
                        mov              dword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rcx
                                                                                        jmp   n48_match_alternate_α
n20_match_arbno_as:
                        mov              eax, dword ptr [rsp + 848]
                        cmp              r14d, eax
                                                                                        je    n48_match_alternate_β
                        mov              dword ptr [rsp + 852], r14d
                                                                                        jmp   n21_match_lit_α
n20_match_arbno_af:
                        mov              eax, dword ptr [rsp + 856]
                        test             eax, eax
                                                                                        jnz   .Lx103_2
                        add              rsp, 880
                                                                                        jmp   n48_match_alternate_β
.Lx103_2:
                        mov              r14d, dword ptr [rsp + 848]
                        add              rsp, 880
                                                                                        jmp   n19_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n20_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66
                                                                                        jne   n20_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n22_lit_integer_α
n21_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n20_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rsp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n23_match_rpos_α
n22_lit_integer_β:
                                                                                        jmp   n21_match_lit_β
.Lx106_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n23_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n21_match_lit_β
                                                                                        jmp   n24_match_end_α
n23_match_rpos_β:
                                                                                        jmp   n21_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_end_α:
                        mov              r10, r12
.Lx109_8:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx109_8
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx109_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx109_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx109_1:
                        test             rax, rax
                                                                                        je    .Lx109_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx109_3]
                        lea              rdx, [rip + .Lx109_4]
                                                                                        jmp   rax
.Lx109_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx109_1
.Lx109_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx109_1
.Lx109_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 336]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 344]                     # outer_δ
                        mov              r15, qword ptr [rbp + 352]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 360]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 328]                     # old_rbp
                                                                                        jmp   n25_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:
                        add              rsp, 448
                                                                                        jmp   n26_statement_begin_α
n25_statement_end_β:
                        add              rsp, 448
                                                                                        jmp   n61_statement_begin_α
#=======================================================================================================================
# A2 OUTPUT = '2:nullable-first-ok'                             :(T3)
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_begin_α:
                                                                                        jmp   n27_lit_string_α
n26_statement_begin_β:
                                                                                        jmp   n30_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 19
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n28_assign_α
n27_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n30_statement_begin_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "2:nullable-first-ok"
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx115_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n29_statement_end_α
n28_assign_β:
                                                                                        jmp   n29_statement_end_α
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n30_statement_begin_α
n29_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n30_statement_begin_α
#=======================================================================================================================
# T3 'AB' ? POS(0) ARBNO('A' | '') 'B' RPOS(0)                  :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_begin_α:
                                                                                        jmp   n31_lit_string_α
n30_statement_begin_β:
                                                                                        jmp   n68_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
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
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_match_begin_α
n31_lit_string_β:
                        add              rsp, 16
                        add              rsp, 752
                                                                                        jmp   n68_statement_begin_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n32_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 640], r13                     # outer_Σ
                        mov              qword ptr [rbp + 648], r14                     # outer_δ
                        mov              qword ptr [rbp + 656], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 664], rax                     # cap_gen
                        mov              qword ptr [rbp + 632], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx122_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n33_lit_integer_α
n32_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx122_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx122_1
                                                                                        jmp   .Lx122_0
.Lx122_1:
n32_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rbp + 640]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 648]                     # outer_δ
                        mov              r15, qword ptr [rbp + 656]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 664]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 632]                     # old_rbp
                        add              rsp, 752
                                                                                        jmp   n68_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        mov              qword ptr [rsp + 576], 3                       # result
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n34_match_pos_α
n33_lit_integer_β:
                                                                                        jmp   n32_match_begin_β
.Lx123_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n34_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n32_match_begin_β
                                                                                        jmp   n35_match_arbno_α
n34_match_pos_β:
                                                                                        jmp   n32_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_arbno_α:
                        sub              rsp, 1488
                        mov              eax, 0
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rax
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
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rax
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rax
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rax
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rax
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rax
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rax
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rax
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rax
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rax
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rax
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rax
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rax
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rax
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rax
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rax
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rax
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rax
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rax
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rax
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rax
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rax
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rax
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rax
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rax
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rax
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rax
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rax
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rax
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rax
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rax
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rax
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rax
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rax
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rax
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rax
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rax
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rax
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rax
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rax
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rax
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rax
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rax
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rax
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rax
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rax
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rax
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rax
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rax
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rax
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rax
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rax
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rax
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rax
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rax
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rax
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rax
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rax
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rax
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rax
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rax
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rax
                        mov              dword ptr [rsp + 1456], r14d
                        mov              dword ptr [rsp + 1460], r14d
                        mov              dword ptr [rsp + 1464], 1
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1480], rax
                                                                                        jmp   n36_match_lit_α
n35_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 1460]
                        mov              rax, qword ptr [rsp + 1472]
                        mov              rcx, qword ptr [rsp + 1480]
                        sub              rsp, 1488
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
                        mov              qword ptr [rsp + 464], rdx
                        mov              qword ptr [rsp + 472], rdx
                        mov              qword ptr [rsp + 480], rdx
                        mov              qword ptr [rsp + 488], rdx
                        mov              qword ptr [rsp + 496], rdx
                        mov              qword ptr [rsp + 504], rdx
                        mov              qword ptr [rsp + 512], rdx
                        mov              qword ptr [rsp + 520], rdx
                        mov              qword ptr [rsp + 528], rdx
                        mov              qword ptr [rsp + 536], rdx
                        mov              qword ptr [rsp + 544], rdx
                        mov              qword ptr [rsp + 552], rdx
                        mov              qword ptr [rsp + 560], rdx
                        mov              qword ptr [rsp + 568], rdx
                        mov              qword ptr [rsp + 576], rdx
                        mov              qword ptr [rsp + 584], rdx
                        mov              qword ptr [rsp + 592], rdx
                        mov              qword ptr [rsp + 600], rdx
                        mov              qword ptr [rsp + 608], rdx
                        mov              qword ptr [rsp + 616], rdx
                        mov              qword ptr [rsp + 624], rdx
                        mov              qword ptr [rsp + 632], rdx
                        mov              qword ptr [rsp + 640], rdx
                        mov              qword ptr [rsp + 648], rdx
                        mov              qword ptr [rsp + 656], rdx
                        mov              qword ptr [rsp + 664], rdx
                        mov              qword ptr [rsp + 672], rdx
                        mov              qword ptr [rsp + 680], rdx
                        mov              qword ptr [rsp + 688], rdx
                        mov              qword ptr [rsp + 696], rdx
                        mov              qword ptr [rsp + 704], rdx
                        mov              qword ptr [rsp + 712], rdx
                        mov              qword ptr [rsp + 720], rdx
                        mov              qword ptr [rsp + 728], rdx
                        mov              qword ptr [rsp + 736], rdx
                        mov              qword ptr [rsp + 744], rdx
                        mov              qword ptr [rsp + 752], rdx
                        mov              qword ptr [rsp + 760], rdx
                        mov              qword ptr [rsp + 768], rdx
                        mov              qword ptr [rsp + 776], rdx
                        mov              qword ptr [rsp + 784], rdx
                        mov              qword ptr [rsp + 792], rdx
                        mov              qword ptr [rsp + 800], rdx
                        mov              qword ptr [rsp + 808], rdx
                        mov              qword ptr [rsp + 816], rdx
                        mov              qword ptr [rsp + 824], rdx
                        mov              qword ptr [rsp + 832], rdx
                        mov              qword ptr [rsp + 840], rdx
                        mov              qword ptr [rsp + 848], rdx
                        mov              qword ptr [rsp + 856], rdx
                        mov              qword ptr [rsp + 864], rdx
                        mov              qword ptr [rsp + 872], rdx
                        mov              qword ptr [rsp + 880], rdx
                        mov              qword ptr [rsp + 888], rdx
                        mov              qword ptr [rsp + 896], rdx
                        mov              qword ptr [rsp + 904], rdx
                        mov              qword ptr [rsp + 912], rdx
                        mov              qword ptr [rsp + 920], rdx
                        mov              qword ptr [rsp + 928], rdx
                        mov              qword ptr [rsp + 936], rdx
                        mov              qword ptr [rsp + 944], rdx
                        mov              qword ptr [rsp + 952], rdx
                        mov              qword ptr [rsp + 960], rdx
                        mov              qword ptr [rsp + 968], rdx
                        mov              qword ptr [rsp + 976], rdx
                        mov              qword ptr [rsp + 984], rdx
                        mov              qword ptr [rsp + 992], rdx
                        mov              qword ptr [rsp + 1000], rdx
                        mov              qword ptr [rsp + 1008], rdx
                        mov              qword ptr [rsp + 1016], rdx
                        mov              qword ptr [rsp + 1024], rdx
                        mov              qword ptr [rsp + 1032], rdx
                        mov              qword ptr [rsp + 1040], rdx
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 1056], rdx
                        mov              qword ptr [rsp + 1064], rdx
                        mov              qword ptr [rsp + 1072], rdx
                        mov              qword ptr [rsp + 1080], rdx
                        mov              qword ptr [rsp + 1088], rdx
                        mov              qword ptr [rsp + 1096], rdx
                        mov              qword ptr [rsp + 1104], rdx
                        mov              qword ptr [rsp + 1112], rdx
                        mov              qword ptr [rsp + 1120], rdx
                        mov              qword ptr [rsp + 1128], rdx
                        mov              qword ptr [rsp + 1136], rdx
                        mov              qword ptr [rsp + 1144], rdx
                        mov              qword ptr [rsp + 1152], rdx
                        mov              qword ptr [rsp + 1160], rdx
                        mov              qword ptr [rsp + 1168], rdx
                        mov              qword ptr [rsp + 1176], rdx
                        mov              qword ptr [rsp + 1184], rdx
                        mov              qword ptr [rsp + 1192], rdx
                        mov              qword ptr [rsp + 1200], rdx
                        mov              qword ptr [rsp + 1208], rdx
                        mov              qword ptr [rsp + 1216], rdx
                        mov              qword ptr [rsp + 1224], rdx
                        mov              qword ptr [rsp + 1232], rdx
                        mov              qword ptr [rsp + 1240], rdx
                        mov              qword ptr [rsp + 1248], rdx
                        mov              qword ptr [rsp + 1256], rdx
                        mov              qword ptr [rsp + 1264], rdx
                        mov              qword ptr [rsp + 1272], rdx
                        mov              qword ptr [rsp + 1280], rdx
                        mov              qword ptr [rsp + 1288], rdx
                        mov              qword ptr [rsp + 1296], rdx
                        mov              qword ptr [rsp + 1304], rdx
                        mov              qword ptr [rsp + 1312], rdx
                        mov              qword ptr [rsp + 1320], rdx
                        mov              qword ptr [rsp + 1328], rdx
                        mov              qword ptr [rsp + 1336], rdx
                        mov              qword ptr [rsp + 1344], rdx
                        mov              qword ptr [rsp + 1352], rdx
                        mov              qword ptr [rsp + 1360], rdx
                        mov              qword ptr [rsp + 1368], rdx
                        mov              qword ptr [rsp + 1376], rdx
                        mov              qword ptr [rsp + 1384], rdx
                        mov              qword ptr [rsp + 1392], rdx
                        mov              qword ptr [rsp + 1400], rdx
                        mov              qword ptr [rsp + 1408], rdx
                        mov              qword ptr [rsp + 1416], rdx
                        mov              qword ptr [rsp + 1424], rdx
                        mov              qword ptr [rsp + 1432], rdx
                        mov              qword ptr [rsp + 1440], rdx
                        mov              qword ptr [rsp + 1448], rdx
                        mov              dword ptr [rsp + 1456], r14d
                        mov              dword ptr [rsp + 1460], r14d
                        mov              dword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rcx
                                                                                        jmp   n45_match_alternate_α
n35_match_arbno_as:
                        mov              eax, dword ptr [rsp + 1456]
                        cmp              r14d, eax
                                                                                        je    n45_match_alternate_β
                        mov              dword ptr [rsp + 1460], r14d
                                                                                        jmp   n36_match_lit_α
n35_match_arbno_af:
                        mov              eax, dword ptr [rsp + 1464]
                        test             eax, eax
                                                                                        jnz   .Lx126_2
                        add              rsp, 1488
                                                                                        jmp   n45_match_alternate_β
.Lx126_2:
                        mov              r14d, dword ptr [rsp + 1456]
                        add              rsp, 1488
                                                                                        jmp   n34_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n36_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n35_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66
                                                                                        jne   n35_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n37_lit_integer_α
n36_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n35_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        mov              qword ptr [rsp + 720], 3                       # result
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 728], rax
                                                                                        jmp   n38_match_rpos_α
n37_lit_integer_β:
                                                                                        jmp   n36_match_lit_β
.Lx129_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n38_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n36_match_lit_β
                                                                                        jmp   n39_match_end_α
n38_match_rpos_β:
                                                                                        jmp   n36_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n39_match_end_α:
                        mov              r10, r12
.Lx132_8:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx132_8
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx132_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx132_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx132_1:
                        test             rax, rax
                                                                                        je    .Lx132_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx132_3]
                        lea              rdx, [rip + .Lx132_4]
                                                                                        jmp   rax
.Lx132_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx132_1
.Lx132_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx132_1
.Lx132_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 640]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 648]                     # outer_δ
                        mov              r15, qword ptr [rbp + 656]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 664]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 632]                     # old_rbp
                                                                                        jmp   n40_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:
                        add              rsp, 752
                                                                                        jmp   n41_statement_begin_α
n40_statement_end_β:
                        add              rsp, 752
                                                                                        jmp   n68_statement_begin_α
#=======================================================================================================================
# A3 OUTPUT = '3:nullable-second-ok'                            :(END)
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:
                                                                                        jmp   n42_lit_string_α
n41_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n43_assign_α
n42_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "3:nullable-second-ok"
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx138_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n44_statement_end_α
n43_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n44_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n45_match_alternate_α:
                        mov              dword ptr [rbp + 768], r14d
                        lea              rax, [rip + .Lx142_21]
                        mov              qword ptr [rbp + 784], rax
                                                                                        jmp   n47_match_lit_α
.Lx142_21:
                        lea              rax, [rip + .Lx142_19]
                        mov              qword ptr [rbp + 784], rax
                                                                                        jmp   n46_match_lit_α
n45_match_alternate_s0:
                        lea              rax, [rip + .Lx142_40]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n45_match_alternate_as
n45_match_alternate_s1:
                        lea              rax, [rip + .Lx142_41]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n45_match_alternate_as
.Lx142_40:
                                                                                        jmp   n47_match_lit_β
.Lx142_41:
                                                                                        jmp   n46_match_lit_β
n45_match_alternate_as:
                                                                                        jmp   n35_match_arbno_as
n45_match_alternate_β:
                        mov              rax, qword ptr [rbp + 776]
                                                                                        jmp   rax
n45_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 768]
                        mov              rax, qword ptr [rbp + 784]
                                                                                        jmp   rax
.Lx142_19:
                                                                                        jmp   n35_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n46_match_lit_α:
                                                                                        jmp   n45_match_alternate_s1
n46_match_lit_β:
                                                                                        jmp   n45_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n47_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n45_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n45_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n45_match_alternate_s0
n47_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n45_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n48_match_alternate_α:
                        mov              dword ptr [rbp + 464], r14d
                        lea              rax, [rip + .Lx148_21]
                        mov              qword ptr [rbp + 480], rax
                                                                                        jmp   n50_match_lit_α
.Lx148_21:
                        lea              rax, [rip + .Lx148_19]
                        mov              qword ptr [rbp + 480], rax
                                                                                        jmp   n49_match_lit_α
n48_match_alternate_s0:
                        lea              rax, [rip + .Lx148_40]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n48_match_alternate_as
n48_match_alternate_s1:
                        lea              rax, [rip + .Lx148_41]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n48_match_alternate_as
.Lx148_40:
                                                                                        jmp   n50_match_lit_β
.Lx148_41:
                                                                                        jmp   n49_match_lit_β
n48_match_alternate_as:
                                                                                        jmp   n20_match_arbno_as
n48_match_alternate_β:
                        mov              rax, qword ptr [rbp + 472]
                                                                                        jmp   rax
n48_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 464]
                        mov              rax, qword ptr [rbp + 480]
                                                                                        jmp   rax
.Lx148_19:
                                                                                        jmp   n20_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n49_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n48_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n48_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n48_match_alternate_s1
n49_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n48_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n50_match_lit_α:
                                                                                        jmp   n48_match_alternate_s0
n50_match_lit_β:
                                                                                        jmp   n48_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n51_match_lit_α:
                                                                                        jmp   n5_match_arbno_as
n51_match_lit_β:
                                                                                        jmp   n5_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n52_goto_α:
                                                                                        jmp   n11_statement_begin_α
n52_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n53_goto_α:
                                                                                        jmp   n54_statement_begin_α
n53_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# B1 OUTPUT = '1:null-body-fail'
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_begin_α:
                                                                                        jmp   n55_lit_string_α
n54_statement_begin_β:
                                                                                        jmp   n15_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n56_assign_α
n55_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n15_statement_begin_α
.Lx159_0:
                        .quad            .Lx159_0_s
.Lx159_0_s:
                        .string          "1:null-body-fail"
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx160_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n57_statement_end_α
n56_assign_β:
                                                                                        jmp   n57_statement_end_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n15_statement_begin_α
n57_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n15_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_goto_α:
                                                                                        jmp   n15_statement_begin_α
n58_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n59_goto_α:
                                                                                        jmp   n26_statement_begin_α
n59_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n60_goto_α:
                                                                                        jmp   n61_statement_begin_α
n60_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# B2 OUTPUT = '2:nullable-first-fail'
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:
                                                                                        jmp   n62_lit_string_α
n61_statement_begin_β:
                                                                                        jmp   n30_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n63_assign_α
n62_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n30_statement_begin_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "2:nullable-first-fail"
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx169_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n64_statement_end_α
n63_assign_β:
                                                                                        jmp   n64_statement_end_α
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n30_statement_begin_α
n64_statement_end_β:
                        add              rsp, 16
                                                                                        jmp   n30_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n65_goto_α:
                                                                                        jmp   n30_statement_begin_α
n65_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n66_goto_α:
                                                                                        jmp   n41_statement_begin_α
n66_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n67_goto_α:
                                                                                        jmp   n68_statement_begin_α
n67_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# B3 OUTPUT = '3:nullable-second-fail'
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_begin_α:
                                                                                        jmp   n69_lit_string_α
n68_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n70_assign_α
n69_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "3:nullable-second-fail"
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx178_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n71_statement_end_α
n70_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n71_statement_end_β:
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
