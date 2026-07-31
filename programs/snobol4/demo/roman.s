                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__ROMAN_α
proc_LBL__ROMAN_α:
                        .global          proc_LBL__ROMAN_α
                        .global          proc_LBL__ROMAN_β
                        .global          proc_LBL__ROMAN_γ
                        .global          proc_LBL__ROMAN_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_LBL__ROMAN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__ROMAN_ω
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# ROMAN	N RPOS(1) LEN(1) . UNITS =	:F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n2_match_head_α
n1_var_β:
                                                                                        jmp   n3_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n2_match_head_α:
                        mov              qword ptr [rbp + 96], r13
                        mov              qword ptr [rbp + 104], r14
                        mov              qword ptr [rbp + 112], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 88], rbp
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx33_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n4_match_sequence_α
n2_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx33_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx33_1
                                                                                        jmp   .Lx33_0
.Lx33_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx33_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx33_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   n3_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n4_match_sequence_α:
                                                                                        jmp   n6_lit_integer_α
n4_match_sequence_as:
                                                                                        jmp   n5_match_release_α
n4_match_sequence_β:
                                                                                        jmp   n9_match_assign_cond_β
n4_match_sequence_af:
                                                                                        jmp   n2_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 96], eax
                        mov              qword ptr [rsp + 120], r14
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx39_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx39_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx39_1:
                        test             rax, rax
                                                                                        je    .Lx39_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx39_3]
                        lea              rdx, [rip + .Lx39_4]
                                                                                        jmp   rax
.Lx39_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx39_1
.Lx39_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx39_1
.Lx39_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx39_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx39_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n7_match_rpos_α
n6_lit_integer_β:
                                                                                        jmp   n2_match_head_β
.Lx40_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n7_match_rpos_α:
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n2_match_head_β
                                                                                        jmp   n8_match_assign_save_α
n7_match_rpos_β:
                                                                                        jmp   n2_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n11_match_len_α
n8_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n2_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n5_match_release_α
n9_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n11_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              dword ptr [rbp + 148], 0
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n12_match_replace_α
n10_lit_string_β:
                                                                                        jmp   n3_op14_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n11_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx47_240
                        add              rsp, 16
                                                                                        jmp   n2_match_head_β
.Lx47_240:
                        add              r14d, 1
                                                                                        jmp   n9_match_assign_cond_α
n11_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n2_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx49_0]
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              ecx, dword ptr [rbp + 48]
                        mov              r8, qword ptr [rbp + 72]
                        lea              r9, [rbp + 144]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx49_1
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "N"
.Lx49_1:
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   n13_lit_string_α
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              dword ptr [rbp + 452], 40
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n14_match_head_α
n13_lit_string_β:
                                                                                        jmp   n23_op14_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
n14_match_head_α:
                        mov              qword ptr [rbp + 336], r13
                        mov              qword ptr [rbp + 344], r14
                        mov              qword ptr [rbp + 352], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 360], rax
                        mov              qword ptr [rbp + 328], rbp
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 304], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 296], rax
                        mov              dword ptr [rbp + 288], 0
.Lx52_0:
                        mov              r14d, dword ptr [rbp + 288]
                                                                                        jmp   n15_match_sequence_α
n14_match_head_β:
                        add              dword ptr [rbp + 288], 1
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, r15d
                                                                                        jg    .Lx52_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx52_1
                                                                                        jmp   .Lx52_0
.Lx52_1:
                        mov              rax, qword ptr [rbp + 296]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 304]
                        mov              r10, qword ptr [1879048192]
.Lx52_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx52_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 336]
                        mov              r14, qword ptr [rbp + 344]
                        mov              r15, qword ptr [rbp + 352]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 328]
                                                                                        jmp   n23_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n15_match_sequence_α:
                        mov              dword ptr [rbp + 368], r14d
                                                                                        jmp   n17_match_patref_α
n15_match_sequence_as:
                                                                                        jmp   n16_match_release_α
n15_match_sequence_β:
                                                                                        jmp   n19_match_assign_cond_β
n15_match_sequence_af:
                                                                                        jmp   n14_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_release_α:
                        mov              rax, qword ptr [rbp + 296]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 304]
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
                        mov              r13, qword ptr [rbp + 336]
                        mov              r14, qword ptr [rbp + 344]
                        mov              r15, qword ptr [rbp + 352]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 328]
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_match_patref_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx57_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx57_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx57_10
.Lx57_9:
                        xor              eax, eax
