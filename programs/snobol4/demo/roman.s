                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_α:
proc_LBL__ROMAN_α_body:
#=======================================================================================================================
# ROMAN	N RPOS(1) LEN(1) . UNITS =	:F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_var_α
n0_statement_begin_β:
                                                                                        jmp   n36_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
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
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 208], rax                     # result
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n2_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n2_match_begin_α:
                        mov              qword ptr [rbp + 96], r13                      # outer_Σ
                        mov              qword ptr [rbp + 104], r14                     # outer_δ
                        mov              qword ptr [rbp + 112], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 120], rax                     # cap_gen
                        mov              qword ptr [rbp + 88], rbp                      # old_rbp
                        mov              rdi, qword ptr [rbp + 240]                     # lo
                        mov              rsi, qword ptr [rbp + 248]                     # hi
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx41_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n3_lit_integer_α
n2_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx41_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx41_1
                                                                                        jmp   .Lx41_0
.Lx41_1:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rbp + 96]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 104]                     # outer_δ
                        mov              r15, qword ptr [rbp + 112]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 120]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]                      # old_rbp
                        add              rsp, 224
                                                                                        jmp   n36_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rsp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n4_match_rpos_α
.Lx42_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_match_rpos_α:
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n2_match_begin_β
                                                                                        jmp   n5_match_assign_save_α
n4_match_rpos_β:
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n6_match_len_α
n5_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx46_240
                        add              rsp, 16
                                                                                        jmp   n2_match_begin_β
.Lx46_240:
                        add              r14d, 1
                                                                                        jmp   n7_match_assign_cond_α
n6_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n7_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n8_match_end_α
n7_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n6_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_end_α:
                        mov              r10, r12
.Lx50_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx50_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 96], eax
                        mov              qword ptr [rsp + 120], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx50_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx50_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx50_1:
                        test             rax, rax
                                                                                        je    .Lx50_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx50_3]
                        lea              rdx, [rip + .Lx50_4]
                                                                                        jmp   rax
.Lx50_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx50_1
.Lx50_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx50_1
.Lx50_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 96]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 104]                     # outer_δ
                        mov              r15, qword ptr [rbp + 112]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 120]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rsp + 112], 2                       # result
                        mov              dword ptr [rsp + 116], 0
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n10_match_replace_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n10_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx53_0]                 # name
                        mov              rsi, qword ptr [rbp + 240]                     # sub_lo
                        mov              rdx, qword ptr [rbp + 248]                     # sub_hi
                        mov              ecx, dword ptr [rbp + 48]                      # start
                        mov              r8, qword ptr [rbp + 72]                       # end
                        lea              r9, [rbp + 144]                                # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx53_1
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "N"
.Lx53_1:
                        mov              rbp, qword ptr [rbp + 88]                      # old_rbp
                                                                                        jmp   n11_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:
                        add              rsp, 224
                                                                                        jmp   n12_statement_begin_α
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:
                                                                                        jmp   n13_statement_end_α
n12_statement_begin_β:
                                                                                        jmp   n14_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:
                                                                                        jmp   n14_statement_begin_α
#=======================================================================================================================
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_begin_α:
                                                                                        jmp   n15_lit_string_α
n14_statement_begin_β:
                                                                                        jmp   n35_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        sub              rsp, 176
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
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_match_begin_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
n16_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 320], r13                     # outer_Σ
                        mov              qword ptr [rbp + 328], r14                     # outer_δ
                        mov              qword ptr [rbp + 336], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 344], rax                     # cap_gen
                        mov              qword ptr [rbp + 312], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 288], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 280], rax                     # patstk_mark
                        mov              dword ptr [rbp + 272], 0                       # start_δ
.Lx64_0:
                        mov              r14d, dword ptr [rbp + 272]
                                                                                        jmp   n17_match_patref_α
n16_match_begin_β:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, r15d
                                                                                        jg    .Lx64_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx64_1
                                                                                        jmp   .Lx64_0
