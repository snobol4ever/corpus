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
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_match_begin_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n51_lit_string_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "B"
#-----------------------------------------------------------------------------------------------------------------------
n1_match_begin_α:
                        sub              rsp, 224
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
                        mov              rdi, qword ptr [rsp + 224]                     # lit_string
                        mov              rsi, qword ptr [rsp + 232]
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
.Lx68_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n2_match_sequence_α
n1_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx68_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx68_1
                                                                                        jmp   .Lx68_0
.Lx68_1:
                        mov              r10, qword ptr [1879048192]
.Lx68_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx68_2
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
                        add              rsp, 240
                                                                                        jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_match_sequence_α:
                                                                                        jmp   n47_lit_integer_α
n2_match_sequence_as:
                                                                                        jmp   n3_match_end_α
n2_match_sequence_β:
                                                                                        jmp   n43_match_rpos_β
n2_match_sequence_af:
                                                                                        jmp   n1_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx72_8:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx72_8
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
.Lx72_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx72_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx72_1:
                        test             rax, rax
                                                                                        je    .Lx72_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx72_3]
                        lea              rdx, [rip + .Lx72_4]
                                                                                        jmp   rax
.Lx72_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx72_1
.Lx72_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx72_1
.Lx72_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx72_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx72_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 72]                      # outer_δ
                        mov              r15, qword ptr [rbp + 80]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 88]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n4_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_α:
                        mov              rbp, qword ptr [rbp + 56]                      # old_rbp
                        add              rsp, 240
                                                                                        jmp   n5_lit_string_α
n4_statement_β:
                        mov              rbp, qword ptr [rbp + 56]
                        add              rsp, 240
                                                                                        jmp   n51_lit_string_α
#=======================================================================================================================
# A1 OUTPUT = '1:null-body-ok'                                  :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n6_assign_α
n5_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          "1:null-body-ok"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx76_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n7_statement_α
n6_assign_β:
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_α:
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
n7_statement_β:
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
#=======================================================================================================================
# T2 'AB' ? POS(0) ARBNO('' | 'A') 'B' RPOS(0)                  :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n9_match_begin_α
n8_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n57_lit_string_α
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n9_match_begin_α:
                        sub              rsp, 528
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
                        mov              rdi, qword ptr [rsp + 528]                     # lit_string
                        mov              rsi, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 328], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 336], r13                     # outer_Σ
                        mov              qword ptr [rbp + 344], r14                     # outer_δ
                        mov              qword ptr [rbp + 352], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 360], rax                     # cap_gen
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
.Lx81_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n10_match_sequence_α
n9_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx81_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx81_1
                                                                                        jmp   .Lx81_0
.Lx81_1:
                        mov              r10, qword ptr [1879048192]
.Lx81_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx81_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 336]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 344]                     # outer_δ
                        mov              r15, qword ptr [rbp + 352]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 360]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 328]                     # old_rbp
                        add              rsp, 544
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_match_sequence_α:
                                                                                        jmp   n40_lit_integer_α
n10_match_sequence_as:
                                                                                        jmp   n11_match_end_α
n10_match_sequence_β:
                                                                                        jmp   n34_match_rpos_β
n10_match_sequence_af:
                                                                                        jmp   n9_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx85_8:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx85_8
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
.Lx85_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx85_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx85_1:
                        test             rax, rax
                                                                                        je    .Lx85_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx85_3]
                        lea              rdx, [rip + .Lx85_4]
                                                                                        jmp   rax
.Lx85_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx85_1
.Lx85_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx85_1
.Lx85_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx85_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx85_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 336]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 344]                     # outer_δ
                        mov              r15, qword ptr [rbp + 352]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 360]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n12_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_α:
                        mov              rbp, qword ptr [rbp + 328]                     # old_rbp
                        add              rsp, 544
                                                                                        jmp   n13_lit_string_α
n12_statement_β:
                        mov              rbp, qword ptr [rbp + 328]
                        add              rsp, 544
                                                                                        jmp   n57_lit_string_α
#=======================================================================================================================
# A2 OUTPUT = '2:nullable-first-ok'                             :(T3)
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 19
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_assign_α
n13_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n16_lit_string_α
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "2:nullable-first-ok"
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx89_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n15_statement_α
n14_assign_β:
                        add              rsp, 16
                                                                                        jmp   n16_lit_string_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_α:
                        add              rsp, 16
                                                                                        jmp   n16_lit_string_α