.Lx57_10:
                        test             rax, rax
                                                                                        jz    .Lx57_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx57_4]
                        lea              rdx, [rip + .Lx57_5]
                                                                                        jmp   rax
.Lx57_4:
                                                                                        jmp   n18_match_assign_save_α
.Lx57_5:
                                                                                        jmp   n14_match_head_β
.Lx57_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx57_2:
                        test             rax, rax
                                                                                        je    .Lx57_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx57_7]
                        lea              rdx, [rip + .Lx57_8]
                                                                                        jmp   rax
.Lx57_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx57_2
.Lx57_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx57_2
.Lx57_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n14_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx57_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n18_match_assign_save_α
.Lx57_6:
                        add              rsp, 16
                                                                                        jmp   n14_match_head_β
n17_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n18_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n21_match_break_α
n18_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n17_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n19_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n16_match_release_α
n19_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n21_match_break_β
#=======================================================================================================================
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n22_call_α
n20_var_β:
                                                                                        jmp   n23_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n21_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx64_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx64_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n17_match_patref_β
.Lx64_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx64_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx64_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n17_match_patref_β
.Lx64_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx64_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx64_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n17_match_patref_β
.Lx64_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx64_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx64_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n17_match_patref_β
.Lx64_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx64_1
                        add              ecx, 1
                                                                                        jmp   .Lx64_0
.Lx64_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n19_match_assign_cond_α
n21_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n17_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n22_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx66_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx66_5
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx66_6]
                        lea              rdx, [rip + .Lx66_7]
                                                                                        jmp   rax
.Lx66_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx66_2
.Lx66_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx66_2
.Lx66_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx66_20
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx66_21
.Lx66_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        call             rt_arg_stage@PLT
.Lx66_21:
                        mov              rdi, qword ptr [rip + .Lx66_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx66_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx66_3]
                        lea              rdx, [rip + .Lx66_4]
                                                                                        jmp   rax
.Lx66_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx66_2
.Lx66_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx66_2
.Lx66_1:
                        call             rt_faildescr@PLT
.Lx66_2:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n23_op14_α
                                                                                        jmp   n24_lit_string_α
n22_call_β:
                                                                                        jmp   n23_op14_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n23_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              dword ptr [rbp + 628], 7
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n25_lit_string_α
n24_lit_string_β:
                                                                                        jmp   n23_op14_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              dword ptr [rbp + 644], 7
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n26_call_α
n25_lit_string_β:
                                                                                        jmp   n23_op14_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n26_call_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn72:               .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rbp + 496]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n23_op14_α
                                                                                        jmp   n27_var_α
n26_call_β:
                                                                                        jmp   n23_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n28_binop_α
n27_var_β:
                                                                                        jmp   n23_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n29_assign_α
n28_binop_β:
                                                                                        jmp   n23_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_op14_α
n29_assign_β:
                                                                                        jmp   n23_op14_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_β:
                                                                                        jmp   proc_LBL__ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 24]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__TEST_α
proc_LBL__TEST_α:
                        .global          proc_LBL__TEST_α
                        .global          proc_LBL__TEST_β
                        .global          proc_LBL__TEST_γ
                        .global          proc_LBL__TEST_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              [rsp + 40], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_LBL__TEST_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n76_goto_α:
                                                                                        jmp   n77_var_α
n76_goto_β:
                                                                                        jmp   proc_LBL__TEST_ω
#=======================================================================================================================
# TEST	OUTPUT = I ' -> ' ROMAN(I)
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n78_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              dword ptr [rbp + 724], 4
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n80_binop_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          " -> "
#=======================================================================================================================
# 	EQ(I,J)						:S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n80_binop_α:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n83_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n84_op75_α
#=======================================================================================================================
# 	I = I + 1					:(TEST)
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n85_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n86_call_α
#-----------------------------------------------------------------------------------------------------------------------
n84_op75_α:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 7
                                                                                        je    .Lx103_1
                        cmp              eax, 6
                                                                                        jne   .Lx103_0
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 6
                                                                                        jne   .Lx103_0
