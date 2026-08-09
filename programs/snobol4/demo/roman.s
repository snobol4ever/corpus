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
                                                                                        jmp   n38_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n2_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n2_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]                       # var
                        mov              rsi, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 256], rdi
                        mov              qword ptr [rbp + 264], rsi
                        mov              qword ptr [rsp + 104], rbp                     # old_rbp
                        mov              rbp, rsp                                       # stmt_base
                        mov              qword ptr [rsp + 48], r13                      # outer_Σ
                        mov              qword ptr [rsp + 56], r14                      # outer_δ
                        mov              qword ptr [rsp + 64], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 72], rax                      # cap_gen
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
.Lx43_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n3_lit_integer_α
n2_match_begin_β:
                        mov              rsp, qword ptr [r12 + -16]                     # rsp_restore
                        sub              rsp, 32
                        add              dword ptr [rsp + 0], 1                         # start_δ
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx43_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx43_1
                                                                                        jmp   .Lx43_0
.Lx43_1:
n2_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rsp + 48]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 56]                      # outer_δ
                        mov              r15, qword ptr [rsp + 64]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 72]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rsp + 40]                      # old_rbp
                        add              rsp, 16
                                                                                        jmp   n38_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n4_match_rpos_α
.Lx44_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_match_rpos_α:
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        je    .Lx45_240
                        add              rsp, 16
                                                                                        jmp   n2_match_begin_β
.Lx45_240:
                                                                                        jmp   n5_match_assign_save_α
n4_match_rpos_β:
                        add              rsp, 16
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + 240], r14d
                                                                                        jmp   n6_match_len_α
n5_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx48_240
                        add              rsp, 16
                                                                                        jmp   n2_match_begin_β
.Lx48_240:
                        add              r14d, 1
                                                                                        jmp   n7_match_assign_cond_α
n6_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n7_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + 240]
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
.Lx52_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx52_9
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 112], eax
                        mov              qword ptr [rsp + 136], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx52_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx52_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx52_1:
                        test             rax, rax
                                                                                        je    .Lx52_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx52_3]
                        lea              rdx, [rip + .Lx52_4]
                                                                                        jmp   rax
.Lx52_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx52_1
.Lx52_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx52_1
.Lx52_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rsp + 48]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 56]                      # outer_δ
                        mov              r15, qword ptr [rsp + 64]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_match_replace_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n10_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx55_0]                 # name
                        mov              rsi, qword ptr [rbp + 256]                     # sub_lo
                        mov              rdx, qword ptr [rbp + 264]                     # sub_hi
                        mov              ecx, dword ptr [rbp + 64]                      # start
                        mov              r8, qword ptr [rbp + 88]                       # end
                        lea              r9, [rsp + 0]                                  # lit_string
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx55_1
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "N"
.Lx55_1:
                        mov              rbp, qword ptr [rbp + 104]                     # old_rbp
                                                                                        jmp   n11_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:
                        add              rsp, 16
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
                                                                                        jmp   n37_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n16_var_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # UNITS
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n17_assign_α
n16_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n37_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx66_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n18_match_begin_α
n17_assign_β:
                                                                                        jmp   n16_var_β
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n18_match_begin_α:
                        mov              rdi, qword ptr [rsp + 16]                      # lit_string
                        mov              rsi, qword ptr [rsp + 24]
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
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + 304], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 288], 0                       # start_δ
.Lx68_0:
                        mov              r14d, dword ptr [rbp + 288]
                                                                                        jmp   n19_match_defer_α
n18_match_begin_β:
                        add              dword ptr [rbp + 288], 1
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, r15d
                                                                                        jg    .Lx68_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx68_1
                                                                                        jmp   .Lx68_0
.Lx68_1:
n18_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 304]
                        mov              r13, qword ptr [rbp + 336]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 344]                     # outer_δ
                        mov              r15, qword ptr [rbp + 352]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 360]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 328]                     # old_rbp
                                                                                        jmp   n17_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_defer_α:
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx69_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx69_4]
                        lea              rdx, [rip + .Lx69_5]
                                                                                        jmp   rax
.Lx69_4:
                                                                                        jmp   n20_match_assign_save_α
.Lx69_5:
                                                                                        jmp   n18_match_begin_β
.Lx69_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx69_2:
                        test             rax, rax
                                                                                        je    .Lx69_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx69_7]
                        lea              rdx, [rip + .Lx69_8]
                                                                                        jmp   rax
.Lx69_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx69_2
.Lx69_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx69_2
.Lx69_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n18_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx69_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n20_match_assign_save_α
.Lx69_6:
                        add              rsp, 16
                                                                                        jmp   n18_match_begin_β