.Lx64_1:
                        mov              rax, qword ptr [rbp + 280]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 288]
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 320]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 328]                     # outer_δ
                        mov              r15, qword ptr [rbp + 336]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 344]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 312]                     # old_rbp
                        add              rsp, 176
                                                                                        jmp   n35_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n17_match_patref_α:
                        mov              rax, qword ptr [1879052320]                    # UNITS
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx65_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx65_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx65_10
.Lx65_9:
                        xor              eax, eax
.Lx65_10:
                        test             rax, rax
                                                                                        jz    .Lx65_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx65_4]
                        lea              rdx, [rip + .Lx65_5]
                                                                                        jmp   rax
.Lx65_4:
                                                                                        jmp   n18_match_assign_save_α
.Lx65_5:
                                                                                        jmp   n16_match_begin_β
.Lx65_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx65_2:
                        test             rax, rax
                                                                                        je    .Lx65_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx65_7]
                        lea              rdx, [rip + .Lx65_8]
                                                                                        jmp   rax
.Lx65_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx65_2
.Lx65_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx65_2
.Lx65_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n16_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx65_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n18_match_assign_save_α
.Lx65_6:
                        add              rsp, 16
                                                                                        jmp   n16_match_begin_β
n17_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n18_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n19_match_break_α
n18_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n17_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx69_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx69_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n17_match_patref_β
.Lx69_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx69_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx69_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n17_match_patref_β
.Lx69_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx69_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx69_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n17_match_patref_β
.Lx69_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx69_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx69_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n17_match_patref_β
.Lx69_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx69_1
                        add              ecx, 1
                                                                                        jmp   .Lx69_0
.Lx69_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n20_match_assign_cond_α
n19_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n17_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n20_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n21_match_end_α
n20_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n19_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_end_α:
                        mov              rax, qword ptr [rbp + 280]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 288]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx73_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx73_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx73_1:
                        test             rax, rax
                                                                                        je    .Lx73_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx73_3]
                        lea              rdx, [rip + .Lx73_4]
                                                                                        jmp   rax
.Lx73_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx73_1
.Lx73_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx73_1
.Lx73_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 320]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 328]                     # outer_δ
                        mov              r15, qword ptr [rbp + 336]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 344]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 312]                     # old_rbp
                                                                                        jmp   n22_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:
                        add              rsp, 176
                                                                                        jmp   n23_statement_begin_α
#=======================================================================================================================
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:
                                                                                        jmp   n24_statement_end_α
n23_statement_begin_β:
                                                                                        jmp   n25_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:
                                                                                        jmp   n25_statement_begin_α
#=======================================================================================================================
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:
                                                                                        jmp   n26_var_α
n25_statement_begin_β:
                                                                                        jmp   n35_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n27_call_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # var
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # UNITS
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052288]                    # ROMAN
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx84_0]                 # name
                        mov              esi, 2                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx84_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx84_6]
                        lea              rdx, [rip + .Lx84_7]
                                                                                        jmp   rax
.Lx84_6:
                        mov              rdi, qword ptr [1879052288]                    # ROMAN
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # UNITS
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx84_2
.Lx84_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax                    # ROMAN
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # UNITS
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx84_2
.Lx84_5:
                        add              rsp, 48
.Lx84_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx84_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n35_save_restore_α
.Lx84_240:
                                                                                        jmp   n28_lit_string_α
n27_call_β:
                                                                                        jmp   n35_save_restore_α
.Lx84_0:
                        .quad            .Lx84_0_s
.Lx84_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n29_lit_string_α
n28_lit_string_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n35_save_restore_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n30_call_α
n29_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n28_lit_string_β
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n30_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              r10, qword ptr [rsp + 96]
                        mov              r11, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 80]
                        mov              r11, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 32], r10
                        mov              qword ptr [rsp + 40], r11
                        .section         .rodata
.Lrkfnzd88:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd88]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx87_240
                        add              rsp, 16
                                                                                        jmp   n29_lit_string_β
.Lx87_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n31_var_α
n30_call_β:
                        add              rsp, 16
                                                                                        jmp   n29_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # UNITS
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n32_binop_α
n31_var_β:
                        add              rsp, 32
                                                                                        jmp   n29_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n33_assign_α
