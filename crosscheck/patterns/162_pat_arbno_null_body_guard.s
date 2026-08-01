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
#  'B' ? POS(0) ARBNO('') 'B' RPOS(0)                           :S(A1)F(B1)
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 240
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
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_match_head_α
n0_lit_string_β:
                        add              rsp, 16
                        add              rsp, 240
                                                                                        jmp   n45_lit_string_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "B"
#-----------------------------------------------------------------------------------------------------------------------
n1_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
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
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx59_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n2_match_sequence_α
n1_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx59_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx59_1
                                                                                        jmp   .Lx59_0
.Lx59_1:
                        mov              r10, qword ptr [1879048192]
.Lx59_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx59_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 88]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]
                        add              rsp, 240
                                                                                        jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_match_sequence_α:
                                                                                        jmp   n41_lit_integer_α
n2_match_sequence_as:
                                                                                        jmp   n3_match_release_α
n2_match_sequence_β:
                                                                                        jmp   n37_match_rpos_β
n2_match_sequence_af:
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx63_8:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx63_8
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
.Lx63_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx63_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx63_1:
                        test             rax, rax
                                                                                        je    .Lx63_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx63_3]
                        lea              rdx, [rip + .Lx63_4]
                                                                                        jmp   rax
.Lx63_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx63_1
.Lx63_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx63_1
.Lx63_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx63_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx63_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 88]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 56]
                        add              rsp, 240
                                                                                        jmp   n4_lit_string_α
#=======================================================================================================================
# A1 OUTPUT = '1:null-body-ok'                                  :(T2)
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n5_assign_α
n4_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n6_lit_string_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "1:null-body-ok"
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx65_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n6_lit_string_α
n5_assign_β:
                        add              rsp, 16
                                                                                        jmp   n6_lit_string_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# T2 'AB' ? POS(0) ARBNO('' | 'A') 'B' RPOS(0)                  :S(A2)F(B2)
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        sub              rsp, 432
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
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n7_match_head_α
n6_lit_string_β:
                        add              rsp, 16
                        add              rsp, 432
                                                                                        jmp   n50_lit_string_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n7_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 216], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 224], r13                     # outer_Σ
                        mov              qword ptr [rbp + 232], r14                     # outer_δ
                        mov              qword ptr [rbp + 240], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 248], rax                     # cap_gen
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
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx68_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n8_match_sequence_α
n7_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx68_1
                        lea              rcx, [rip + g_anchor]
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
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 224]
                        mov              r14, qword ptr [rbp + 232]
                        mov              r15, qword ptr [rbp + 240]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 104]
                        add              rsp, 432
                                                                                        jmp   n50_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_match_sequence_α:
                                                                                        jmp   n34_lit_integer_α
n8_match_sequence_as:
                                                                                        jmp   n9_match_release_α
n8_match_sequence_β:
                                                                                        jmp   n28_match_rpos_β
n8_match_sequence_af:
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_release_α:
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
                        mov              r13, qword ptr [rbp + 224]
                        mov              r14, qword ptr [rbp + 232]
                        mov              r15, qword ptr [rbp + 240]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 104]
                        add              rsp, 432
                                                                                        jmp   n10_lit_string_α
#=======================================================================================================================
# A2 OUTPUT = '2:nullable-first-ok'                             :(T3)
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 19
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n11_assign_α
n10_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "2:nullable-first-ok"
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx74_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
n11_assign_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# T3 'AB' ? POS(0) ARBNO('A' | '') 'B' RPOS(0)                  :S(A3)F(B3)
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        sub              rsp, 736
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
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n13_match_head_α
n12_lit_string_β:
                        add              rsp, 16
                        add              rsp, 736
                                                                                        jmp   n55_lit_string_α
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          "AB"
#-----------------------------------------------------------------------------------------------------------------------
n13_match_head_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rsp + 520], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rbp + 528], r13                     # outer_Σ
                        mov              qword ptr [rbp + 536], r14                     # outer_δ
                        mov              qword ptr [rbp + 544], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 552], rax                     # cap_gen
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
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx77_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n14_match_sequence_α
n13_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx77_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx77_1
                                                                                        jmp   .Lx77_0
.Lx77_1:
                        mov              r10, qword ptr [1879048192]
.Lx77_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx77_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 528]
                        mov              r14, qword ptr [rbp + 536]
                        mov              r15, qword ptr [rbp + 544]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 408]
                        add              rsp, 736
                                                                                        jmp   n55_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_match_sequence_α:
                                                                                        jmp   n25_lit_integer_α
n14_match_sequence_as:
                                                                                        jmp   n15_match_release_α
n14_match_sequence_β:
                                                                                        jmp   n19_match_rpos_β