n19_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n20_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + 416], r14d
                                                                                        jmp   n21_match_break_α
n20_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n19_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx73_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx73_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n19_match_defer_β
.Lx73_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx73_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx73_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n19_match_defer_β
.Lx73_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx73_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx73_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n19_match_defer_β
.Lx73_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx73_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx73_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n19_match_defer_β
.Lx73_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx73_1
                        add              ecx, 1
                                                                                        jmp   .Lx73_0
.Lx73_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n22_match_assign_cond_α
n21_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n19_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + 416]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n23_match_end_α
n22_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n21_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n23_match_end_α:
                        mov              r10, r12
.Lx77_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx77_9
                        mov              rsp, qword ptr [rbp + 304]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx77_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx77_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx77_1:
                        test             rax, rax
                                                                                        je    .Lx77_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx77_3]
                        lea              rdx, [rip + .Lx77_4]
                                                                                        jmp   rax
.Lx77_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx77_1
.Lx77_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx77_1
.Lx77_2:
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
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 328]                     # old_rbp
                                                                                        jmp   n24_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n25_statement_begin_α
#=======================================================================================================================
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:
                                                                                        jmp   n26_statement_end_α
n25_statement_begin_β:
                                                                                        jmp   n27_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:
                                                                                        jmp   n27_statement_begin_α
#=======================================================================================================================
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_begin_α:
                                                                                        jmp   n28_var_α
n27_statement_begin_β:
                                                                                        jmp   n37_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n29_call_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx88_0]                 # name
                        mov              esi, 2                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx88_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx88_6]
                        lea              rdx, [rip + .Lx88_7]
                                                                                        jmp   rax
.Lx88_6:
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
                                                                                        jmp   .Lx88_2
.Lx88_7:
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
                                                                                        jmp   .Lx88_2
.Lx88_5:
                        add              rsp, 48
.Lx88_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx88_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n27_statement_begin_β
.Lx88_240:
                                                                                        jmp   n30_lit_string_α
n29_call_β:
                                                                                        jmp   n27_statement_begin_β
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n31_lit_string_α
n30_lit_string_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n27_statement_begin_β
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_call_α
n31_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n30_lit_string_β
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:
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
.Lrkfnzd92:             .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd92]                        # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx91_240
                        add              rsp, 16
                                                                                        jmp   n31_lit_string_β
.Lx91_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n33_var_α
n32_call_β:
                        add              rsp, 16
                                                                                        jmp   n31_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # UNITS
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n34_binop_α
n33_var_β:
                        add              rsp, 32
                                                                                        jmp   n31_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n35_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # ROMAN
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n36_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:
                                                                                        jmp   n38_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n37_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx99_0
                        mov              cl, 2
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx99_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n38_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx101_0
                        mov              cl, 0
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx101_0:
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
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_α:
proc_LBL__TEST_α_body:
#=======================================================================================================================
# TEST	OUTPUT = I ' -> ' ROMAN(I)
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_begin_α:
                                                                                        jmp   n103_var_α
n102_statement_begin_β:
                                                                                        jmp   n111_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n104_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n105_binop_α
n104_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n102_statement_begin_β
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          " -> "
#-----------------------------------------------------------------------------------------------------------------------
n105_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n106_var_α
n105_binop_β:
                        add              rsp, 16
                                                                                        jmp   n104_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n107_call_α
n106_var_β:
                        add              rsp, 16
                                                                                        jmp   n105_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n107_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx132_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx132_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx132_6]
                        lea              rdx, [rip + .Lx132_7]
                                                                                        jmp   rax
.Lx132_6:
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
                                                                                        jmp   .Lx132_2
.Lx132_7:
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
                                                                                        jmp   .Lx132_2
.Lx132_5:
                        add              rsp, 48
.Lx132_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx132_240
                        add              rsp, 16
                                                                                        jmp   n106_var_β
.Lx132_240:
                                                                                        jmp   n108_binop_α
n107_call_β:
                                                                                        jmp   n106_var_β
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n108_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n109_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx134_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n110_statement_end_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n111_statement_begin_α
#=======================================================================================================================
# 	EQ(I,J)						:S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_begin_α:
                                                                                        jmp   n112_var_α
n111_statement_begin_β:
                                                                                        jmp   n119_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n113_var_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # J
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n114_coerce_numeric_α
n113_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n111_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n114_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx142_1
                        cmp              eax, 3
                                                                                        jne   .Lx142_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx142_0