n32_binop_β:
                        add              rsp, 16
                                                                                        jmp   n31_var_β
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # ROMAN
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n34_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:
                                                                                        jmp   n36_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n35_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n36_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_β:
                                                                                        jmp   proc_LBL__ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_γ:
                        mov              rsp, rbp
                        pop              rbp
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_α:
proc_LBL__TEST_α_body:
#=======================================================================================================================
# TEST	OUTPUT = I ' -> ' ROMAN(I)
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_begin_α:
                                                                                        jmp   n99_var_α
n98_statement_begin_β:
                                                                                        jmp   n107_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n100_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n101_binop_α
n100_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n107_statement_begin_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          " -> "
#-----------------------------------------------------------------------------------------------------------------------
n101_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n102_var_α
n101_binop_β:
                        add              rsp, 16
                                                                                        jmp   n100_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n103_call_α
n102_var_β:
                        add              rsp, 16
                                                                                        jmp   n101_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n103_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # var
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # UNITS
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052288]                    # ROMAN
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx128_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx128_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx128_6]
                        lea              rdx, [rip + .Lx128_7]
                                                                                        jmp   rax
.Lx128_6:
                        mov              rdi, qword ptr [1879052288]                    # ROMAN
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # UNITS
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx128_2
.Lx128_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax                    # ROMAN
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # UNITS
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx128_2
.Lx128_5:
                        add              rsp, 48
.Lx128_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx128_240
                        add              rsp, 16
                                                                                        jmp   n102_var_β
.Lx128_240:
                                                                                        jmp   n104_binop_α
n103_call_β:
                                                                                        jmp   n102_var_β
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n104_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n105_assign_α
n104_binop_β:
                        add              rsp, 32
                                                                                        jmp   n102_var_β
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx130_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n106_statement_end_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n107_statement_begin_α
#=======================================================================================================================
# 	EQ(I,J)						:S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α:
                                                                                        jmp   n108_var_α
n107_statement_begin_β:
                                                                                        jmp   n115_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # J
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n110_coerce_numeric_α
n109_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n115_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n110_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx138_1
                        cmp              eax, 3
                                                                                        jne   .Lx138_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx138_0
.Lx138_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n111_coerce_numeric_α
.Lx138_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n111_coerce_numeric_α
n110_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n109_var_β
#-----------------------------------------------------------------------------------------------------------------------
n111_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx140_1
                        cmp              eax, 3
                                                                                        jne   .Lx140_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx140_0
.Lx140_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n112_cmp_test_α
.Lx140_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n112_cmp_test_α
n111_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n110_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n112_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx142_240
                        add              rsp, 16
                                                                                        jmp   n111_coerce_numeric_β
.Lx142_240:
                                                                                        jmp   n113_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:
                                                                                        jmp   n114_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n114_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#=======================================================================================================================
# 	I = I + 1					:(TEST)
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_begin_α:
                                                                                        jmp   n116_var_α
n115_statement_begin_β:
                                                                                        jmp   n98_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n117_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n118_binop_α
n117_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n98_statement_begin_α
.Lx150_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n118_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx151_240
                        add              rsp, 16
                                                                                        jmp   n117_lit_integer_β
.Lx151_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n119_assign_α
n118_binop_β:
                        add              rsp, 16
                                                                                        jmp   n117_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # I
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n120_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n98_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_β:
                                                                                        jmp   proc_LBL__TEST_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_γ:
                        mov              rsp, rbp
                        pop              rbp
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ROMAN_α
proc_ROMAN_α:
proc_ROMAN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n155_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n156_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n156_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx160_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx160_1
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "ROMAN"
.Lx160_1:
                                                                                        jmp   proc_ROMAN_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_β:
                                                                                        jmp   proc_ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_TEST_α
