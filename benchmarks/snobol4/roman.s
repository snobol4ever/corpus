                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__ROMAN_α
proc_LBL__ROMAN_α:
                        .global          proc_LBL__ROMAN_α
                        .global          proc_LBL__ROMAN_β
                        .global          proc_LBL__ROMAN_γ
                        .global          proc_LBL__ROMAN_ω
                        sub              rsp, 1280
                        mov              [rsp + 1256], rcx
                        mov              [rsp + 1264], rdx
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
proc_LBL__ROMAN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n1_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__ROMAN_ω
#=======================================================================================================================
# ROMAN   N   RPOS(1)  LEN(1) . T  =         :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                                                                                        jmp   n2_match_head_α
n1_var_β:
                                                                                        jmp   n3_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n2_match_head_α:
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              rax, qword ptr [1879048192]
                        mov              qword ptr [rsp + 272], rax
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
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [1879048192], rax
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
                        mov              dword ptr [rsp + 288], eax
                        mov              qword ptr [rsp + 312], r14
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [1879048192]
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
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rsp + 416], 6
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 424], rax
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
                        mov              dword ptr [rsp + 48], r14d
                                                                                        jmp   n11_match_len_α
n8_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n2_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 48]
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
                        mov              qword ptr [rsp + 304], 1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 312], rax
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
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              ecx, dword ptr [rsp + 240]
                        mov              r8, qword ptr [rsp + 264]
                        lea              r9, [rsp + 304]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx49_1
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "N"
.Lx49_1:
                                                                                        jmp   n13_lit_string_α
#=======================================================================================================================
#     '0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,'
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rsp + 608], 1
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n14_match_head_α
n13_lit_string_β:
                                                                                        jmp   n23_op14_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
n14_match_head_α:
                        mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              rax, qword ptr [1879048192]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 480], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 472], rax
                        mov              dword ptr [rsp + 464], 0
.Lx52_0:
                        mov              r14d, dword ptr [rsp + 464]
                                                                                        jmp   n15_match_sequence_α
n14_match_head_β:
                        add              dword ptr [rsp + 464], 1
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, r15d
                                                                                        jg    .Lx52_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx52_1
                                                                                        jmp   .Lx52_0
.Lx52_1:
                        mov              rax, qword ptr [rsp + 472]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 480]
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n23_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n15_match_sequence_α:
                        mov              dword ptr [rsp + 512], r14d
                                                                                        jmp   n17_match_defer_α
n15_match_sequence_as:
                                                                                        jmp   n16_match_release_α
n15_match_sequence_β:
                                                                                        jmp   n19_match_assign_cond_β
n15_match_sequence_af:
                                                                                        jmp   n14_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_release_α:
                        mov              rax, qword ptr [rsp + 472]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 480]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [1879048192]
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
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_match_defer_α:
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
n17_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n18_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n21_match_break_α
n18_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n17_match_defer_β
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
#     ROMAN = REPLACE(ROMAN(N), 'IVXLCDM', 'XLCDM**') T
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
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
                                                                                        jmp   n17_match_defer_β
.Lx64_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx64_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx64_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n17_match_defer_β
.Lx64_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx64_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx64_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n17_match_defer_β
.Lx64_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx64_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx64_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n17_match_defer_β
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
                                                                                        jmp   n17_match_defer_β
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
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 824]
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
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx66_21
.Lx66_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
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
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
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
                        mov              qword ptr [rsp + 784], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 792], rax
                                                                                        jmp   n25_lit_string_α
n24_lit_string_β:
                                                                                        jmp   n23_op14_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rsp + 800], 1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 808], rax
                                                                                        jmp   n26_call_α
n25_lit_string_β:
                                                                                        jmp   n23_op14_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n26_call_α:
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 696], rax
                        .section         .rodata
.Lrkfn72:               .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rsp + 656]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n23_op14_α
                                                                                        jmp   n27_var_α
n26_call_β:
                                                                                        jmp   n23_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n28_binop_α
n27_var_β:
                                                                                        jmp   n23_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:
                        mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                                                                                        jmp   n29_assign_α
n28_binop_β:
                                                                                        jmp   n23_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_op14_α