.Lx142_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n115_coerce_numeric_α
.Lx142_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n115_coerce_numeric_α
n114_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n113_var_β
#-----------------------------------------------------------------------------------------------------------------------
n115_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx144_1
                        cmp              eax, 3
                                                                                        jne   .Lx144_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx144_0
.Lx144_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n116_cmp_test_α
.Lx144_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n116_cmp_test_α
n115_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n114_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n116_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx146_240
                        add              rsp, 16
                                                                                        jmp   n115_coerce_numeric_β
.Lx146_240:
                                                                                        jmp   n117_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:
                                                                                        jmp   n118_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n118_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx150_0
                        mov              cl, 0
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx150_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#=======================================================================================================================
# 	I = I + 1					:(TEST)
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_begin_α:
                                                                                        jmp   n120_var_α
n119_statement_begin_β:
                                                                                        jmp   n102_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n121_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n122_binop_α
n121_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n119_statement_begin_β
.Lx154_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n122_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx155_240
                        add              rsp, 16
                                                                                        jmp   n121_lit_integer_β
.Lx155_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n123_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # I
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n124_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n102_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_β:
                                                                                        jmp   proc_LBL__TEST_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_γ:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_ω:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ROMAN_α
proc_ROMAN_α:
proc_ROMAN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n159_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n160_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n160_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx164_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx164_1
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "ROMAN"
.Lx164_1:
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
n165_save_restore_α:
                        mov              rdi, rcx                                       # gw
                        mov              rsi, rdx                                       # ww
                        lea              rdx, [rsp + 0]                                 # rsp
                        mov              rcx, rbp                                       # rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n166_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n166_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx170_0]                # name
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx170_1
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "TEST"
.Lx170_1:
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
                        mov              esi, 1376
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
                        mov              esi, 1376
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
                        sub              rsp, 104
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_begin_α:
                                                                                        jmp   n172_statement_end_α
n171_statement_begin_β:
                                                                                        jmp   n173_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:
                                                                                        jmp   n173_statement_begin_α
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α:
                                                                                        jmp   n174_func_activate_α
n173_statement_begin_β:
                                                                                        jmp   n176_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n174_func_activate_α:
                        lea              rax, [rip + ROMAN_act_α]
                        mov              r11, qword ptr [rip + fn_cell$ROMAN@GOTPCREL]
                        mov              qword ptr [r11 + 0], rax
                                                                                        jmp   n175_statement_end_α
n174_func_activate_β:
                                                                                        jmp   n173_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:
                                                                                        jmp   n176_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_begin_α:
                                                                                        jmp   n177_statement_end_α
n176_statement_begin_β:
                                                                                        jmp   n178_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:
                                                                                        jmp   n178_statement_begin_α
#=======================================================================================================================
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_begin_α:
                                                                                        jmp   n179_statement_end_α
n178_statement_begin_β:
                                                                                        jmp   n180_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_end_α:
                                                                                        jmp   n180_statement_begin_α
#=======================================================================================================================
# 	DEFINE("TEST(I,J)")				:(TEST_END)
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_begin_α:
                                                                                        jmp   n181_func_activate_α
n180_statement_begin_β:
                                                                                        jmp   n183_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n181_func_activate_α:
                        lea              rax, [rip + TEST_act_α]
                        mov              r11, qword ptr [rip + fn_cell$TEST@GOTPCREL]
                        mov              qword ptr [r11 + 0], rax
                                                                                        jmp   n182_statement_end_α
n181_func_activate_β:
                                                                                        jmp   n180_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_end_α:
                                                                                        jmp   n183_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_begin_α:
                                                                                        jmp   n184_statement_end_α
n183_statement_begin_β:
                                                                                        jmp   n185_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_end_α:
                                                                                        jmp   n185_statement_begin_α
#=======================================================================================================================
# 	TEST(1,100)
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_begin_α:
                                                                                        jmp   n186_lit_integer_α
n185_statement_begin_β:
                                                                                        jmp   n190_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n187_lit_integer_α
.Lx302_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n188_call_α
n187_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n185_statement_begin_β
.Lx303_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n188_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx305_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx305_5
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
                        lea              rcx, [rip + .Lx305_6]
                        lea              rdx, [rip + .Lx305_7]
                                                                                        jmp   rax
.Lx305_6:
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
                                                                                        jmp   .Lx305_2
.Lx305_7:
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
                                                                                        jmp   .Lx305_2
.Lx305_5:
                        add              rsp, 48
.Lx305_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx305_240
                        add              rsp, 16
                                                                                        jmp   n187_lit_integer_β
.Lx305_240:
                                                                                        jmp   n189_statement_end_α