proc_TEST_α:
proc_TEST_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n161_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n162_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n162_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx166_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx166_1
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "TEST"
.Lx166_1:
                                                                                        jmp   proc_TEST_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_TEST_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_TEST_β:
                                                                                        jmp   proc_TEST_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_TEST_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_TEST_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__ROMAN"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__ROMAN_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1264
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__TEST"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_LBL__TEST_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1264
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "ROMAN"
.Lstartup_pp2_0:        .string          "N"
.Lstartup_pp2_1:        .string          "UNITS"
                        .align           8
.Lstartup_pnames2:
                        .quad            .Lstartup_pp2_0
                        .quad            .Lstartup_pp2_1
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_pnames2]
                        mov              edx, 2
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_ROMAN_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "TEST"
.Lstartup_pp3_0:        .string          "I"
.Lstartup_pp3_1:        .string          "J"
                        .align           8
.Lstartup_pnames3:
                        .quad            .Lstartup_pp3_0
                        .quad            .Lstartup_pp3_1
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + .Lstartup_pnames3]
                        mov              edx, 2
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_TEST_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "ROMAN"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "UNITS"
.Lgvan3:                .string          "TEST"
.Lgvan4:                .string          "I"
.Lgvan5:                .string          "J"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
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
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_begin_α:
                                                                                        jmp   n168_statement_end_α
n167_statement_begin_β:
                                                                                        jmp   n169_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_end_α:
                                                                                        jmp   n169_statement_begin_α
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_begin_α:
                                                                                        jmp   n170_statement_end_α
n169_statement_begin_β:
                                                                                        jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:
                                                                                        jmp   n171_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α:
                                                                                        jmp   n172_statement_end_α
n171_statement_begin_β:
                                                                                        jmp   n173_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:
                                                                                        jmp   n173_statement_begin_α
#=======================================================================================================================
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α:
                                                                                        jmp   n174_statement_end_α
n173_statement_begin_β:
                                                                                        jmp   n175_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:
                                                                                        jmp   n175_statement_begin_α
#=======================================================================================================================
# 	DEFINE("TEST(I,J)")				:(TEST_END)
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_begin_α:
                                                                                        jmp   n176_statement_end_α
n175_statement_begin_β:
                                                                                        jmp   n177_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:
                                                                                        jmp   n177_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_begin_α:
                                                                                        jmp   n178_statement_end_α
n177_statement_begin_β:
                                                                                        jmp   n179_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_end_α:
                                                                                        jmp   n179_statement_begin_α
#=======================================================================================================================
# 	TEST(1,100)
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_begin_α:
                                                                                        jmp   n180_lit_integer_α
n179_statement_begin_β:
                                                                                        jmp   n184_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n181_lit_integer_α
.Lx290_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n182_call_α
n181_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n184_statement_begin_α
.Lx291_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n182_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]                    # J
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]                    # TEST
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx293_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx293_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052352], rax                    # I
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052360], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052368], rax                    # J
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx293_6]
                        lea              rdx, [rip + .Lx293_7]
                                                                                        jmp   rax
.Lx293_6:
                        mov              rdi, qword ptr [1879052336]                    # TEST
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # J
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # I
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx293_2
.Lx293_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax                    # TEST
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # J
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # I
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx293_2
.Lx293_5:
                        add              rsp, 48
.Lx293_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx293_240
                        add              rsp, 16
                                                                                        jmp   n181_lit_integer_β
.Lx293_240:
                                                                                        jmp   n183_statement_end_α
n182_call_β:
                                                                                        jmp   n181_lit_integer_β
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n184_statement_begin_α
#=======================================================================================================================
# 	TEST(149,151)
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_begin_α:
                                                                                        jmp   n185_lit_integer_α
n184_statement_begin_β:
                                                                                        jmp   n189_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n186_lit_integer_α
.Lx298_0:
                        .quad            149
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n187_call_α
n186_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n189_statement_begin_α
.Lx299_0:
                        .quad            151
#-----------------------------------------------------------------------------------------------------------------------
n187_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]                    # J
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]                    # TEST
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx301_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx301_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052352], rax                    # I
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052360], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052368], rax                    # J
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx301_6]
                        lea              rdx, [rip + .Lx301_7]
                                                                                        jmp   rax