.Lx103_1:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n87_op75_α
.Lx103_0:
                        lea              rdi, [rbp + 848]
                        lea              rsi, [rbp + 832]
                        lea              rdx, [rbp + 816]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n87_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n88_binop_α
.Lx104_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx106_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx106_5
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx106_6]
                        lea              rdx, [rip + .Lx106_7]
                                                                                        jmp   rax
.Lx106_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx106_2
.Lx106_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx106_2
.Lx106_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx106_20
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx106_21
.Lx106_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        call             rt_arg_stage@PLT
.Lx106_21:
                        mov              rdi, qword ptr [rip + .Lx106_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx106_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx106_3]
                        lea              rdx, [rip + .Lx106_4]
                                                                                        jmp   rax
.Lx106_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx106_2
.Lx106_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx106_2
.Lx106_1:
                        call             rt_faildescr@PLT
.Lx106_2:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n79_var_α
                                                                                        jmp   n89_binop_α
n86_call_β:
                                                                                        jmp   n79_var_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n87_op75_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 7
                                                                                        je    .Lx108_1
                        cmp              eax, 6
                                                                                        jne   .Lx108_0
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 6
                                                                                        jne   .Lx108_0
.Lx108_1:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n90_op77_α
.Lx108_0:
                        lea              rdi, [rbp + 832]
                        lea              rsi, [rbp + 848]
                        lea              rdx, [rbp + 800]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n90_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n88_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx109_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx109_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n91_assign_α
.Lx109_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx109_240
                        add              rsp, 32
                                                                                        jmp   n77_var_α
.Lx109_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n91_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n89_binop_α:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n92_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n90_op77_α:
                        lea              rdi, [rbp + 816]
                        lea              rsi, [rbp + 800]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n82_var_α
                                                                                        jmp   n93_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              rdi, qword ptr [rip + .Lx114_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n79_var_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n93_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_β:
                                                                                        jmp   proc_LBL__TEST_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 24]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__TEST_ω:
                        mov              rax, [rbp + 32]
                        lea              rsp, [rbp + 48]
                        mov              rbp, [rbp + 40]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ROMAN_α
proc_ROMAN_α:
                        .global          proc_ROMAN_α
                        .global          proc_ROMAN_β
                        .global          proc_ROMAN_γ
                        .global          proc_ROMAN_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              rdi, rsp
                        mov              ecx, 16
                        xor              eax, eax
                        rep stosb
proc_ROMAN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n117_op14_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n118_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n118_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx122_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx122_1
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "ROMAN"
.Lx122_1:
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 24]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_ω:
                        mov              rax, [rsp + 32]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_TEST_α
proc_TEST_α:
                        .global          proc_TEST_α
                        .global          proc_TEST_β
                        .global          proc_TEST_γ
                        .global          proc_TEST_ω
                        sub              rsp, 48
                        mov              [rsp + 24], rcx
                        mov              [rsp + 32], rdx
                        mov              rdi, rsp
                        mov              ecx, 16
                        xor              eax, eax
                        rep stosb
proc_TEST_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n123_op14_α:
                        mov              rdi, qword ptr [rsp + 24]
                        mov              rsi, qword ptr [rsp + 32]
                        lea              rdx, [rsp + 48]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n124_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n124_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx128_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx128_1
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "TEST"
.Lx128_1:
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 24]
                        add              rsp, 48
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_TEST_ω:
                        mov              rax, [rsp + 32]
                        add              rsp, 48
                                                                                        jmp   rax
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
                        mov              esi, 1296
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
                        mov              esi, 1296
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
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 1304
                        mov              rdi, rsp
                        mov              ecx, 1304
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1296], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
# 	DEFINE("TEST(I,J)")				:(TEST_END)
# 	TEST(1,100)
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n134_lit_integer_α
n129_lit_integer_β:
                                                                                        jmp   n142_lit_integer_α
.Lx190_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n130_goto_α:
                                                                                        jmp   n135_var_α
n130_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n131_goto_α:
                                                                                        jmp   n129_lit_integer_α
n131_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n132_goto_α:
                                                                                        jmp   n136_var_α
n132_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n133_goto_α:
                                                                                        jmp   n129_lit_integer_α
n133_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n137_call_α
n134_lit_integer_β:
                                                                                        jmp   n142_lit_integer_α