n14_match_sequence_af:
                                                                                        jmp   n13_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx81_8:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx81_8
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
.Lx81_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx81_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx81_1:
                        test             rax, rax
                                                                                        je    .Lx81_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx81_3]
                        lea              rdx, [rip + .Lx81_4]
                                                                                        jmp   rax
.Lx81_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx81_1
.Lx81_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx81_1
.Lx81_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx81_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx81_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 528]
                        mov              r14, qword ptr [rbp + 536]
                        mov              r15, qword ptr [rbp + 544]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 408]
                        add              rsp, 736
                                                                                        jmp   n16_lit_string_α
#=======================================================================================================================
# A3 OUTPUT = '3:nullable-second-ok'                            :(END)
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_assign_α
n16_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "3:nullable-second-ok"
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx83_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n17_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rsp + 704], 6
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 712], rax
                                                                                        jmp   n19_match_rpos_α
n18_lit_integer_β:
                                                                                        jmp   n20_match_lit_β
.Lx84_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n19_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n20_match_lit_β
                                                                                        jmp   n15_match_release_α
n19_match_rpos_β:
                                                                                        jmp   n20_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n21_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66
                                                                                        jne   n21_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n18_lit_integer_α
n20_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n21_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_arbno_α:
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
                                                                                        jmp   n20_match_lit_α
n21_match_arbno_β:
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
                                                                                        jmp   n22_match_alternate_α
n21_match_arbno_as:
                        mov              eax, dword ptr [rsp + 1424]
                        cmp              r14d, eax
                                                                                        je    n22_match_alternate_β
                        mov              dword ptr [rsp + 1428], r14d
                                                                                        jmp   n20_match_lit_α
n21_match_arbno_af:
                        mov              eax, dword ptr [rsp + 1432]
                        test             eax, eax
                                                                                        jnz   .Lx89_2
                        add              rsp, 1456
                                                                                        jmp   n22_match_alternate_β
.Lx89_2:
                        mov              r14d, dword ptr [rsp + 1424]
                        add              rsp, 1456
                                                                                        jmp   n26_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_alternate_α:
                        mov              dword ptr [rbp + 768], r14d
                        lea              rax, [rip + .Lx91_21]
                        mov              qword ptr [rbp + 784], rax
                                                                                        jmp   n24_match_lit_α
.Lx91_21:
                        lea              rax, [rip + .Lx91_19]
                        mov              qword ptr [rbp + 784], rax
                                                                                        jmp   n23_match_lit_α
n22_match_alternate_s0:
                        lea              rax, [rip + .Lx91_40]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n22_match_alternate_as
n22_match_alternate_s1:
                        lea              rax, [rip + .Lx91_41]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n22_match_alternate_as
.Lx91_40:
                                                                                        jmp   n24_match_lit_β
.Lx91_41:
                                                                                        jmp   n23_match_lit_β
n22_match_alternate_as:
                                                                                        jmp   n21_match_arbno_as
n22_match_alternate_β:
                        mov              rax, qword ptr [rbp + 776]
                                                                                        jmp   rax
n22_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 768]
                        mov              rax, qword ptr [rbp + 784]
                                                                                        jmp   rax
.Lx91_19:
                                                                                        jmp   n21_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n23_match_lit_α:
                                                                                        jmp   n22_match_alternate_s1
n23_match_lit_β:
                                                                                        jmp   n22_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n24_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n22_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n22_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n22_match_alternate_s0
n24_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n22_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        mov              qword ptr [rsp + 576], 6
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n26_match_pos_α
n25_lit_integer_β:
                                                                                        jmp   n13_match_head_β
.Lx96_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n26_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n13_match_head_β
                                                                                        jmp   n21_match_arbno_α
n26_match_pos_β:
                                                                                        jmp   n13_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:
                        mov              qword ptr [rsp + 400], 6
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n28_match_rpos_α
n27_lit_integer_β:
                                                                                        jmp   n29_match_lit_β
.Lx98_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n28_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n29_match_lit_β
                                                                                        jmp   n9_match_release_α
n28_match_rpos_β:
                                                                                        jmp   n29_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n29_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n30_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66
                                                                                        jne   n30_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n27_lit_integer_α
n29_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n30_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n30_match_arbno_α:
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
                                                                                        jmp   n29_match_lit_α
n30_match_arbno_β:
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
                                                                                        jmp   n31_match_alternate_α
n30_match_arbno_as:
                        mov              eax, dword ptr [rsp + 816]
                        cmp              r14d, eax
                                                                                        je    n31_match_alternate_β
                        mov              dword ptr [rsp + 820], r14d
                                                                                        jmp   n29_match_lit_α
n30_match_arbno_af:
                        mov              eax, dword ptr [rsp + 824]
                        test             eax, eax
                                                                                        jnz   .Lx103_2
                        add              rsp, 848
                                                                                        jmp   n31_match_alternate_β