n188_call_β:
                                                                                        jmp   n187_lit_integer_β
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n190_statement_begin_α
#=======================================================================================================================
# 	TEST(149,151)
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_begin_α:
                                                                                        jmp   n191_lit_integer_α
n190_statement_begin_β:
                                                                                        jmp   n195_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n192_lit_integer_α
.Lx310_0:
                        .quad            149
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n193_call_α
n192_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n190_statement_begin_β
.Lx311_0:
                        .quad            151
#-----------------------------------------------------------------------------------------------------------------------
n193_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx313_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx313_5
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
                        lea              rcx, [rip + .Lx313_6]
                        lea              rdx, [rip + .Lx313_7]
                                                                                        jmp   rax
.Lx313_6:
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
                                                                                        jmp   .Lx313_2
.Lx313_7:
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
                                                                                        jmp   .Lx313_2
.Lx313_5:
                        add              rsp, 48
.Lx313_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx313_240
                        add              rsp, 16
                                                                                        jmp   n192_lit_integer_β
.Lx313_240:
                                                                                        jmp   n194_statement_end_α
n193_call_β:
                                                                                        jmp   n192_lit_integer_β
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n195_statement_begin_α
#=======================================================================================================================
# 	TEST(480,520)
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_begin_α:
                                                                                        jmp   n196_lit_integer_α
n195_statement_begin_β:
                                                                                        jmp   n200_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n197_lit_integer_α
.Lx318_0:
                        .quad            480
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n198_call_α
n197_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n195_statement_begin_β
.Lx319_0:
                        .quad            520
#-----------------------------------------------------------------------------------------------------------------------
n198_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx321_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx321_5
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
                        lea              rcx, [rip + .Lx321_6]
                        lea              rdx, [rip + .Lx321_7]
                                                                                        jmp   rax
.Lx321_6:
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
                                                                                        jmp   .Lx321_2
.Lx321_7:
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
                                                                                        jmp   .Lx321_2
.Lx321_5:
                        add              rsp, 48
.Lx321_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx321_240
                        add              rsp, 16
                                                                                        jmp   n197_lit_integer_β
.Lx321_240:
                                                                                        jmp   n199_statement_end_α
n198_call_β:
                                                                                        jmp   n197_lit_integer_β
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n200_statement_begin_α
#=======================================================================================================================
# 	TEST(1900,2100)
#-----------------------------------------------------------------------------------------------------------------------
n200_statement_begin_α:
                                                                                        jmp   n201_lit_integer_α
n200_statement_begin_β:
                                                                                        jmp   n205_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n202_lit_integer_α
.Lx326_0:
                        .quad            1900
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n203_call_α
n202_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n200_statement_begin_β
.Lx327_0:
                        .quad            2100
#-----------------------------------------------------------------------------------------------------------------------
n203_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx329_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 2                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx329_5
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
                        lea              rcx, [rip + .Lx329_6]
                        lea              rdx, [rip + .Lx329_7]
                                                                                        jmp   rax
.Lx329_6:
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
                                                                                        jmp   .Lx329_2
.Lx329_7:
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
                                                                                        jmp   .Lx329_2
.Lx329_5:
                        add              rsp, 48
.Lx329_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx329_240
                        add              rsp, 16
                                                                                        jmp   n202_lit_integer_β
.Lx329_240:
                                                                                        jmp   n204_statement_end_α
n203_call_β:
                                                                                        jmp   n202_lit_integer_β
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n205_statement_begin_α
#=======================================================================================================================
# 	TEST(1900,2100)
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_begin_α:
                                                                                        jmp   n206_statement_end_α
n205_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_end_α:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n207_goto_α:
                                                                                        jmp   n208_statement_begin_α
n207_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# ROMAN	N RPOS(1) LEN(1) . UNITS =	:F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_begin_α:
                                                                                        jmp   n209_var_α
n208_statement_begin_β:
                                                                                        jmp   n246_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n210_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n210_match_begin_α:
                        mov              rdi, qword ptr [rsp + 0]                       # var
                        mov              rsi, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 256], rdi
                        mov              qword ptr [rbp + 264], rsi
                        mov              qword ptr [rsp + 48], r13                      # outer_Σ
                        mov              qword ptr [rsp + 56], r14                      # outer_δ
                        mov              qword ptr [rsp + 64], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 72], rax                      # cap_gen
                        mov              qword ptr [rsp + 40], rbp                      # old_rbp
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
.Lx341_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n211_lit_integer_α
n210_match_begin_β:
                        mov              rsp, qword ptr [r12 + -16]                     # rsp_restore
                        sub              rsp, 32
                        add              dword ptr [rsp + 0], 1                         # start_δ
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx341_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx341_1
                                                                                        jmp   .Lx341_0