n29_assign_β:
                                                                                        jmp   n23_op14_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_β:
                                                                                        jmp   proc_LBL__ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 1256]
                        add              rsp, 1280
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_ω:
                        mov              rax, [rsp + 1264]
                        add              rsp, 1280
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ROMAN_α
proc_ROMAN_α:
                        .global          proc_ROMAN_α
                        .global          proc_ROMAN_β
                        .global          proc_ROMAN_γ
                        .global          proc_ROMAN_ω
                        sub              rsp, 1280
                        mov              [rsp + 1256], rcx
                        mov              [rsp + 1264], rdx
                        mov              rdi, rsp
                        mov              ecx, 1248
                        xor              eax, eax
                        rep stosb
proc_ROMAN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n76_op14_α:
                        mov              rdi, qword ptr [rsp + 1256]
                        mov              rsi, qword ptr [rsp + 1264]
                        lea              rdx, [rsp + 1280]
                        mov              rcx, rbp
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n77_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n77_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx81_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx81_1
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "ROMAN"
.Lx81_1:
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
                        mov              rax, [rsp + 1256]
                        add              rsp, 1280
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_ω:
                        mov              rax, [rsp + 1264]
                        add              rsp, 1280
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
                        mov              esi, 1248
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "ROMAN"
.Lstartup_pp1_0:        .string          "N"
.Lstartup_pp1_1:        .string          "T"
                        .align           8
.Lstartup_pnames1:
                        .quad            .Lstartup_pp1_0
                        .quad            .Lstartup_pp1_1
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + .Lstartup_pnames1]
                        mov              edx, 2
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_ROMAN_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "ROMAN"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "T"
.Lgvan3:                .string          "T1"
.Lgvan4:                .string          "R"
.Lgvan5:                .string          "T2"
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
                        sub              rsp, 1256
                        mov              rdi, rsp
                        mov              ecx, 1256
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#     &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rsp + 96], 1
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n86_lit_integer_α
n82_lit_string_β:
                                                                                        jmp   n96_lit_string_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n83_goto_α:
                                                                                        jmp   n87_var_α
n83_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n84_goto_α:
                                                                                        jmp   n88_call_α
n84_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n85_goto_α:
                                                                                        jmp   n89_lit_string_α
n85_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:
                        mov              qword ptr [rsp + 112], 6
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n90_call_α
n86_lit_integer_β:
                                                                                        jmp   n96_lit_string_α
.Lx153_0:
                        .quad            1
#=======================================================================================================================
# ROMAN   N   RPOS(1)  LEN(1) . T  =         :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                                                                                        jmp   n91_match_head_α
n87_var_β:
                                                                                        jmp   n92_op14_α
#=======================================================================================================================
#     DEFINE('ROMAN(N)T')                 :(ROMAN_END)
#     T1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n88_call_α:
                        .section         .rodata
.Lrkfn156:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn156]
                        lea              rsi, [rsp + 848]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n94_lit_integer_α
                                                                                        jmp   n93_assign_α
n88_call_β:
                                                                                        jmp   n94_lit_integer_α
#=======================================================================================================================
# LOOP    R = ROMAN('1776')
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rsp + 928], 1
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 936], rax
                                                                                        jmp   n95_call_α
n89_lit_string_β:
                                                                                        jmp   n100_var_α
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "1776"
#-----------------------------------------------------------------------------------------------------------------------
n90_call_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn159:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rsp + 48]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n96_lit_string_α
                                                                                        jmp   n96_lit_string_α
n90_call_β:
                                                                                        jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n91_match_head_α:
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              rax, qword ptr [1879048192]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx161_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n97_match_sequence_α
n91_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx161_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx161_1
                                                                                        jmp   .Lx161_0
.Lx161_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n92_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n92_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n94_lit_integer_α
n93_assign_β:
                                                                                        jmp   n94_lit_integer_α
#=======================================================================================================================
#     N = 0
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n98_assign_α
n94_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n89_lit_string_α
.Lx165_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n95_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx167_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx167_5
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx167_6]
                        lea              rdx, [rip + .Lx167_7]
                                                                                        jmp   rax
.Lx167_6:
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
                                                                                        jmp   .Lx167_2
.Lx167_7:
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
                                                                                        jmp   .Lx167_2
.Lx167_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx167_20
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx167_21
.Lx167_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        call             rt_arg_stage@PLT
.Lx167_21:
                        mov              rdi, qword ptr [rip + .Lx167_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx167_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx167_3]
                        lea              rdx, [rip + .Lx167_4]
                                                                                        jmp   rax