.Lx301_6:
                        mov              rdi, qword ptr [1879052336]                    # TEST
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # J
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # I
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx301_2
.Lx301_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax                    # TEST
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # J
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # I
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx301_2
.Lx301_5:
                        add              rsp, 48
.Lx301_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx301_240
                        add              rsp, 16
                                                                                        jmp   n186_lit_integer_β
.Lx301_240:
                                                                                        jmp   n188_statement_end_α
n187_call_β:
                                                                                        jmp   n186_lit_integer_β
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n189_statement_begin_α
#=======================================================================================================================
# 	TEST(480,520)
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_begin_α:
                                                                                        jmp   n190_lit_integer_α
n189_statement_begin_β:
                                                                                        jmp   n194_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n191_lit_integer_α
.Lx306_0:
                        .quad            480
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n192_call_α
n191_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n194_statement_begin_α
.Lx307_0:
                        .quad            520
#-----------------------------------------------------------------------------------------------------------------------
n192_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]                    # J
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]                    # TEST
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx309_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx309_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052352], rax                    # I
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052360], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052368], rax                    # J
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx309_6]
                        lea              rdx, [rip + .Lx309_7]
                                                                                        jmp   rax
.Lx309_6:
                        mov              rdi, qword ptr [1879052336]                    # TEST
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # J
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # I
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx309_2
.Lx309_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax                    # TEST
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # J
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # I
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx309_2
.Lx309_5:
                        add              rsp, 48
.Lx309_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx309_240
                        add              rsp, 16
                                                                                        jmp   n191_lit_integer_β
.Lx309_240:
                                                                                        jmp   n193_statement_end_α
n192_call_β:
                                                                                        jmp   n191_lit_integer_β
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n194_statement_begin_α
#=======================================================================================================================
# 	TEST(1900,2100)
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_begin_α:
                                                                                        jmp   n195_lit_integer_α
n194_statement_begin_β:
                                                                                        jmp   n199_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n196_lit_integer_α
.Lx314_0:
                        .quad            1900
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n197_call_α
n196_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n199_statement_begin_α
.Lx315_0:
                        .quad            2100
#-----------------------------------------------------------------------------------------------------------------------
n197_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 32]                      # lit_integer
                        mov              rdx, qword ptr [rsp + 40]                      # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # v
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]                    # J
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]                    # TEST
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx317_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx317_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052352], rax                    # I
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052360], rax
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [1879052368], rax                    # J
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx317_6]
                        lea              rdx, [rip + .Lx317_7]
                                                                                        jmp   rax
.Lx317_6:
                        mov              rdi, qword ptr [1879052336]                    # TEST
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # J
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # I
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx317_2
.Lx317_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax                    # TEST
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax                    # J
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax                    # I
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx317_2
.Lx317_5:
                        add              rsp, 48
.Lx317_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx317_240
                        add              rsp, 16
                                                                                        jmp   n196_lit_integer_β
.Lx317_240:
                                                                                        jmp   n198_statement_end_α
n197_call_β:
                                                                                        jmp   n196_lit_integer_β
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n199_statement_begin_α
#=======================================================================================================================
# 	TEST(1900,2100)
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_begin_α:
                                                                                        jmp   n200_statement_end_α
n199_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_end_α:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n201_goto_α:
                                                                                        jmp   n202_statement_begin_α
n201_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# ROMAN	N RPOS(1) LEN(1) . UNITS =	:F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_begin_α:
                                                                                        jmp   n203_var_α
n202_statement_begin_β:
                                                                                        jmp   n238_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:
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
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 208], rax                     # result
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n204_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n204_match_begin_α:
                        mov              qword ptr [rbp + 96], r13                      # outer_Σ
                        mov              qword ptr [rbp + 104], r14                     # outer_δ
                        mov              qword ptr [rbp + 112], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 120], rax                     # cap_gen
                        mov              qword ptr [rbp + 88], rbp                      # old_rbp
                        mov              rdi, qword ptr [rbp + 240]                     # lo
                        mov              rsi, qword ptr [rbp + 248]                     # hi
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax                      # rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax                       # patstk_mark
                        mov              dword ptr [rsp + 0], 0                         # start_δ