.Lx195_0:
                        .quad            100
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# ROMAN	N RPOS(1) LEN(1) . UNITS =	:F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n138_match_head_α
n135_var_β:
                                                                                        jmp   n139_op14_α
#=======================================================================================================================
# TEST	OUTPUT = I ' -> ' ROMAN(I)
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n140_lit_string_α
n136_var_β:
                                                                                        jmp   n141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx199_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx199_5
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx199_6]
                        lea              rdx, [rip + .Lx199_7]
                                                                                        jmp   rax
.Lx199_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx199_2
.Lx199_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx199_2
.Lx199_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx199_20
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx199_21
.Lx199_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        call             rt_arg_stage@PLT
.Lx199_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx199_22
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx199_23
.Lx199_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        call             rt_arg_stage@PLT
.Lx199_23:
                        mov              rdi, qword ptr [rip + .Lx199_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx199_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx199_3]
                        lea              rdx, [rip + .Lx199_4]
                                                                                        jmp   rax
.Lx199_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx199_2
.Lx199_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx199_2
.Lx199_1:
                        call             rt_faildescr@PLT
.Lx199_2:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n142_lit_integer_α
                                                                                        jmp   n142_lit_integer_α
n137_call_β:
                                                                                        jmp   n142_lit_integer_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n138_match_head_α:
                        mov              qword ptr [rbp + 96], r13
                        mov              qword ptr [rbp + 104], r14
                        mov              qword ptr [rbp + 112], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 88], rbp
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx201_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n143_match_sequence_α
n138_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx201_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx201_1
                                                                                        jmp   .Lx201_0
.Lx201_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx201_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx201_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   n139_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n139_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              dword ptr [rbp + 724], 4
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n144_binop_α
n140_lit_string_β:
                                                                                        jmp   n141_var_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          " -> "
#=======================================================================================================================
# 	EQ(I,J)						:S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n145_var_α
n141_var_β:
                                                                                        jmp   n146_var_α
#=======================================================================================================================
# 	TEST(149,151)
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n147_lit_integer_α
n142_lit_integer_β:
                                                                                        jmp   n162_lit_integer_α
.Lx206_0:
                        .quad            149
#-----------------------------------------------------------------------------------------------------------------------
n143_match_sequence_α:
                                                                                        jmp   n149_lit_integer_α
n143_match_sequence_as:
                                                                                        jmp   n148_match_release_α
n143_match_sequence_β:
                                                                                        jmp   n152_match_assign_cond_β
n143_match_sequence_af:
                                                                                        jmp   n138_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n144_binop_α:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n153_var_α
n144_binop_β:
                                                                                        jmp   n141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n154_op75_α
n145_var_β:
                                                                                        jmp   n146_var_α
#=======================================================================================================================
# 	I = I + 1					:(TEST)
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n155_lit_integer_α
n146_var_β:
                        add              rsp, 16
                                                                                        jmp   n136_var_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n156_call_α
n147_lit_integer_β:
                                                                                        jmp   n162_lit_integer_α
.Lx212_0:
                        .quad            151
#-----------------------------------------------------------------------------------------------------------------------
n148_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 96], eax
                        mov              qword ptr [rsp + 120], r14
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx214_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx214_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx214_1:
                        test             rax, rax
                                                                                        je    .Lx214_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx214_3]
                        lea              rdx, [rip + .Lx214_4]
                                                                                        jmp   rax
.Lx214_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx214_1
.Lx214_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx214_1
.Lx214_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx214_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx214_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 96]
                        mov              r14, qword ptr [rbp + 104]
                        mov              r15, qword ptr [rbp + 112]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 120]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n157_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n150_match_rpos_α
n149_lit_integer_β:
                                                                                        jmp   n138_match_head_β
.Lx215_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n150_match_rpos_α:
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n138_match_head_β
                                                                                        jmp   n151_match_assign_save_α
n150_match_rpos_β:
                                                                                        jmp   n138_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n151_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n158_match_len_α
n151_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n138_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n152_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n148_match_release_α
n152_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n158_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n159_call_α
n153_var_β:
                                                                                        jmp   n141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n154_op75_α:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 7
                                                                                        je    .Lx223_1
                        cmp              eax, 6
                                                                                        jne   .Lx223_0
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 6
                                                                                        jne   .Lx223_0