n15_statement_β:
                        add              rsp, 16
                                                                                        jmp   n16_lit_string_α
#=======================================================================================================================
# T3 'AB' ? POS(0) ARBNO('A' | '') 'B' RPOS(0)                  :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_match_begin_α
n16_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n63_lit_string_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n17_match_begin_α:
                        sub              rsp, 832
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
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              rdi, qword ptr [rsp + 832]                     # lit_string
                        mov              rsi, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 632], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 640], r13                     # outer_Σ
                        mov              qword ptr [rbp + 648], r14                     # outer_δ
                        mov              qword ptr [rbp + 656], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 664], rax                     # cap_gen
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
.Lx94_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n18_match_sequence_α
n17_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx94_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx94_1
                                                                                        jmp   .Lx94_0
.Lx94_1:
                        mov              r10, qword ptr [1879048192]
.Lx94_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx94_2
                        mov              rax, qword ptr [r10 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]                       # cas_rsp_mark
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 640]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 648]                     # outer_δ
                        mov              r15, qword ptr [rbp + 656]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 664]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 632]                     # old_rbp
                        add              rsp, 848
                                                                                        jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_match_sequence_α:
                                                                                        jmp   n31_lit_integer_α
n18_match_sequence_as:
                                                                                        jmp   n19_match_end_α
n18_match_sequence_β:
                                                                                        jmp   n25_match_rpos_β
n18_match_sequence_af:
                                                                                        jmp   n17_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_end_α:
                        mov              r10, qword ptr [1879048192]
.Lx98_8:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx98_8
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
.Lx98_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx98_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx98_1:
                        test             rax, rax
                                                                                        je    .Lx98_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx98_3]
                        lea              rdx, [rip + .Lx98_4]
                                                                                        jmp   rax
.Lx98_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx98_1
.Lx98_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx98_1
.Lx98_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx98_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx98_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 640]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 648]                     # outer_δ
                        mov              r15, qword ptr [rbp + 656]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 664]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n20_statement_α
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_α:
                        mov              rbp, qword ptr [rbp + 632]                     # old_rbp
                        add              rsp, 848
                                                                                        jmp   n21_lit_string_α
n20_statement_β:
                        mov              rbp, qword ptr [rbp + 632]
                        add              rsp, 848
                                                                                        jmp   n63_lit_string_α
#=======================================================================================================================
# A3 OUTPUT = '3:nullable-second-ok'                            :(END)
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n22_assign_α
n21_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "3:nullable-second-ok"
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx102_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n23_statement_α
n22_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n23_statement_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rsp + 816], 3                       # result
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 824], rax
                                                                                        jmp   n25_match_rpos_α
n24_lit_integer_β:
                                                                                        jmp   n26_match_lit_β
.Lx105_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n25_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n26_match_lit_β
                                                                                        jmp   n19_match_end_α
n25_match_rpos_β:
                                                                                        jmp   n26_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n26_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n27_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66
                                                                                        jne   n27_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n24_lit_integer_α
n26_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n27_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n27_match_arbno_α:
                        sub              rsp, 1456
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
                        mov              dword ptr [rsp + 1424], r14d
                        mov              dword ptr [rsp + 1428], r14d
                        mov              dword ptr [rsp + 1432], 1
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1448], rax
                                                                                        jmp   n26_match_lit_α
n27_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 1428]
                        mov              rax, qword ptr [rsp + 1440]
                        mov              rcx, qword ptr [rsp + 1448]
                        sub              rsp, 1456
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
                        mov              dword ptr [rsp + 1424], r14d
                        mov              dword ptr [rsp + 1428], r14d
                        mov              dword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rcx
                                                                                        jmp   n28_match_alternate_α
n27_match_arbno_as:
                        mov              eax, dword ptr [rsp + 1424]
                        cmp              r14d, eax
                                                                                        je    n28_match_alternate_β
                        mov              dword ptr [rsp + 1428], r14d
                                                                                        jmp   n26_match_lit_α
n27_match_arbno_af:
                        mov              eax, dword ptr [rsp + 1432]
                        test             eax, eax
                                                                                        jnz   .Lx110_2
                        add              rsp, 1456
                                                                                        jmp   n28_match_alternate_β
.Lx110_2:
                        mov              r14d, dword ptr [rsp + 1424]
                        add              rsp, 1456
                                                                                        jmp   n32_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n28_match_alternate_α:
                        mov              dword ptr [rbp + 768], r14d
                        lea              rax, [rip + .Lx112_21]
                        mov              qword ptr [rbp + 784], rax
                                                                                        jmp   n30_match_lit_α