.Lx341_1:
n210_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [r12 + 8]                       # cas_rsp_mark
                        mov              r13, qword ptr [rsp + 48]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 56]                      # outer_δ
                        mov              r15, qword ptr [rsp + 64]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rsp + 72]                      # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rsp + 40]                      # old_rbp
                        add              rsp, 16
                                                                                        jmp   n246_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n212_match_rpos_α
.Lx342_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n212_match_rpos_α:
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        je    .Lx343_240
                        add              rsp, 16
                                                                                        jmp   n210_match_begin_β
.Lx343_240:
                                                                                        jmp   n213_match_assign_save_α
n212_match_rpos_β:
                        add              rsp, 16
                                                                                        jmp   n210_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n213_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + -80], r14d
                                                                                        jmp   n214_match_len_α
n213_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n210_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n214_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx346_240
                        add              rsp, 16
                                                                                        jmp   n210_match_begin_β
.Lx346_240:
                        add              r14d, 1
                                                                                        jmp   n215_match_assign_cond_α
n214_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n210_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n215_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n216_match_end_α
n215_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n214_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n216_match_end_α:
                        mov              r10, r12
.Lx350_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx350_9
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 112], eax
                        mov              qword ptr [rsp + 136], r14
                        mov              rsp, qword ptr [r10 + 8]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx350_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx350_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx350_1:
                        test             rax, rax
                                                                                        je    .Lx350_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx350_3]
                        lea              rdx, [rip + .Lx350_4]
                                                                                        jmp   rax
.Lx350_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx350_1
.Lx350_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx350_1
.Lx350_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        sub              r12, 24                                        # cas_mark
                        mov              r13, qword ptr [rsp + 48]                      # outer_Σ
                        mov              r14, qword ptr [rsp + 56]                      # outer_δ
                        mov              r15, qword ptr [rsp + 64]                      # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n218_match_replace_α
.Lx351_0:
                        .quad            .Lx351_0_s
.Lx351_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n218_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx353_0]                # name
                        mov              rsi, qword ptr [rbp + 256]                     # sub_lo
                        mov              rdx, qword ptr [rbp + 264]                     # sub_hi
                        mov              ecx, dword ptr [rbp + 64]                      # start
                        mov              r8, qword ptr [rbp + 88]                       # end
                        lea              r9, [rsp + 0]                                  # lit_string
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx353_1
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          "N"
.Lx353_1:
                        mov              rbp, qword ptr [rbp + 104]                     # old_rbp
                                                                                        jmp   n219_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n219_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n220_statement_begin_α
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
#-----------------------------------------------------------------------------------------------------------------------
n220_statement_begin_α:
                                                                                        jmp   n221_statement_end_α
n220_statement_begin_β:
                                                                                        jmp   n222_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_end_α:
                                                                                        jmp   n222_statement_begin_α
#=======================================================================================================================
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_begin_α:
                                                                                        jmp   n223_lit_string_α
n222_statement_begin_β:
                                                                                        jmp   n245_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n224_var_α
.Lx362_0:
                        .quad            .Lx362_0_s
.Lx362_0_s:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # UNITS
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n225_assign_α
n224_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n245_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n225_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx364_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n226_match_begin_α
n225_assign_β:
                                                                                        jmp   n224_var_β
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n226_match_begin_α:
                        mov              rdi, qword ptr [rsp + 16]                      # lit_string
                        mov              rsi, qword ptr [rsp + 24]
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
                        mov              qword ptr [rbp + 304], rsp                     # zls2_mark
                        mov              dword ptr [rbp + 288], 0                       # start_δ
.Lx366_0:
                        mov              r14d, dword ptr [rbp + 288]
                                                                                        jmp   n227_match_defer_α
n226_match_begin_β:
                        add              dword ptr [rbp + 288], 1
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, r15d
                                                                                        jg    .Lx366_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx366_1
                                                                                        jmp   .Lx366_0
.Lx366_1:
n226_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + 304]
                        mov              r13, qword ptr [rbp + 336]                     # outer_Σ
                        mov              r14, qword ptr [rbp + 344]                     # outer_δ
                        mov              r15, qword ptr [rbp + 352]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + 360]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 328]                     # old_rbp
                                                                                        jmp   n225_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n227_match_defer_α:
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx367_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx367_4]
                        lea              rdx, [rip + .Lx367_5]
                                                                                        jmp   rax
.Lx367_4:
                                                                                        jmp   n228_match_assign_save_α
.Lx367_5:
                                                                                        jmp   n226_match_begin_β