.Lx223_1:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n160_op75_α
.Lx223_0:
                        lea              rdi, [rbp + 848]
                        lea              rsi, [rbp + 832]
                        lea              rdx, [rbp + 816]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n160_op75_α
n154_op75_β:
                                                                                        jmp   n146_var_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n161_binop_α
n155_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n136_var_α
.Lx224_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n156_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx226_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx226_5
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx226_6]
                        lea              rdx, [rip + .Lx226_7]
                                                                                        jmp   rax
.Lx226_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx226_2
.Lx226_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx226_2
.Lx226_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx226_20
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx226_21
.Lx226_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        call             rt_arg_stage@PLT
.Lx226_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx226_22
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx226_23
.Lx226_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        call             rt_arg_stage@PLT
.Lx226_23:
                        mov              rdi, qword ptr [rip + .Lx226_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx226_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx226_3]
                        lea              rdx, [rip + .Lx226_4]
                                                                                        jmp   rax
.Lx226_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx226_2
.Lx226_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx226_2
.Lx226_1:
                        call             rt_faildescr@PLT
.Lx226_2:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n162_lit_integer_α
                                                                                        jmp   n162_lit_integer_α
n156_call_β:
                                                                                        jmp   n162_lit_integer_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              dword ptr [rbp + 148], 0
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n163_match_replace_α
n157_lit_string_β:
                                                                                        jmp   n139_op14_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n158_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx228_240
                        add              rsp, 16
                                                                                        jmp   n138_match_head_β
.Lx228_240:
                        add              r14d, 1
                                                                                        jmp   n152_match_assign_cond_α
n158_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n138_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx230_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx230_5
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx230_6]
                        lea              rdx, [rip + .Lx230_7]
                                                                                        jmp   rax
.Lx230_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx230_2
.Lx230_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx230_2
.Lx230_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx230_20
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx230_21
.Lx230_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        call             rt_arg_stage@PLT
.Lx230_21:
                        mov              rdi, qword ptr [rip + .Lx230_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx230_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx230_3]
                        lea              rdx, [rip + .Lx230_4]
                                                                                        jmp   rax
.Lx230_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx230_2
.Lx230_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx230_2
.Lx230_1:
                        call             rt_faildescr@PLT
.Lx230_2:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n141_var_α
                                                                                        jmp   n164_binop_α
n159_call_β:
                                                                                        jmp   n141_var_α
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n160_op75_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 7
                                                                                        je    .Lx232_1
                        cmp              eax, 6
                                                                                        jne   .Lx232_0
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 6
                                                                                        jne   .Lx232_0
.Lx232_1:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n165_op77_α
.Lx232_0:
                        lea              rdi, [rbp + 832]
                        lea              rsi, [rbp + 848]
                        lea              rdx, [rbp + 800]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n165_op77_α
n160_op75_β:
                                                                                        jmp   n146_var_α
#-----------------------------------------------------------------------------------------------------------------------
n161_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx233_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n136_var_α
.Lx233_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n166_assign_α
n161_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n136_var_α
#=======================================================================================================================
# 	TEST(480,520)
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:
                        mov              qword ptr [rbp + 1168], 6
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n167_lit_integer_α
n162_lit_integer_β:
                                                                                        jmp   n172_lit_integer_α
.Lx234_0:
                        .quad            480
#-----------------------------------------------------------------------------------------------------------------------
n163_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx236_0]
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              ecx, dword ptr [rbp + 48]
                        mov              r8, qword ptr [rbp + 72]
                        lea              r9, [rbp + 144]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx236_1
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "N"
.Lx236_1:
                        mov              rbp, qword ptr [rbp + 88]
                                                                                        jmp   n168_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n164_binop_α:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n169_assign_α
n164_binop_β:
                                                                                        jmp   n141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n165_op77_α:
                        lea              rdi, [rbp + 816]
                        lea              rsi, [rbp + 800]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n146_var_α
                                                                                        jmp   n139_op14_α
n165_op77_β:
                                                                                        jmp   n146_var_α
#-----------------------------------------------------------------------------------------------------------------------
n166_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        add              rsp, 48
                                                                                        jmp   n136_var_α