.Lx112_21:
                        lea              rax, [rip + .Lx112_19]
                        mov              qword ptr [rbp + 784], rax
                                                                                        jmp   n29_match_lit_α
n28_match_alternate_s0:
                        lea              rax, [rip + .Lx112_40]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n28_match_alternate_as
n28_match_alternate_s1:
                        lea              rax, [rip + .Lx112_41]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n28_match_alternate_as
.Lx112_40:
                                                                                        jmp   n30_match_lit_β
.Lx112_41:
                                                                                        jmp   n29_match_lit_β
n28_match_alternate_as:
                                                                                        jmp   n27_match_arbno_as
n28_match_alternate_β:
                        mov              rax, qword ptr [rbp + 776]
                                                                                        jmp   rax
n28_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 768]
                        mov              rax, qword ptr [rbp + 784]
                                                                                        jmp   rax
.Lx112_19:
                                                                                        jmp   n27_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n29_match_lit_α:
                                                                                        jmp   n28_match_alternate_s1
n29_match_lit_β:
                                                                                        jmp   n28_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n30_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n28_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n28_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n28_match_alternate_s0
n30_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n28_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        mov              qword ptr [rsp + 688], 3                       # result
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 696], rax
                                                                                        jmp   n32_match_pos_α
n31_lit_integer_β:
                                                                                        jmp   n17_match_begin_β
.Lx117_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n32_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n17_match_begin_β
                                                                                        jmp   n27_match_arbno_α
n32_match_pos_β:
                                                                                        jmp   n17_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        mov              qword ptr [rsp + 512], 3                       # result
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n34_match_rpos_α
n33_lit_integer_β:
                                                                                        jmp   n35_match_lit_β
.Lx119_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n34_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n35_match_lit_β
                                                                                        jmp   n11_match_end_α
n34_match_rpos_β:
                                                                                        jmp   n35_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n35_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n36_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66
                                                                                        jne   n36_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n33_lit_integer_α
n35_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n36_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n36_match_arbno_α:
                        sub              rsp, 848
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
                        mov              dword ptr [rsp + 816], r14d
                        mov              dword ptr [rsp + 820], r14d
                        mov              dword ptr [rsp + 824], 1
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 840], rax
                                                                                        jmp   n35_match_lit_α
n36_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 820]
                        mov              rax, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        sub              rsp, 848
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
                        mov              dword ptr [rsp + 816], r14d
                        mov              dword ptr [rsp + 820], r14d
                        mov              dword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rcx
                                                                                        jmp   n37_match_alternate_α
n36_match_arbno_as:
                        mov              eax, dword ptr [rsp + 816]
                        cmp              r14d, eax
                                                                                        je    n37_match_alternate_β
                        mov              dword ptr [rsp + 820], r14d
                                                                                        jmp   n35_match_lit_α
n36_match_arbno_af:
                        mov              eax, dword ptr [rsp + 824]
                        test             eax, eax
                                                                                        jnz   .Lx124_2
                        add              rsp, 848
                                                                                        jmp   n37_match_alternate_β
.Lx124_2:
                        mov              r14d, dword ptr [rsp + 816]
                        add              rsp, 848
                                                                                        jmp   n41_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n37_match_alternate_α:
                        mov              dword ptr [rbp + 464], r14d
                        lea              rax, [rip + .Lx126_21]
                        mov              qword ptr [rbp + 480], rax
                                                                                        jmp   n39_match_lit_α
.Lx126_21:
                        lea              rax, [rip + .Lx126_19]
                        mov              qword ptr [rbp + 480], rax
                                                                                        jmp   n38_match_lit_α
n37_match_alternate_s0:
                        lea              rax, [rip + .Lx126_40]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n37_match_alternate_as
n37_match_alternate_s1:
                        lea              rax, [rip + .Lx126_41]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n37_match_alternate_as
.Lx126_40:
                                                                                        jmp   n39_match_lit_β
.Lx126_41:
                                                                                        jmp   n38_match_lit_β
n37_match_alternate_as:
                                                                                        jmp   n36_match_arbno_as
n37_match_alternate_β:
                        mov              rax, qword ptr [rbp + 472]
                                                                                        jmp   rax
n37_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 464]
                        mov              rax, qword ptr [rbp + 480]
                                                                                        jmp   rax