.Lx329_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n205_lit_integer_α
n204_match_begin_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx329_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx329_1
                                                                                        jmp   .Lx329_0
.Lx329_1:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 16]                      # cas_patstk
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rbp + 96]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 104]                     # outer_δ
                        mov              r15, qword ptr [rbp + 112]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 120]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]                      # old_rbp
                        add              rsp, 224
                                                                                        jmp   n238_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_integer_α:
                        mov              qword ptr [rsp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n206_match_rpos_α
.Lx330_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n206_match_rpos_α:
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n204_match_begin_β
                                                                                        jmp   n207_match_assign_save_α
n206_match_rpos_β:
                                                                                        jmp   n204_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n207_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n208_match_len_α
n207_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n204_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n208_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx334_240
                        add              rsp, 16
                                                                                        jmp   n204_match_begin_β
.Lx334_240:
                        add              r14d, 1
                                                                                        jmp   n209_match_assign_cond_α
n208_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n204_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n209_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n210_match_end_α
n209_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n208_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n210_match_end_α:
                        mov              r10, r12
.Lx338_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx338_9
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 96], eax
                        mov              qword ptr [rsp + 120], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx338_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx338_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx338_1:
                        test             rax, rax
                                                                                        je    .Lx338_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx338_3]
                        lea              rdx, [rip + .Lx338_4]
                                                                                        jmp   rax
.Lx338_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx338_1
.Lx338_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx338_1
.Lx338_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 96]                      # outer_Σ
                        mov              r14, qword ptr [rbp + 104]                     # outer_δ
                        mov              r15, qword ptr [rbp + 112]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 120]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n211_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:
                        mov              qword ptr [rsp + 112], 2                       # result
                        mov              dword ptr [rsp + 116], 0
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n212_match_replace_α
.Lx339_0:
                        .quad            .Lx339_0_s
.Lx339_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n212_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx341_0]                # name
                        mov              rsi, qword ptr [rbp + 240]                     # sub_lo
                        mov              rdx, qword ptr [rbp + 248]                     # sub_hi
                        mov              ecx, dword ptr [rbp + 48]                      # start
                        mov              r8, qword ptr [rbp + 72]                       # end
                        lea              r9, [rbp + 144]                                # replp
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx341_1
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "N"
.Lx341_1:
                        mov              rbp, qword ptr [rbp + 88]                      # old_rbp
                                                                                        jmp   n213_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_end_α:
                        add              rsp, 224
                                                                                        jmp   n214_statement_begin_α
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_begin_α:
                                                                                        jmp   n215_statement_end_α
n214_statement_begin_β:
                                                                                        jmp   n216_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n215_statement_end_α:
                                                                                        jmp   n216_statement_begin_α
#=======================================================================================================================
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
#-----------------------------------------------------------------------------------------------------------------------
n216_statement_begin_α:
                                                                                        jmp   n217_lit_string_α
n216_statement_begin_β:
                                                                                        jmp   n237_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        sub              rsp, 176
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
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n218_match_begin_α
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
n218_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [rbp + 320], r13                     # outer_Σ
                        mov              qword ptr [rbp + 328], r14                     # outer_δ
                        mov              qword ptr [rbp + 336], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 344], rax                     # cap_gen
                        mov              qword ptr [rbp + 312], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r12 + 16], rax                      # cas_patstk
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 288], rsp                     # zls2_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 280], rax                     # patstk_mark
                        mov              dword ptr [rbp + 272], 0                       # start_δ
.Lx352_0:
                        mov              r14d, dword ptr [rbp + 272]
                                                                                        jmp   n219_match_patref_α
n218_match_begin_β:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, r15d
                                                                                        jg    .Lx352_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx352_1
                                                                                        jmp   .Lx352_0