n166_assign_β:
                        add              rsp, 48
                                                                                        jmp   n136_var_α
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:
                        mov              qword ptr [rbp + 1184], 6
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n170_call_α
n167_lit_integer_β:
                                                                                        jmp   n172_lit_integer_α
.Lx241_0:
                        .quad            520
#=======================================================================================================================
# 	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              dword ptr [rbp + 452], 40
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n171_match_head_α
n168_lit_string_β:
                                                                                        jmp   n183_op14_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              rdi, qword ptr [rip + .Lx243_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n141_var_α
n169_assign_β:
                                                                                        jmp   n141_var_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n170_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx245_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx245_5
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx245_6]
                        lea              rdx, [rip + .Lx245_7]
                                                                                        jmp   rax
.Lx245_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx245_2
.Lx245_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx245_2
.Lx245_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx245_20
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx245_21
.Lx245_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        call             rt_arg_stage@PLT
.Lx245_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx245_22
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx245_23
.Lx245_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        call             rt_arg_stage@PLT
.Lx245_23:
                        mov              rdi, qword ptr [rip + .Lx245_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx245_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx245_3]
                        lea              rdx, [rip + .Lx245_4]
                                                                                        jmp   rax
.Lx245_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx245_2
.Lx245_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx245_2
.Lx245_1:
                        call             rt_faildescr@PLT
.Lx245_2:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n172_lit_integer_α
                                                                                        jmp   n172_lit_integer_α
n170_call_β:
                                                                                        jmp   n172_lit_integer_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "TEST"
#-----------------------------------------------------------------------------------------------------------------------
n171_match_head_α:
                        mov              qword ptr [rbp + 336], r13
                        mov              qword ptr [rbp + 344], r14
                        mov              qword ptr [rbp + 352], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 360], rax
                        mov              qword ptr [rbp + 328], rbp
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 304], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 296], rax
                        mov              dword ptr [rbp + 288], 0
.Lx247_0:
                        mov              r14d, dword ptr [rbp + 288]
                                                                                        jmp   n173_match_sequence_α
n171_match_head_β:
                        add              dword ptr [rbp + 288], 1
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, r15d
                                                                                        jg    .Lx247_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx247_1
                                                                                        jmp   .Lx247_0
.Lx247_1:
                        mov              rax, qword ptr [rbp + 296]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 304]
                        mov              r10, qword ptr [1879048192]
.Lx247_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx247_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 336]
                        mov              r14, qword ptr [rbp + 344]
                        mov              r15, qword ptr [rbp + 352]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 328]
                                                                                        jmp   n183_op14_α
#=======================================================================================================================
# 	TEST(1900,2100)
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 6
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n174_lit_integer_α
n172_lit_integer_β:
                                                                                        jmp   main_γ
.Lx248_0:
                        .quad            1900
#-----------------------------------------------------------------------------------------------------------------------
n173_match_sequence_α:
                        mov              dword ptr [rbp + 368], r14d
                                                                                        jmp   n176_match_patref_α
n173_match_sequence_as:
                                                                                        jmp   n175_match_release_α
n173_match_sequence_β:
                                                                                        jmp   n178_match_assign_cond_β
n173_match_sequence_af:
                                                                                        jmp   n171_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:
                        mov              qword ptr [rbp + 1280], 6
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n179_call_α
n174_lit_integer_β:
                                                                                        jmp   main_γ
.Lx251_0:
                        .quad            2100
#-----------------------------------------------------------------------------------------------------------------------
n175_match_release_α:
                        mov              rax, qword ptr [rbp + 296]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 304]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx253_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx253_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx253_1:
                        test             rax, rax
                                                                                        je    .Lx253_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx253_3]
                        lea              rdx, [rip + .Lx253_4]
                                                                                        jmp   rax
.Lx253_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx253_1
.Lx253_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx253_1
.Lx253_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx253_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx253_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 336]
                        mov              r14, qword ptr [rbp + 344]
                        mov              r15, qword ptr [rbp + 352]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 328]
                                                                                        jmp   n180_var_α
#-----------------------------------------------------------------------------------------------------------------------
n176_match_patref_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx254_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx254_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx254_10
.Lx254_9:
                        xor              eax, eax