.Lx167_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx167_2
.Lx167_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx167_2
.Lx167_1:
                        call             rt_faildescr@PLT
.Lx167_2:
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n100_var_α
                                                                                        jmp   n99_assign_α
n95_call_β:
                                                                                        jmp   n100_var_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "ROMAN"
#=======================================================================================================================
#     &STLIMIT = 1000000000
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rsp + 192], 1
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n101_lit_integer_α
n96_lit_string_β:
                                                                                        jmp   n88_call_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n97_match_sequence_α:
                                                                                        jmp   n103_lit_integer_α
n97_match_sequence_as:
                                                                                        jmp   n102_match_release_α
n97_match_sequence_β:
                                                                                        jmp   n106_match_assign_cond_β
n97_match_sequence_af:
                                                                                        jmp   n91_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n89_lit_string_α
n98_assign_β:
                                                                                        jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n100_var_α
n99_assign_β:
                                                                                        jmp   n100_var_α
#=======================================================================================================================
#     N = LT(N, 100000) N + 1            :S(LOOP)
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                                                                                        jmp   n107_lit_integer_α
n100_var_β:
                                                                                        jmp   n108_call_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:
                        mov              qword ptr [rsp + 208], 6
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n109_call_α
n101_lit_integer_β:
                                                                                        jmp   n88_call_α
.Lx174_0:
                        .quad            1000000000
#-----------------------------------------------------------------------------------------------------------------------
n102_match_release_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 288], eax
                        mov              qword ptr [rsp + 312], r14
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [1879048192]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx176_1:
                        test             rax, rax
                                                                                        je    .Lx176_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx176_3]
                        lea              rdx, [rip + .Lx176_4]
                                                                                        jmp   rax
.Lx176_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx176_1
.Lx176_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx176_1
.Lx176_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n110_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:
                        mov              qword ptr [rsp + 416], 6
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n104_match_rpos_α
n103_lit_integer_β:
                                                                                        jmp   n91_match_head_β
.Lx177_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n104_match_rpos_α:
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n91_match_head_β
                                                                                        jmp   n105_match_assign_save_α
n104_match_rpos_β:
                                                                                        jmp   n91_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n105_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 48], r14d
                                                                                        jmp   n111_match_len_α
n105_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n91_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n106_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 48]
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
                                                                                        jmp   n102_match_release_α
n106_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n111_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:
                        mov              qword ptr [rsp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 1016], rax
                                                                                        jmp   n112_op75_α
n107_lit_integer_β:
                                                                                        jmp   n108_call_α
.Lx183_0:
                        .quad            100000
#=======================================================================================================================
#     T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:
                        .section         .rodata
.Lrkfn185:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn185]
                        lea              rsi, [rsp + 1104]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n114_lit_string_α
                                                                                        jmp   n113_assign_α
n108_call_β:
                                                                                        jmp   n114_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn187:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
                        lea              rsi, [rsp + 144]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n88_call_α
                                                                                        jmp   n88_call_α
n109_call_β:
                                                                                        jmp   n88_call_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rsp + 304], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n115_match_replace_α
n110_lit_string_β:
                                                                                        jmp   n92_op14_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n111_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx189_240
                        add              rsp, 16
                                                                                        jmp   n91_match_head_β
.Lx189_240:
                        add              r14d, 1
                                                                                        jmp   n106_match_assign_cond_α
n111_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n91_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n112_op75_α:
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 7
                                                                                        je    .Lx191_1
                        cmp              eax, 6
                                                                                        jne   .Lx191_0
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              eax, 6
                                                                                        jne   .Lx191_0
.Lx191_1:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                                                                                        jmp   n116_op75_α
.Lx191_0:
                        lea              rdi, [rsp + 1024]
                        lea              rsi, [rsp + 1008]
                        lea              rdx, [rsp + 992]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n116_op75_α
n112_op75_β:
                                                                                        jmp   n108_call_α
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n114_lit_string_α
n113_assign_β:
                                                                                        jmp   n114_lit_string_α