.Lx367_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx367_2:
                        test             rax, rax
                                                                                        je    .Lx367_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx367_7]
                        lea              rdx, [rip + .Lx367_8]
                                                                                        jmp   rax
.Lx367_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx367_2
.Lx367_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx367_2
.Lx367_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n226_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx367_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n228_match_assign_save_α
.Lx367_6:
                        add              rsp, 16
                                                                                        jmp   n226_match_begin_β
n227_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n228_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rbp + -96], r14d
                                                                                        jmp   n229_match_break_α
n228_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n227_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n229_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx371_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx371_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n227_match_defer_β
.Lx371_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx371_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx371_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n227_match_defer_β
.Lx371_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx371_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx371_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n227_match_defer_β
.Lx371_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx371_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx371_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n227_match_defer_β
.Lx371_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx371_1
                        add              ecx, 1
                                                                                        jmp   .Lx371_0
.Lx371_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n230_match_assign_cond_α
n229_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n227_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n230_match_assign_cond_α:
                        mov              eax, dword ptr [rbp + -96]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n231_match_end_α
n230_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n229_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n231_match_end_α:
                        mov              r10, r12
.Lx375_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx375_9
                        mov              rsp, qword ptr [rbp + 304]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx375_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx375_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx375_1:
                        test             rax, rax
                                                                                        je    .Lx375_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx375_3]
                        lea              rdx, [rip + .Lx375_4]
                                                                                        jmp   rax
.Lx375_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx375_1
.Lx375_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx375_1
.Lx375_2:
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
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 328]                     # old_rbp
                                                                                        jmp   n232_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n232_statement_end_α:
                        add              rsp, 32
                                                                                        jmp   n233_statement_begin_α
#=======================================================================================================================
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_begin_α:
                                                                                        jmp   n234_statement_end_α
n233_statement_begin_β:
                                                                                        jmp   n235_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_end_α:
                                                                                        jmp   n235_statement_begin_α
#=======================================================================================================================
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_begin_α:
                                                                                        jmp   n236_var_α
n235_statement_begin_β:
                                                                                        jmp   n245_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n237_call_α
#-----------------------------------------------------------------------------------------------------------------------
n237_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx386_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx386_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx386_6]
                        lea              rdx, [rip + .Lx386_7]
                                                                                        jmp   rax
.Lx386_6:
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
                                                                                        jmp   .Lx386_2
.Lx386_7:
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
                                                                                        jmp   .Lx386_2
.Lx386_5:
                        add              rsp, 48
.Lx386_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx386_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n235_statement_begin_β
.Lx386_240:
                                                                                        jmp   n238_lit_string_α
n237_call_β:
                                                                                        jmp   n235_statement_begin_β
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n239_lit_string_α
n238_lit_string_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n235_statement_begin_β
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n240_call_α
n239_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n238_lit_string_β
.Lx388_0:
                        .quad            .Lx388_0_s
.Lx388_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n240_call_α:
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
.Lrkfnzd390:            .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd390]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx389_240
                        add              rsp, 16
                                                                                        jmp   n239_lit_string_β
.Lx389_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n241_var_α
n240_call_β:
                        add              rsp, 16
                                                                                        jmp   n239_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]                    # UNITS
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n242_binop_α
n241_var_β:
                        add              rsp, 32
                                                                                        jmp   n239_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n242_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # call
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # var
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n243_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n243_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # ROMAN
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n244_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_end_α:
                                                                                        jmp   n246_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n245_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx397_0
                        mov              cl, 2
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx397_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n246_save_restore_α:
                        mov              r9, qword ptr [1879048216]
                        test             r9, r9
                                                                                        je    .Lx399_0
                        mov              cl, 0
                        mov              rax, qword ptr [r9 + -64]
                                                                                        jmp   rax
.Lx399_0:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n247_goto_α:
                                                                                        jmp   n176_statement_begin_α
n247_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n248_goto_α:
                                                                                        jmp   n249_statement_begin_α
n248_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# TEST	OUTPUT = I ' -> ' ROMAN(I)
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_begin_α:
                                                                                        jmp   n250_var_α
n249_statement_begin_β:
                                                                                        jmp   n258_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n251_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n252_binop_α
n251_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n249_statement_begin_β
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          " -> "
#-----------------------------------------------------------------------------------------------------------------------
n252_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # lit_string
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n253_var_α
n252_binop_β:
                        add              rsp, 16
                                                                                        jmp   n251_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n253_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n254_call_α
n253_var_β:
                        add              rsp, 16
                                                                                        jmp   n252_binop_β