.Lx103_2:
                        mov              r14d, dword ptr [rsp + 816]
                        add              rsp, 848
                                                                                        jmp   n35_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n31_match_alternate_α:
                        mov              dword ptr [rbp + 464], r14d
                        lea              rax, [rip + .Lx105_21]
                        mov              qword ptr [rbp + 480], rax
                                                                                        jmp   n33_match_lit_α
.Lx105_21:
                        lea              rax, [rip + .Lx105_19]
                        mov              qword ptr [rbp + 480], rax
                                                                                        jmp   n32_match_lit_α
n31_match_alternate_s0:
                        lea              rax, [rip + .Lx105_40]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n31_match_alternate_as
n31_match_alternate_s1:
                        lea              rax, [rip + .Lx105_41]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n31_match_alternate_as
.Lx105_40:
                                                                                        jmp   n33_match_lit_β
.Lx105_41:
                                                                                        jmp   n32_match_lit_β
n31_match_alternate_as:
                                                                                        jmp   n30_match_arbno_as
n31_match_alternate_β:
                        mov              rax, qword ptr [rbp + 472]
                                                                                        jmp   rax
n31_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 464]
                        mov              rax, qword ptr [rbp + 480]
                                                                                        jmp   rax
.Lx105_19:
                                                                                        jmp   n30_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n32_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n31_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 65
                                                                                        jne   n31_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n31_match_alternate_s1
n32_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n31_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n33_match_lit_α:
                                                                                        jmp   n31_match_alternate_s0
n33_match_lit_β:
                                                                                        jmp   n31_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        mov              qword ptr [rsp + 272], 6
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n35_match_pos_α
n34_lit_integer_β:
                                                                                        jmp   n7_match_head_β
.Lx110_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n35_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n7_match_head_β
                                                                                        jmp   n30_match_arbno_α
n35_match_pos_β:
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rsp + 208], 6
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n37_match_rpos_α
n36_lit_integer_β:
                                                                                        jmp   n38_match_lit_β
.Lx112_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n37_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n38_match_lit_β
                                                                                        jmp   n3_match_release_α
n37_match_rpos_β:
                                                                                        jmp   n38_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n38_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n39_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66
                                                                                        jne   n39_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   n36_lit_integer_α
n38_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n39_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n39_match_arbno_α:
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
                                                                                        jmp   n38_match_lit_α
n39_match_arbno_β:
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
                                                                                        jmp   n40_match_lit_α
n39_match_arbno_as:
                        mov              eax, dword ptr [rsp + 128]
                        cmp              r14d, eax
                                                                                        je    n40_match_lit_β
                        mov              dword ptr [rsp + 132], r14d
                                                                                        jmp   n38_match_lit_α
n39_match_arbno_af:
                        mov              eax, dword ptr [rsp + 136]
                        test             eax, eax
                                                                                        jnz   .Lx117_2
                        add              rsp, 160
                                                                                        jmp   n40_match_lit_β
.Lx117_2:
                        mov              r14d, dword ptr [rsp + 128]
                        add              rsp, 160
                                                                                        jmp   n42_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n40_match_lit_α:
                                                                                        jmp   n39_match_arbno_as
n40_match_lit_β:
                                                                                        jmp   n39_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rsp + 128], 6
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n42_match_pos_α
n41_lit_integer_β:
                                                                                        jmp   n1_match_head_β
.Lx120_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n42_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n1_match_head_β
                                                                                        jmp   n39_match_arbno_α
n42_match_pos_β:
                                                                                        jmp   n1_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n43_goto_α:
                                                                                        jmp   n4_lit_string_α
n43_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n44_goto_α:
                                                                                        jmp   n45_lit_string_α
n44_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# B1 OUTPUT = '1:null-body-fail'
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n46_assign_α
n45_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n6_lit_string_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "1:null-body-fail"
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx125_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n6_lit_string_α
n46_assign_β:
                        add              rsp, 16
                                                                                        jmp   n6_lit_string_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n47_goto_α:
                                                                                        jmp   n6_lit_string_α
n47_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_goto_α:
                                                                                        jmp   n10_lit_string_α
n48_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_goto_α:
                                                                                        jmp   n50_lit_string_α
n49_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# B2 OUTPUT = '2:nullable-first-fail'
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n51_assign_α
n50_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "2:nullable-first-fail"
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx130_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
n51_assign_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n52_goto_α:
                                                                                        jmp   n12_lit_string_α
n52_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n53_goto_α:
                                                                                        jmp   n16_lit_string_α
n53_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n54_goto_α:
                                                                                        jmp   n55_lit_string_α
n54_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# B3 OUTPUT = '3:nullable-second-fail'
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n56_assign_α
n55_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "3:nullable-second-fail"
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx135_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n56_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
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