#=======================================================================================================================
#     OUTPUT = "result: " R
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n117_var_α
n114_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n121_lit_string_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "result: "
#-----------------------------------------------------------------------------------------------------------------------
n115_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx195_0]
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              ecx, dword ptr [rsp + 240]
                        mov              r8, qword ptr [rsp + 264]
                        lea              r9, [rsp + 304]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx195_1
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "N"
.Lx195_1:
                                                                                        jmp   n118_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n116_op75_α:
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              eax, 7
                                                                                        je    .Lx197_1
                        cmp              eax, 6
                                                                                        jne   .Lx197_0
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 6
                                                                                        jne   .Lx197_0
.Lx197_1:
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                                                                                        jmp   n119_op77_α
.Lx197_0:
                        lea              rdi, [rsp + 1008]
                        lea              rsi, [rsp + 1024]
                        lea              rdx, [rsp + 976]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n119_op77_α
n116_op75_β:
                                                                                        jmp   n108_call_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n120_binop_α
n117_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n121_lit_string_α
#=======================================================================================================================
#     '0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,'
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rsp + 608], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n122_match_head_α
n118_lit_string_β:
                                                                                        jmp   n140_op14_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
n119_op77_α:
                        lea              rdi, [rsp + 992]
                        lea              rsi, [rsp + 976]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n108_call_α
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                                                                                        jmp   n123_var_α
n119_op77_β:
                                                                                        jmp   n108_call_α
#-----------------------------------------------------------------------------------------------------------------------
n120_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n124_assign_α
n120_binop_β:
                        add              rsp, 32
                                                                                        jmp   n121_lit_string_α
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n125_var_α
n121_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n122_match_head_α:
                        mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              rax, qword ptr [1879048192]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 480], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 472], rax
                        mov              dword ptr [rsp + 464], 0
.Lx205_0:
                        mov              r14d, dword ptr [rsp + 464]
                                                                                        jmp   n126_match_sequence_α
n122_match_head_β:
                        add              dword ptr [rsp + 464], 1
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, r15d
                                                                                        jg    .Lx205_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx205_1
                                                                                        jmp   .Lx205_0
.Lx205_1:
                        mov              rax, qword ptr [rsp + 472]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 480]
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n140_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                                                                                        jmp   n127_lit_integer_α
n123_var_β:
                                                                                        jmp   n108_call_α
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx207_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n121_lit_string_α
n124_assign_β:
                                                                                        jmp   n121_lit_string_α
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n128_var_α
n125_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n126_match_sequence_α:
                        mov              dword ptr [rsp + 512], r14d
                                                                                        jmp   n130_match_defer_α
n126_match_sequence_as:
                                                                                        jmp   n129_match_release_α
n126_match_sequence_β:
                                                                                        jmp   n132_match_assign_cond_β
n126_match_sequence_af:
                                                                                        jmp   n122_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        mov              qword ptr [rsp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rsp + 1080], rax
                                                                                        jmp   n133_binop_α
n127_lit_integer_β:
                                                                                        jmp   n108_call_α
.Lx211_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n134_binop_α
n128_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n129_match_release_α:
                        mov              rax, qword ptr [rsp + 472]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 480]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [1879048192]
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
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n135_var_α
#-----------------------------------------------------------------------------------------------------------------------
n130_match_defer_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx215_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx215_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx215_10
.Lx215_9:
                        xor              eax, eax
.Lx215_10:
                        test             rax, rax
                                                                                        jz    .Lx215_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx215_4]
                        lea              rdx, [rip + .Lx215_5]
                                                                                        jmp   rax
.Lx215_4:
                                                                                        jmp   n131_match_assign_save_α
.Lx215_5:
                                                                                        jmp   n122_match_head_β
.Lx215_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx215_2:
                        test             rax, rax
                                                                                        je    .Lx215_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx215_7]
                        lea              rdx, [rip + .Lx215_8]
                                                                                        jmp   rax
.Lx215_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx215_2
.Lx215_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx215_2
.Lx215_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n122_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx215_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n131_match_assign_save_α
.Lx215_6:
                        add              rsp, 16
                                                                                        jmp   n122_match_head_β
n130_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n131_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n136_match_break_α
n131_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n130_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n132_match_assign_cond_α:
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
                                                                                        jmp   n129_match_release_α
n132_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n136_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n133_binop_α:
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 100
                                                                                        je    .Lx220_0
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 6
                                                                                        jne   .Lx220_2