.Lx254_10:
                        test             rax, rax
                                                                                        jz    .Lx254_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx254_4]
                        lea              rdx, [rip + .Lx254_5]
                                                                                        jmp   rax
.Lx254_4:
                                                                                        jmp   n177_match_assign_save_α
.Lx254_5:
                                                                                        jmp   n171_match_head_β
.Lx254_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx254_2:
                        test             rax, rax
                                                                                        je    .Lx254_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx254_7]
                        lea              rdx, [rip + .Lx254_8]
                                                                                        jmp   rax
.Lx254_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx254_2
.Lx254_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx254_2
.Lx254_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n171_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx254_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n177_match_assign_save_α
.Lx254_6:
                        add              rsp, 16
                                                                                        jmp   n171_match_head_β
n176_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n177_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n181_match_break_α
n177_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n176_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n178_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n175_match_release_α
n178_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n181_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n179_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052360]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052368]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052376]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052336]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052344]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx260_0]
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx260_5
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [1879052360], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [1879052376], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx260_6]
                        lea              rdx, [rip + .Lx260_7]
                                                                                        jmp   rax
.Lx260_6:
                        mov              rdi, qword ptr [1879052336]
                        mov              rsi, qword ptr [1879052344]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx260_2
.Lx260_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052344], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052376], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052352], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052360], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx260_2
.Lx260_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx260_20
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx260_21
.Lx260_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        call             rt_arg_stage@PLT
.Lx260_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx260_22
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx260_23
.Lx260_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        call             rt_arg_stage@PLT
.Lx260_23:
                        mov              rdi, qword ptr [rip + .Lx260_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx260_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx260_3]
                        lea              rdx, [rip + .Lx260_4]
                                                                                        jmp   rax
.Lx260_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx260_2
.Lx260_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx260_2
.Lx260_1:
                        call             rt_faildescr@PLT
.Lx260_2:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    main_γ
                                                                                        jmp   main_γ
n179_call_β:
                                                                                        jmp   main_γ
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "TEST"
#=======================================================================================================================
# 	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
# 	ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n182_call_α
n180_var_β:
                                                                                        jmp   n183_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n181_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx263_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx263_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n176_match_patref_β
.Lx263_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx263_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx263_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n176_match_patref_β
.Lx263_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx263_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx263_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n176_match_patref_β
.Lx263_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx263_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx263_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n176_match_patref_β
.Lx263_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx263_1
                        add              ecx, 1
                                                                                        jmp   .Lx263_0
.Lx263_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n178_match_assign_cond_α
n181_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n176_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n182_call_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx265_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx265_5
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx265_6]
                        lea              rdx, [rip + .Lx265_7]
                                                                                        jmp   rax
.Lx265_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx265_2
.Lx265_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx265_2
.Lx265_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx265_20
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx265_21
.Lx265_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        call             rt_arg_stage@PLT
.Lx265_21:
                        mov              rdi, qword ptr [rip + .Lx265_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx265_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx265_3]
                        lea              rdx, [rip + .Lx265_4]
                                                                                        jmp   rax
.Lx265_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx265_2
.Lx265_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx265_2
.Lx265_1:
                        call             rt_faildescr@PLT
.Lx265_2:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n183_op14_α
                                                                                        jmp   n184_lit_string_α
n182_call_β:
                                                                                        jmp   n183_op14_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n183_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              dword ptr [rbp + 628], 7
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n185_lit_string_α
n184_lit_string_β:
                                                                                        jmp   n183_op14_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              dword ptr [rbp + 644], 7
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n186_call_α
n185_lit_string_β:
                                                                                        jmp   n183_op14_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n186_call_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn271:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn271]
                        lea              rsi, [rbp + 496]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n183_op14_α
                                                                                        jmp   n187_var_α
n186_call_β:
                                                                                        jmp   n183_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n187_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n188_binop_α
n187_var_β:
                                                                                        jmp   n183_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n188_binop_α:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n189_assign_α
n188_binop_β:
                                                                                        jmp   n183_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n139_op14_α
n189_assign_β:
                                                                                        jmp   n183_op14_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1296]
                        add              rsp, 1304
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1296]
                        add              rsp, 1304
                        ret
                        .section         .rodata
.S0:                    .string          "UNITS"
                        .text
                        .section         .note.GNU-stack,"",@progbits