#-----------------------------------------------------------------------------------------------------------------------
n254_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx409_0]                # name
                        mov              esi, 2                                         # np
                        mov              edx, 1                                         # nargs
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx409_5
                        lea              r10, [rip + g_call_args]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [1879052304], rax                    # N
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx409_6]
                        lea              rdx, [rip + .Lx409_7]
                                                                                        jmp   rax
.Lx409_6:
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
                                                                                        jmp   .Lx409_2
.Lx409_7:
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
                                                                                        jmp   .Lx409_2
.Lx409_5:
                        add              rsp, 48
.Lx409_2:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx409_240
                        add              rsp, 16
                                                                                        jmp   n253_var_β
.Lx409_240:
                                                                                        jmp   n255_binop_α
n254_call_β:
                                                                                        jmp   n253_var_β
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n255_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # binop
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n256_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n256_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx411_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n257_statement_end_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n258_statement_begin_α
#=======================================================================================================================
# 	EQ(I,J)						:S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_begin_α:
                                                                                        jmp   n259_var_α
n258_statement_begin_β:
                                                                                        jmp   n265_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n259_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n260_var_α
#-----------------------------------------------------------------------------------------------------------------------
n260_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # J
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n261_coerce_numeric_α
n260_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n258_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n261_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx419_1
                        cmp              eax, 3
                                                                                        jne   .Lx419_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx419_0
.Lx419_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n262_coerce_numeric_α
.Lx419_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 16]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 101                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n262_coerce_numeric_α
n261_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n260_var_β
#-----------------------------------------------------------------------------------------------------------------------
n262_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]                      # var
                        cmp              eax, 5
                                                                                        je    .Lx421_1
                        cmp              eax, 3
                                                                                        jne   .Lx421_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx421_0
.Lx421_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              rax, qword ptr [rsp + 40]                      # var
                        mov              qword ptr [rsp + 8], rax                       # result
                                                                                        jmp   n263_cmp_test_α
.Lx421_0:
                        lea              rdi, [rsp + 32]                                # var
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 0]                                 # result
                        mov              rcx, 102                                       # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n263_cmp_test_α
n262_coerce_numeric_β:
                        add              rsp, 16
                                                                                        jmp   n261_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n263_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]                                # coerce_numeric
                        lea              rsi, [rsp + 16]                                # b
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        je    .Lx423_240
                        add              rsp, 16
                                                                                        jmp   n262_coerce_numeric_β
.Lx423_240:
                                                                                        jmp   n264_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n264_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n246_save_restore_α
#=======================================================================================================================
# 	I = I + 1					:(TEST)
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_begin_α:
                                                                                        jmp   n266_var_α
n265_statement_begin_β:
                                                                                        jmp   n249_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n267_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n268_binop_α
n267_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n265_statement_begin_β
.Lx429_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n268_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]                      # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]                      # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx430_240
                        add              rsp, 16
                                                                                        jmp   n267_lit_integer_β
.Lx430_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n269_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n269_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # I
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n270_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n270_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n249_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n271_goto_α:
                                                                                        jmp   n183_statement_begin_α
n271_goto_β:
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
                        .section         .data
                        .align           8
fn_cell$ROMAN:
                        .quad            rt_ab_undef_fn_stub
                        .section         .text
                        .intel_syntax    noprefix
ROMAN_act_α:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 152
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        lea              rax, [rbp + 8]
                        mov              qword ptr [rbp + -32], rax
                        mov              rax, qword ptr [1879048216]
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [1879048216], rbp
                        lea              rax, [rip + .Lx435_1]
                        mov              qword ptr [rbp + -64], rax
                        mov              rdi, rbp
                        call             rt_ab_enter_env@PLT
                        mov              rax, qword ptr [1879052288]                    # ROMAN
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [1879052304]                    # N
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rbp + -120], rax
                        mov              qword ptr [rbp + -144], 0
                        mov              qword ptr [rbp + -136], 0
                        xor              eax, eax                                       # ROMAN
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rax
                        xor              eax, eax                                       # N
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rax
                        movabs           rax, 139860785741132
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx435_2
                        mov              rdi, qword ptr [rip + .Lx435_0]
                        call             mon_emit_call_bin@PLT
.Lx435_2:
                        mov              rax, qword ptr [rip + fn_cell$ROMAN@GOTPCREL]
                                                                                        jmp   rax
                                                                                        jmp   ROMAN_act_γ