.Lx352_1:
                        mov              rax, qword ptr [rbp + 280]                     # patstk_mark
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 288]
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 320]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 328]                     # outer_δ
                        mov              r15, qword ptr [rbp + 336]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 344]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 312]                     # old_rbp
                        add              rsp, 176
                                                                                        jmp   n237_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n219_match_patref_α:
                        mov              rax, qword ptr [1879052320]                    # UNITS
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx353_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx353_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx353_10
.Lx353_9:
                        xor              eax, eax
.Lx353_10:
                        test             rax, rax
                                                                                        jz    .Lx353_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx353_4]
                        lea              rdx, [rip + .Lx353_5]
                                                                                        jmp   rax
.Lx353_4:
                                                                                        jmp   n220_match_assign_save_α
.Lx353_5:
                                                                                        jmp   n218_match_begin_β
.Lx353_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx353_2:
                        test             rax, rax
                                                                                        je    .Lx353_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx353_7]
                        lea              rdx, [rip + .Lx353_8]
                                                                                        jmp   rax
.Lx353_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx353_2
.Lx353_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx353_2
.Lx353_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n218_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx353_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n220_match_assign_save_α
.Lx353_6:
                        add              rsp, 16
                                                                                        jmp   n218_match_begin_β
n219_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n220_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n221_match_break_α
n220_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n219_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n221_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx357_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx357_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n219_match_patref_β
.Lx357_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx357_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx357_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n219_match_patref_β
.Lx357_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx357_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx357_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n219_match_patref_β
.Lx357_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx357_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx357_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n219_match_patref_β
.Lx357_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx357_1
                        add              ecx, 1
                                                                                        jmp   .Lx357_0
.Lx357_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n222_match_assign_cond_α
n221_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n219_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n222_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n223_match_end_α
n222_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n221_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n223_match_end_α:
                        mov              rax, qword ptr [rbp + 280]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 288]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx361_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx361_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx361_1:
                        test             rax, rax
                                                                                        je    .Lx361_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx361_3]
                        lea              rdx, [rip + .Lx361_4]
                                                                                        jmp   rax
.Lx361_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx361_1
.Lx361_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx361_1
.Lx361_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rbp + 320]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 328]                     # outer_δ
                        mov              r15, qword ptr [rbp + 336]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 344]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 312]                     # old_rbp
                                                                                        jmp   n224_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_end_α:
                        add              rsp, 176
                                                                                        jmp   n225_statement_begin_α
#=======================================================================================================================
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_begin_α:
                                                                                        jmp   n226_statement_end_α
n225_statement_begin_β:
                                                                                        jmp   n227_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_end_α:
                                                                                        jmp   n227_statement_begin_α
#=======================================================================================================================
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
#-----------------------------------------------------------------------------------------------------------------------
n227_statement_begin_α:
                                                                                        jmp   n228_var_α
n227_statement_begin_β:
                                                                                        jmp   n237_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n229_call_α
#-----------------------------------------------------------------------------------------------------------------------
n229_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # var
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # UNITS
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052288]                    # ROMAN
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx372_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx372_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx372_6]
                        lea              rdx, [rip + .Lx372_7]
                                                                                        jmp   rax
.Lx372_6:
                        mov              rdi, qword ptr [1879052288]                    # ROMAN
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # UNITS
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx372_2
.Lx372_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax                    # ROMAN
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # UNITS
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx372_2
.Lx372_5:
                        add              rsp, 48
.Lx372_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx372_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n237_save_restore_α
.Lx372_240:
                                                                                        jmp   n230_lit_string_α
n229_call_β:
                                                                                        jmp   n237_save_restore_α
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n231_lit_string_α
n230_lit_string_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n237_save_restore_α
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n232_call_α
n231_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n230_lit_string_β
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n232_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              r10, qword ptr [rsp + 96]
                        mov              r11, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 80]
                        mov              r11, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 32], r10
                        mov              qword ptr [rsp + 40], r11
                        .section         .rodata
.Lrkfnzd376:            .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd376]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx375_240
                        add              rsp, 16
                                                                                        jmp   n231_lit_string_β
.Lx375_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n233_var_α
n232_call_β:
                        add              rsp, 16
                                                                                        jmp   n231_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # UNITS
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n234_binop_α
n233_var_β:
                        add              rsp, 32
                                                                                        jmp   n231_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n234_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n235_assign_α