.Lx126_19:
                                                                                        jmp   n36_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n38_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n37_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n37_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n37_match_alternate_s1
n38_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n37_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n39_match_lit_α:
                                                                                        jmp   n37_match_alternate_s0
n39_match_lit_β:
                                                                                        jmp   n37_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:
                        mov              qword ptr [rsp + 384], 3                       # result
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n41_match_pos_α
n40_lit_integer_β:
                                                                                        jmp   n9_match_begin_β
.Lx131_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n41_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n9_match_begin_β
                                                                                        jmp   n36_match_arbno_α
n41_match_pos_β:
                                                                                        jmp   n9_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        mov              qword ptr [rsp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n43_match_rpos_α
n42_lit_integer_β:
                                                                                        jmp   n44_match_lit_β
.Lx133_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n43_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n44_match_lit_β
                                                                                        jmp   n3_match_end_α
n43_match_rpos_β:
                                                                                        jmp   n44_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n44_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n45_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66
                                                                                        jne   n45_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n42_lit_integer_α
n44_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n45_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n45_match_arbno_α:
                        sub              rsp, 160
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
                        mov              dword ptr [rsp + 128], r14d
                        mov              dword ptr [rsp + 132], r14d
                        mov              dword ptr [rsp + 136], 1
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n44_match_lit_α
n45_match_arbno_β:
                        mov              r14d, dword ptr [rsp + 132]
                        mov              rax, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        sub              rsp, 160
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
                        mov              dword ptr [rsp + 128], r14d
                        mov              dword ptr [rsp + 132], r14d
                        mov              dword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rcx
                                                                                        jmp   n46_match_lit_α
n45_match_arbno_as:
                        mov              eax, dword ptr [rsp + 128]
                        cmp              r14d, eax
                                                                                        je    n46_match_lit_β
                        mov              dword ptr [rsp + 132], r14d
                                                                                        jmp   n44_match_lit_α
n45_match_arbno_af:
                        mov              eax, dword ptr [rsp + 136]
                        test             eax, eax
                                                                                        jnz   .Lx138_2
                        add              rsp, 160
                                                                                        jmp   n46_match_lit_β
.Lx138_2:
                        mov              r14d, dword ptr [rsp + 128]
                        add              rsp, 160
                                                                                        jmp   n48_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n46_match_lit_α:
                                                                                        jmp   n45_match_arbno_as
n46_match_lit_β:
                                                                                        jmp   n45_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rsp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n48_match_pos_α
n47_lit_integer_β:
                                                                                        jmp   n1_match_begin_β
.Lx141_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n48_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n1_match_begin_β
                                                                                        jmp   n45_match_arbno_α
n48_match_pos_β:
                                                                                        jmp   n1_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n49_goto_α:
                                                                                        jmp   n5_lit_string_α
n49_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n50_goto_α:
                                                                                        jmp   n51_lit_string_α
n50_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# B1 OUTPUT = '1:null-body-fail'
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n52_assign_α
n51_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
.Lx145_0:
                        .quad            .Lx145_0_s
.Lx145_0_s:
                        .string          "1:null-body-fail"
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx146_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n53_statement_α
n52_assign_β:
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_α:
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
n53_statement_β:
                        add              rsp, 16
                                                                                        jmp   n8_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n54_goto_α:
                                                                                        jmp   n8_lit_string_α
n54_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n55_goto_α:
                                                                                        jmp   n13_lit_string_α
n55_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n56_goto_α:
                                                                                        jmp   n57_lit_string_α
n56_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# B2 OUTPUT = '2:nullable-first-fail'
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n58_assign_α
n57_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n16_lit_string_α
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          "2:nullable-first-fail"
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx153_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n59_statement_α
n58_assign_β:
                        add              rsp, 16
                                                                                        jmp   n16_lit_string_α
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_α:
                        add              rsp, 16
                                                                                        jmp   n16_lit_string_α
n59_statement_β:
                        add              rsp, 16
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_goto_α:
                                                                                        jmp   n16_lit_string_α
n60_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n61_goto_α:
                                                                                        jmp   n21_lit_string_α
n61_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n62_goto_α:
                                                                                        jmp   n63_lit_string_α
n62_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# B3 OUTPUT = '3:nullable-second-fail'
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n64_assign_α
n63_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx159_0:
                        .quad            .Lx159_0_s
.Lx159_0_s:
                        .string          "3:nullable-second-fail"
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx160_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n65_statement_α
n64_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
n65_statement_β:
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