.Lx435_1:
                        movzx            r9, cl
                        cmp              r9d, 2
                                                                                        je    .Lx435_3
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                        mov              rdi, rbp
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        xor              ecx, ecx
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                                                                                        jmp   .Lx435_4
.Lx435_3:
                        mov              rdi, rbp
                        xor              esi, esi
                        xor              edx, edx
                        mov              ecx, 1
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
.Lx435_4:
                        mov              rcx, qword ptr [rbp + -112]                    # ROMAN
                        mov              qword ptr [1879052288], rcx
                        mov              rcx, qword ptr [rbp + -104]
                        mov              qword ptr [1879052296], rcx
                        mov              rcx, qword ptr [rbp + -128]                    # N
                        mov              qword ptr [1879052304], rcx
                        mov              rcx, qword ptr [rbp + -120]
                        mov              qword ptr [1879052312], rcx
                        mov              r10, qword ptr [rbp + -16]
                        mov              r11, qword ptr [rbp + -24]
                        mov              rcx, qword ptr [rbp + -40]
                        movabs           rax, 139860785741132
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx435_5
                        mov              rdi, qword ptr [rip + .Lx435_0]
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        call             mon_emit_return_bin@PLT
.Lx435_5:
                        mov              rax, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        mov              qword ptr [1879048216], rcx
                        cmp              r9d, 2
                                                                                        je    .Lx435_6
                                                                                        jmp   r10
.Lx435_6:
                                                                                        jmp   r11
ROMAN_act_γ:
ROMAN_act_ω:
.Lx435_0:
                        .quad            .Lx435_0_s
.Lx435_0_s:
                        .string          "ROMAN"
                        .section         .data
                        .align           8
fn_cell$TEST:
                        .quad            rt_ab_undef_fn_stub
                        .section         .text
                        .intel_syntax    noprefix
TEST_act_α:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 152
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        lea              rax, [rbp + 8]
                        mov              qword ptr [rbp + -32], rax
                        mov              rax, qword ptr [1879048216]
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [1879048216], rbp
                        lea              rax, [rip + .Lx436_1]
                        mov              qword ptr [rbp + -64], rax
                        mov              rdi, rbp
                        call             rt_ab_enter_env@PLT
                        mov              rax, qword ptr [1879052336]                    # TEST
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [1879052352]                    # I
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rbp + -120], rax
                        mov              qword ptr [rbp + -144], 0
                        mov              qword ptr [rbp + -136], 0
                        xor              eax, eax                                       # TEST
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rax
                        xor              eax, eax                                       # I
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rax
                        movabs           rax, 139860785741132
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx436_2
                        mov              rdi, qword ptr [rip + .Lx436_0]
                        call             mon_emit_call_bin@PLT
.Lx436_2:
                        mov              rax, qword ptr [rip + fn_cell$TEST@GOTPCREL]
                                                                                        jmp   rax
                                                                                        jmp   TEST_act_γ
.Lx436_1:
                        movzx            r9, cl
                        cmp              r9d, 2
                                                                                        je    .Lx436_3
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                        mov              rdi, rbp
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        xor              ecx, ecx
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
                                                                                        jmp   .Lx436_4
.Lx436_3:
                        mov              rdi, rbp
                        xor              esi, esi
                        xor              edx, edx
                        mov              ecx, 1
                        call             rt_ab_leave_env@PLT
                        mov              qword ptr [rbp + -88], rax
                        mov              qword ptr [rbp + -96], rdx
.Lx436_4:
                        mov              rcx, qword ptr [rbp + -112]                    # TEST
                        mov              qword ptr [1879052336], rcx
                        mov              rcx, qword ptr [rbp + -104]
                        mov              qword ptr [1879052344], rcx
                        mov              rcx, qword ptr [rbp + -128]                    # I
                        mov              qword ptr [1879052352], rcx
                        mov              rcx, qword ptr [rbp + -120]
                        mov              qword ptr [1879052360], rcx
                        mov              r10, qword ptr [rbp + -16]
                        mov              r11, qword ptr [rbp + -24]
                        mov              rcx, qword ptr [rbp + -40]
                        movabs           rax, 139860785741132
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx436_5
                        mov              rdi, qword ptr [rip + .Lx436_0]
                        mov              rsi, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        call             mon_emit_return_bin@PLT
.Lx436_5:
                        mov              rax, qword ptr [rbp + -88]
                        mov              rdx, qword ptr [rbp + -96]
                        mov              qword ptr [1879048216], rcx
                        cmp              r9d, 2
                                                                                        je    .Lx436_6
                                                                                        jmp   r10
.Lx436_6:
                                                                                        jmp   r11
TEST_act_γ:
TEST_act_ω:
.Lx436_0:
                        .quad            .Lx436_0_s
.Lx436_0_s:
                        .string          "TEST"
                        .section         .rodata
.S0:                    .string          "UNITS"
.S1:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