.Lx220_1:
                        mov              rax, qword ptr [rsp + 1064]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 1040], 6
                        mov              qword ptr [rsp + 1048], rax
                                                                                        jmp   n137_binop_α
.Lx220_0:
                        mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 1072]
                        mov              rcx, qword ptr [rsp + 1080]
                        mov              r8d, 0
                        lea              r9, [rsp + 1040]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n137_binop_α
.Lx220_2:
                        mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 1072]
                        mov              rcx, qword ptr [rsp + 1080]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n108_call_α
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                                                                                        jmp   n137_binop_α
n133_binop_β:
                                                                                        jmp   n108_call_α
#-----------------------------------------------------------------------------------------------------------------------
n134_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx221_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx221_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx221_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx221_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n138_binop_α
.Lx221_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx221_2
                        add              rsp, 16
                                                                                        jmp   n138_binop_α
.Lx221_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx221_240
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx221_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n138_binop_α
n134_binop_β:
                        add              rsp, 48
                                                                                        jmp   main_γ
#=======================================================================================================================
#     ROMAN = REPLACE(ROMAN(N), 'IVXLCDM', 'XLCDM**') T
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                                                                                        jmp   n139_call_α
n135_var_β:
                                                                                        jmp   n140_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n136_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx224_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx224_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n130_match_defer_β
.Lx224_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx224_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx224_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n130_match_defer_β
.Lx224_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx224_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx224_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n130_match_defer_β
.Lx224_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx224_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx224_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n130_match_defer_β
.Lx224_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx224_1
                        add              ecx, 1
                                                                                        jmp   .Lx224_0
.Lx224_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n132_match_assign_cond_α
n136_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n130_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n137_binop_α:
                        mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdx, qword ptr [rsp + 1040]
                        mov              rcx, qword ptr [rsp + 1048]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                                                                                        jmp   n141_assign_α
n137_binop_β:
                                                                                        jmp   n108_call_α
#-----------------------------------------------------------------------------------------------------------------------
n138_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n142_assign_α
n138_binop_β:
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n139_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx228_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx228_5
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx228_6]
                        lea              rdx, [rip + .Lx228_7]
                                                                                        jmp   rax
.Lx228_6:
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
                                                                                        jmp   .Lx228_2
.Lx228_7:
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
                                                                                        jmp   .Lx228_2
.Lx228_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx228_20
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx228_21
.Lx228_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        call             rt_arg_stage@PLT
.Lx228_21:
                        mov              rdi, qword ptr [rip + .Lx228_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx228_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx228_3]
                        lea              rdx, [rip + .Lx228_4]
                                                                                        jmp   rax
.Lx228_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx228_2
.Lx228_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx228_2
.Lx228_1:
                        call             rt_faildescr@PLT
.Lx228_2:
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n140_op14_α
                                                                                        jmp   n143_lit_string_α
n139_call_β:
                                                                                        jmp   n140_op14_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n140_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n141_assign_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n89_lit_string_α
n141_assign_β:
                                                                                        jmp   n108_call_α
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx232_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n142_assign_β:
                                                                                        jmp   main_γ
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:
                        mov              qword ptr [rsp + 784], 1
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 792], rax
                                                                                        jmp   n144_lit_string_α
n143_lit_string_β:
                                                                                        jmp   n140_op14_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        mov              qword ptr [rsp + 800], 1
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 808], rax
                                                                                        jmp   n145_call_α
n144_lit_string_β:
                                                                                        jmp   n140_op14_α
.Lx234_0:
                        .quad            .Lx234_0_s
.Lx234_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n145_call_α:
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 696], rax
                        .section         .rodata
.Lrkfn236:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn236]
                        lea              rsi, [rsp + 656]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n140_op14_α
                                                                                        jmp   n146_var_α
n145_call_β:
                                                                                        jmp   n140_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n147_binop_α
n146_var_β:
                                                                                        jmp   n140_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n147_binop_α:
                        mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                                                                                        jmp   n148_assign_α
n147_binop_β:
                                                                                        jmp   n140_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n92_op14_α
n148_assign_β:
                                                                                        jmp   n140_op14_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 1256
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 1256
                        ret
                        .section         .rodata
.S0:                    .string          "T"
                        .text
                        .section         .note.GNU-stack,"",@progbits