n234_binop_β:
                        add              rsp, 16
                                                                                        jmp   n233_var_β
#-----------------------------------------------------------------------------------------------------------------------
n235_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # ROMAN
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n236_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n236_statement_end_α:
                                                                                        jmp   n238_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n237_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n238_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n239_goto_α:
                                                                                        jmp   n171_statement_begin_α
n239_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n240_goto_α:
                                                                                        jmp   n241_statement_begin_α
n240_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# TEST	OUTPUT = I ' -> ' ROMAN(I)
#-----------------------------------------------------------------------------------------------------------------------
n241_statement_begin_α:
                                                                                        jmp   n242_var_α
n241_statement_begin_β:
                                                                                        jmp   n250_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n243_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n244_binop_α
n243_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n250_statement_begin_α
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          " -> "
#-----------------------------------------------------------------------------------------------------------------------
n244_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n245_var_α
n244_binop_β:
                        add              rsp, 16
                                                                                        jmp   n243_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n245_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n246_call_α
n245_var_β:
                        add              rsp, 16
                                                                                        jmp   n244_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n246_call_α:
                        sub              rsp, 16
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 16]                      # var
                        mov              rdx, qword ptr [rsp + 24]                      # v
                        call             rt_arg_stage@PLT
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]                    # UNITS
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052288]                    # ROMAN
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx395_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx395_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx395_6]
                        lea              rdx, [rip + .Lx395_7]
                                                                                        jmp   rax
.Lx395_6:
                        mov              rdi, qword ptr [1879052288]                    # ROMAN
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # UNITS
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx395_2
.Lx395_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax                    # ROMAN
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax                    # UNITS
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx395_2
.Lx395_5:
                        add              rsp, 48
.Lx395_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx395_240
                        add              rsp, 16
                                                                                        jmp   n245_var_β
.Lx395_240:
                                                                                        jmp   n247_binop_α
n246_call_β:
                                                                                        jmp   n245_var_β
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n247_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n248_assign_α
n247_binop_β:
                        add              rsp, 32
                                                                                        jmp   n245_var_β
#-----------------------------------------------------------------------------------------------------------------------
n248_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx397_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n249_statement_end_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n250_statement_begin_α
#=======================================================================================================================
# 	EQ(I,J)						:S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_begin_α:
                                                                                        jmp   n251_var_α
n250_statement_begin_β:
                                                                                        jmp   n257_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n252_var_α
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # J
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n253_coerce_numeric_α
n252_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n257_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n253_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx405_1
                        cmp              eax, 3
                                                                                        jne   .Lx405_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx405_0
.Lx405_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n254_coerce_numeric_α
.Lx405_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n254_coerce_numeric_α
n253_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n252_var_β
#-----------------------------------------------------------------------------------------------------------------------
n254_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx407_1
                        cmp              eax, 3
                                                                                        jne   .Lx407_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx407_0
.Lx407_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n255_cmp_test_α
.Lx407_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n255_cmp_test_α
n254_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n253_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n255_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx409_240
                        add              rsp, 16
                                                                                        jmp   n254_coerce_numeric_β
.Lx409_240:
                                                                                        jmp   n256_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n238_save_restore_α
#=======================================================================================================================
# 	I = I + 1					:(TEST)
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_begin_α:
                                                                                        jmp   n258_var_α
n257_statement_begin_β:
                                                                                        jmp   n241_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n259_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n260_binop_α
n259_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n241_statement_begin_α
.Lx415_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n260_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx416_240
                        add              rsp, 16
                                                                                        jmp   n259_lit_integer_β
.Lx416_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n261_assign_α
n260_binop_β:
                        add              rsp, 16
                                                                                        jmp   n259_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n261_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # I
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n262_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n241_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n263_goto_α:
                                                                                        jmp   n177_statement_begin_α
n263_goto_β:
                                                                                        jmp   main_ω
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
.S0:                    .string          "UNITS"
                        .text
                        .section         .note.GNU-stack,"",@progbits
