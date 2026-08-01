                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__ROMAN_α
proc_LBL__ROMAN_α:
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
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                                                                                        jmp   n2_match_head_α
n1_var_β:
                                                                                        jmp   n29_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n2_match_head_α:
                        mov              qword ptr [rbp + 288], r13
                        mov              qword ptr [rbp + 296], r14
                        mov              qword ptr [rbp + 304], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 312], rax
                        mov              qword ptr [rbp + 280], rbp
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
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
                                                                                        jmp   n3_match_sequence_α
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
                        mov              r13, qword ptr [rbp + 288]
                        mov              r14, qword ptr [rbp + 296]
                        mov              r15, qword ptr [rbp + 304]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 280]
                                                                                        jmp   n29_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n3_match_sequence_α:
                                                                                        jmp   n27_lit_integer_α
n3_match_sequence_as:
                                                                                        jmp   n4_match_release_α
n3_match_sequence_β:
                                                                                        jmp   n26_match_assign_cond_β
n3_match_sequence_af:
                                                                                        jmp   n2_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_release_α:
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
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx37_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx37_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx37_1:
                        test             rax, rax
                                                                                        je    .Lx37_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx37_3]
                        lea              rdx, [rip + .Lx37_4]
                                                                                        jmp   rax
.Lx37_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx37_1
.Lx37_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx37_1
.Lx37_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx37_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx37_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 288]
                        mov              r14, qword ptr [rbp + 296]
                        mov              r15, qword ptr [rbp + 304]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rsp + 336], 1
                        mov              dword ptr [rsp + 340], 0
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n6_match_replace_α
n5_lit_string_β:
                                                                                        jmp   n29_save_restore_α
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n6_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx40_0]
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              ecx, dword ptr [rbp + 240]
                        mov              r8, qword ptr [rbp + 264]
                        lea              r9, [rbp + 336]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx40_1
.Lx40_0:
                        .quad            .Lx40_0_s
.Lx40_0_s:
                        .string          "N"
.Lx40_1:
                        mov              rbp, qword ptr [rbp + 280]
                                                                                        jmp   n7_lit_string_α
#=======================================================================================================================
#     '0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,'
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rsp + 640], 1
                        mov              dword ptr [rsp + 644], 40
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 648], rax
                                                                                        jmp   n8_match_head_α
n7_lit_string_β:
                                                                                        jmp   n19_save_restore_α
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
n8_match_head_α:
                        mov              qword ptr [rbp + 528], r13
                        mov              qword ptr [rbp + 536], r14
                        mov              qword ptr [rbp + 544], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 552], rax
                        mov              qword ptr [rbp + 520], rbp
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 496], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 488], rax
                        mov              dword ptr [rbp + 480], 0
.Lx43_0:
                        mov              r14d, dword ptr [rbp + 480]
                                                                                        jmp   n9_match_sequence_α
n8_match_head_β:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, r15d
                                                                                        jg    .Lx43_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx43_1
                                                                                        jmp   .Lx43_0
.Lx43_1:
                        mov              rax, qword ptr [rbp + 488]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 496]
                        mov              r10, qword ptr [1879048192]
.Lx43_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx43_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 528]
                        mov              r14, qword ptr [rbp + 536]
                        mov              r15, qword ptr [rbp + 544]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 520]
                                                                                        jmp   n19_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n9_match_sequence_α:
                        mov              dword ptr [rbp + 560], r14d
                                                                                        jmp   n23_match_patref_α
n9_match_sequence_as:
                                                                                        jmp   n10_match_release_α
n9_match_sequence_β:
                                                                                        jmp   n22_match_assign_cond_β
n9_match_sequence_af:
                                                                                        jmp   n8_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_release_α:
                        mov              rax, qword ptr [rbp + 488]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 496]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx47_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx47_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx47_1:
                        test             rax, rax
                                                                                        je    .Lx47_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx47_3]
                        lea              rdx, [rip + .Lx47_4]
                                                                                        jmp   rax
.Lx47_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx47_1
.Lx47_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx47_1
.Lx47_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx47_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx47_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 528]
                        mov              r14, qword ptr [rbp + 536]
                        mov              r15, qword ptr [rbp + 544]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 520]
                                                                                        jmp   n11_var_α
#=======================================================================================================================
#     ROMAN = REPLACE(ROMAN(N), 'IVXLCDM', 'XLCDM**') T
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                                                                                        jmp   n12_call_α
n11_var_β:
                                                                                        jmp   n19_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx50_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx50_5
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx50_6]
                        lea              rdx, [rip + .Lx50_7]
                                                                                        jmp   rax
.Lx50_6:
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
                                                                                        jmp   .Lx50_2
.Lx50_7:
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
                                                                                        jmp   .Lx50_2
.Lx50_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx50_20
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx50_21
.Lx50_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        call             rt_arg_stage@PLT
.Lx50_21:
                        mov              rdi, qword ptr [rip + .Lx50_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx50_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx50_3]
                        lea              rdx, [rip + .Lx50_4]
                                                                                        jmp   rax
.Lx50_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx50_2
.Lx50_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx50_2
.Lx50_1:
                        call             rt_faildescr@PLT
.Lx50_2:
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n19_save_restore_α
                                                                                        jmp   n13_lit_string_α
n12_call_β:
                                                                                        jmp   n19_save_restore_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rsp + 816], 1
                        mov              dword ptr [rsp + 820], 7
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 824], rax
                                                                                        jmp   n14_lit_string_α
n13_lit_string_β:
                                                                                        jmp   n19_save_restore_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rsp + 832], 1
                        mov              dword ptr [rsp + 836], 7
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 840], rax
                                                                                        jmp   n15_call_α
n14_lit_string_β:
                                                                                        jmp   n19_save_restore_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n15_call_α:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lrkfn54:               .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn54]
                        lea              rsi, [rsp + 688]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n19_save_restore_α
                                                                                        jmp   n16_var_α
n15_call_β:
                                                                                        jmp   n19_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                                                                                        jmp   n17_binop_α
n16_var_β:
                                                                                        jmp   n19_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n17_binop_α:
                        mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        mov              rdx, qword ptr [rsp + 848]
                        mov              rcx, qword ptr [rsp + 856]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                                                                                        jmp   n18_assign_α
n17_binop_β:
                                                                                        jmp   n19_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n29_save_restore_α
n18_assign_β:
                                                                                        jmp   n19_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n19_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n20_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n21_match_break_α
n20_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n23_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx63_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx63_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n23_match_patref_β
.Lx63_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx63_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx63_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n23_match_patref_β
.Lx63_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx63_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx63_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n23_match_patref_β
.Lx63_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx63_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx63_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n23_match_patref_β
.Lx63_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx63_1
                        add              ecx, 1
                                                                                        jmp   .Lx63_0
.Lx63_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n22_match_assign_cond_α
n21_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n23_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_assign_cond_α:
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
                                                                                        jmp   n10_match_release_α
n22_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n21_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n23_match_patref_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx66_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx66_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx66_10
.Lx66_9:
                        xor              eax, eax
.Lx66_10:
                        test             rax, rax
                                                                                        jz    .Lx66_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx66_4]
                        lea              rdx, [rip + .Lx66_5]
                                                                                        jmp   rax
.Lx66_4:
                                                                                        jmp   n20_match_assign_save_α
.Lx66_5:
                                                                                        jmp   n8_match_head_β
.Lx66_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx66_2:
                        test             rax, rax
                                                                                        je    .Lx66_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx66_7]
                        lea              rdx, [rip + .Lx66_8]
                                                                                        jmp   rax
.Lx66_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx66_2
.Lx66_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx66_2
.Lx66_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n8_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx66_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n20_match_assign_save_α
.Lx66_6:
                        add              rsp, 16
                                                                                        jmp   n8_match_head_β
n23_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n24_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n25_match_len_α
n24_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n2_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n25_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx69_240
                        add              rsp, 16
                                                                                        jmp   n2_match_head_β
.Lx69_240:
                        add              r14d, 1
                                                                                        jmp   n26_match_assign_cond_α
n25_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n2_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n26_match_assign_cond_α:
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
                                                                                        jmp   n4_match_release_α
n26_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n25_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:
                        mov              qword ptr [rsp + 416], 6
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n28_match_rpos_α
n27_lit_integer_β:
                                                                                        jmp   n2_match_head_β
.Lx72_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n28_match_rpos_α:
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n2_match_head_β
                                                                                        jmp   n24_match_assign_save_α
n28_match_rpos_β:
                                                                                        jmp   n2_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n29_save_restore_α:
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
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__ROMAN_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ROMAN_α
proc_ROMAN_α:
proc_ROMAN_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n76_save_restore_α:
                        mov              rdi, rcx
                        mov              rsi, rdx
                        lea              rdx, [rsp + 0]
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
                        mov              esi, 1280
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
                        mov              esi, 1
                        call             rt_proc_set_nformals@PLT
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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#     &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n83_lit_integer_α
n82_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n85_lit_string_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n84_call_α
n83_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n85_lit_string_α
.Lx150_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n84_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd152:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd152]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx151_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n85_lit_string_α
.Lx151_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48
                                                                                        jmp   n85_lit_string_α
n84_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n85_lit_string_α
#=======================================================================================================================
#     &STLIMIT = 1000000000
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n86_lit_integer_α
n85_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n88_call_α
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n87_call_α
n86_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n88_call_α
.Lx154_0:
                        .quad            1000000000
#-----------------------------------------------------------------------------------------------------------------------
n87_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd156:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd156]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 99
                                                                                        jne   .Lx155_240
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n88_call_α
.Lx155_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48
                                                                                        jmp   n88_call_α
n87_call_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n88_call_α
#=======================================================================================================================
#     DEFINE('ROMAN(N)T')                 :(ROMAN_END)
#     T1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n88_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd158:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd158]
                        xor              esi, esi
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx157_240
                        add              rsp, 16
                                                                                        jmp   n90_lit_integer_α
.Lx157_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n89_assign_α
n88_call_β:
                        add              rsp, 16
                                                                                        jmp   n90_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        add              rsp, 16
                                                                                        jmp   n90_lit_integer_α
n89_assign_β:
                        add              rsp, 16
                                                                                        jmp   n90_lit_integer_α
#=======================================================================================================================
#     N = 0
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n91_assign_α
n90_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n92_lit_string_α
.Lx160_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 16
                                                                                        jmp   n92_lit_string_α
n91_assign_β:
                        add              rsp, 16
                                                                                        jmp   n92_lit_string_α
#=======================================================================================================================
# LOOP    R = ROMAN('1776')
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        sub              rsp, 608
                        mov              qword ptr [rsp + 592], 1
                        mov              dword ptr [rsp + 596], 4
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n93_call_α
n92_lit_string_β:
                        add              rsp, 608
                                                                                        jmp   n95_var_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "1776"
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx164_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx164_5
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx164_6]
                        lea              rdx, [rip + .Lx164_7]
                                                                                        jmp   rax
.Lx164_6:
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
                                                                                        jmp   .Lx164_2
.Lx164_7:
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
                                                                                        jmp   .Lx164_2
.Lx164_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx164_20
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx164_21
.Lx164_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        call             rt_arg_stage@PLT
.Lx164_21:
                        mov              rdi, qword ptr [rip + .Lx164_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx164_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx164_3]
                        lea              rdx, [rip + .Lx164_4]
                                                                                        jmp   rax
.Lx164_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx164_2
.Lx164_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx164_2
.Lx164_1:
                        call             rt_faildescr@PLT
.Lx164_2:
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx164_240
                        add              rsp, 608
                                                                                        jmp   n95_var_α
.Lx164_240:
                                                                                        jmp   n94_assign_α
n93_call_β:
                                                                                        jmp   n95_var_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        add              rsp, 608
                                                                                        jmp   n95_var_α
n94_assign_β:
                        add              rsp, 608
                                                                                        jmp   n95_var_α
#=======================================================================================================================
#     N = LT(N, 100000) N + 1            :S(LOOP)
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n96_lit_integer_α
n95_var_β:
                        add              rsp, 16
                                                                                        jmp   n105_call_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n97_coerce_numeric_α
n96_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n105_call_α
.Lx167_0:
                        .quad            100000
#-----------------------------------------------------------------------------------------------------------------------
n97_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx169_1
                        cmp              eax, 6
                                                                                        jne   .Lx169_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx169_0
.Lx169_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n98_coerce_numeric_α
.Lx169_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n98_coerce_numeric_α
n97_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n105_call_α
#-----------------------------------------------------------------------------------------------------------------------
n98_coerce_numeric_α:
                        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx171_1
                        cmp              eax, 6
                                                                                        jne   .Lx171_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx171_0
.Lx171_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n99_cmp_test_α
.Lx171_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n99_cmp_test_α
n98_coerce_numeric_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n105_call_α
#-----------------------------------------------------------------------------------------------------------------------
n99_cmp_test_α:
                        sub              rsp, 16
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        js    .Lx173_240
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n105_call_α
.Lx173_240:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   n100_var_α
n99_cmp_test_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n105_call_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n101_lit_integer_α
n100_var_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n105_call_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n102_binop_α
n101_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n105_call_α
.Lx175_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n102_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx176_240
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n105_call_α
.Lx176_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n103_binop_α
n102_binop_β:
                        add              rsp, 16
                        add              rsp, 112
                                                                                        jmp   n105_call_α
#-----------------------------------------------------------------------------------------------------------------------
n103_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n104_assign_α
n103_binop_β:
                        add              rsp, 16
                        add              rsp, 128
                                                                                        jmp   n105_call_α
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        add              rsp, 144
                                                                                        jmp   n92_lit_string_α
n104_assign_β:
                        add              rsp, 144
                                                                                        jmp   n105_call_α
#=======================================================================================================================
#     T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:
                        sub              rsp, 16
                        .section         .rodata
.Lrkfnzd180:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd180]
                        xor              esi, esi
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx179_240
                        add              rsp, 16
                                                                                        jmp   n107_lit_string_α
.Lx179_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n106_assign_α
n105_call_β:
                        add              rsp, 16
                                                                                        jmp   n107_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        add              rsp, 16
                                                                                        jmp   n107_lit_string_α
n106_assign_β:
                        add              rsp, 16
                                                                                        jmp   n107_lit_string_α
#=======================================================================================================================
#     OUTPUT = "result: " R
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n108_var_α
n107_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n111_lit_string_α
.Lx182_0:
                        .quad            .Lx182_0_s
.Lx182_0_s:
                        .string          "result: "
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n109_binop_α
n108_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n109_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n110_assign_α
n109_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n110_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx185_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 48
                                                                                        jmp   n111_lit_string_α
n110_assign_β:
                        add              rsp, 48
                                                                                        jmp   n111_lit_string_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n112_var_α
n111_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n113_var_α
n112_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n114_binop_α
n113_var_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n114_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx189_240
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx189_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n115_binop_α
n114_binop_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n115_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n116_assign_α
n115_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx191_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 80
                                                                                        jmp   main_γ
n116_assign_β:
                        add              rsp, 80
                                                                                        jmp   main_γ
.Lx191_0:
                        .quad            .Lx191_0_s
.Lx191_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n117_goto_α:
                                                                                        jmp   n118_var_α
n117_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# ROMAN   N   RPOS(1)  LEN(1) . T  =         :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:
                        sub              rsp, 240
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n119_match_head_α
n118_var_β:
                        add              rsp, 240
                                                                                        jmp   n146_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n119_match_head_α:
                        mov              qword ptr [rbp + 288], r13
                        mov              qword ptr [rbp + 296], r14
                        mov              qword ptr [rbp + 304], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 312], rax
                        mov              qword ptr [rbp + 280], rbp
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
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
.Lx195_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n120_match_sequence_α
n119_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx195_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx195_1
                                                                                        jmp   .Lx195_0
.Lx195_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx195_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx195_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 288]
                        mov              r14, qword ptr [rbp + 296]
                        mov              r15, qword ptr [rbp + 304]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 280]
                        add              rsp, 240
                                                                                        jmp   n146_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n120_match_sequence_α:
                                                                                        jmp   n144_lit_integer_α
n120_match_sequence_as:
                                                                                        jmp   n121_match_release_α
n120_match_sequence_β:
                                                                                        jmp   n143_match_assign_cond_β
n120_match_sequence_af:
                                                                                        jmp   n119_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n121_match_release_α:
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
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx199_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx199_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx199_1:
                        test             rax, rax
                                                                                        je    .Lx199_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx199_3]
                        lea              rdx, [rip + .Lx199_4]
                                                                                        jmp   rax
.Lx199_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx199_1
.Lx199_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx199_1
.Lx199_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx199_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx199_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 288]
                        mov              r14, qword ptr [rbp + 296]
                        mov              r15, qword ptr [rbp + 304]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n122_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        mov              qword ptr [rsp + 112], 1
                        mov              dword ptr [rsp + 116], 0
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n123_match_replace_α
n122_lit_string_β:
                        add              rsp, 240
                                                                                        jmp   n146_save_restore_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n123_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx202_0]
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              ecx, dword ptr [rbp + 240]
                        mov              r8, qword ptr [rbp + 264]
                        lea              r9, [rbp + 336]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx202_1
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "N"
.Lx202_1:
                        mov              rbp, qword ptr [rbp + 280]
                        add              rsp, 240
                                                                                        jmp   n124_lit_string_α
#=======================================================================================================================
#     '0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,'
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 176], 1
                        mov              dword ptr [rsp + 180], 40
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n125_match_head_α
n124_lit_string_β:
                        add              rsp, 192
                                                                                        jmp   n136_save_restore_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
n125_match_head_α:
                        mov              qword ptr [rbp + 528], r13
                        mov              qword ptr [rbp + 536], r14
                        mov              qword ptr [rbp + 544], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + 552], rax
                        mov              qword ptr [rbp + 520], rbp
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], 0
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                        mov              qword ptr [rbp + 496], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 488], rax
                        mov              dword ptr [rbp + 480], 0
.Lx205_0:
                        mov              r14d, dword ptr [rbp + 480]
                                                                                        jmp   n126_match_sequence_α
n125_match_head_β:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, r15d
                                                                                        jg    .Lx205_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx205_1
                                                                                        jmp   .Lx205_0
.Lx205_1:
                        mov              rax, qword ptr [rbp + 488]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 496]
                        mov              r10, qword ptr [1879048192]
.Lx205_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx205_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 528]
                        mov              r14, qword ptr [rbp + 536]
                        mov              r15, qword ptr [rbp + 544]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 520]
                        add              rsp, 192
                                                                                        jmp   n136_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n126_match_sequence_α:
                        mov              dword ptr [rbp + 560], r14d
                                                                                        jmp   n140_match_patref_α
n126_match_sequence_as:
                                                                                        jmp   n127_match_release_α
n126_match_sequence_β:
                                                                                        jmp   n139_match_assign_cond_β
n126_match_sequence_af:
                                                                                        jmp   n125_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n127_match_release_α:
                        mov              rax, qword ptr [rbp + 488]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 496]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx209_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx209_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx209_1:
                        test             rax, rax
                                                                                        je    .Lx209_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx209_3]
                        lea              rdx, [rip + .Lx209_4]
                                                                                        jmp   rax
.Lx209_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx209_1
.Lx209_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx209_1
.Lx209_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx209_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx209_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rbp + 528]
                        mov              r14, qword ptr [rbp + 536]
                        mov              r15, qword ptr [rbp + 544]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + 520]
                        add              rsp, 192
                                                                                        jmp   n128_var_α
#=======================================================================================================================
#     ROMAN = REPLACE(ROMAN(N), 'IVXLCDM', 'XLCDM**') T
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:
                        sub              rsp, 496
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                                                                                        jmp   n129_call_α
n128_var_β:
                        add              rsp, 496
                                                                                        jmp   n136_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_α:
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
                        mov              rdi, qword ptr [rip + .Lx212_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx212_5
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx212_6]
                        lea              rdx, [rip + .Lx212_7]
                                                                                        jmp   rax
.Lx212_6:
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
                                                                                        jmp   .Lx212_2
.Lx212_7:
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
                                                                                        jmp   .Lx212_2
.Lx212_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx212_20
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx212_21
.Lx212_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        call             rt_arg_stage@PLT
.Lx212_21:
                        mov              rdi, qword ptr [rip + .Lx212_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx212_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx212_3]
                        lea              rdx, [rip + .Lx212_4]
                                                                                        jmp   rax
.Lx212_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx212_2
.Lx212_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx212_2
.Lx212_1:
                        call             rt_faildescr@PLT
.Lx212_2:
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx212_240
                        add              rsp, 496
                                                                                        jmp   n136_save_restore_α
.Lx212_240:
                                                                                        jmp   n130_lit_string_α
n129_call_β:
                                                                                        jmp   n136_save_restore_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        mov              qword ptr [rsp + 448], 1
                        mov              dword ptr [rsp + 452], 7
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n131_lit_string_α
n130_lit_string_β:
                        add              rsp, 496
                                                                                        jmp   n136_save_restore_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rsp + 464], 1
                        mov              dword ptr [rsp + 468], 7
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n132_call_α
n131_lit_string_β:
                        add              rsp, 496
                                                                                        jmp   n136_save_restore_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
n132_call_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn216:              .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rsp + 320]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 99
                                                                                        jne   .Lx215_240
                        add              rsp, 496
                                                                                        jmp   n136_save_restore_α
.Lx215_240:
                                                                                        jmp   n133_var_α
n132_call_β:
                        add              rsp, 496
                                                                                        jmp   n136_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                                                                                        jmp   n134_binop_α
n133_var_β:
                        add              rsp, 496
                                                                                        jmp   n136_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n134_binop_α:
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                                                                                        jmp   n135_assign_α
n134_binop_β:
                        add              rsp, 496
                                                                                        jmp   n136_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n146_save_restore_α
n135_assign_β:
                        add              rsp, 496
                                                                                        jmp   n136_save_restore_α
#-----------------------------------------------------------------------------------------------------------------------
n136_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 8]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n137_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n138_match_break_α
n137_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n140_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n138_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx225_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx225_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n140_match_patref_β
.Lx225_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx225_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx225_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n140_match_patref_β
.Lx225_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx225_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx225_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n140_match_patref_β
.Lx225_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx225_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx225_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n140_match_patref_β
.Lx225_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx225_1
                        add              ecx, 1
                                                                                        jmp   .Lx225_0
.Lx225_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n139_match_assign_cond_α
n138_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n140_match_patref_β
#-----------------------------------------------------------------------------------------------------------------------
n139_match_assign_cond_α:
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
                                                                                        jmp   n127_match_release_α
n139_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n138_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n140_match_patref_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx228_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx228_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx228_10
.Lx228_9:
                        xor              eax, eax
.Lx228_10:
                        test             rax, rax
                                                                                        jz    .Lx228_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx228_4]
                        lea              rdx, [rip + .Lx228_5]
                                                                                        jmp   rax
.Lx228_4:
                                                                                        jmp   n137_match_assign_save_α
.Lx228_5:
                                                                                        jmp   n125_match_head_β
.Lx228_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx228_2:
                        test             rax, rax
                                                                                        je    .Lx228_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx228_7]
                        lea              rdx, [rip + .Lx228_8]
                                                                                        jmp   rax
.Lx228_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx228_2
.Lx228_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx228_2
.Lx228_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n125_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx228_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n137_match_assign_save_α
.Lx228_6:
                        add              rsp, 16
                                                                                        jmp   n125_match_head_β
n140_match_patref_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n141_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n142_match_len_α
n141_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n119_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n142_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx231_240
                        add              rsp, 16
                                                                                        jmp   n119_match_head_β
.Lx231_240:
                        add              r14d, 1
                                                                                        jmp   n143_match_assign_cond_α
n142_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n119_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n143_match_assign_cond_α:
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
                                                                                        jmp   n121_match_release_α
n143_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n142_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:
                        mov              qword ptr [rsp + 192], 6
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n145_match_rpos_α
n144_lit_integer_β:
                                                                                        jmp   n119_match_head_β
.Lx234_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n145_match_rpos_α:
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   n119_match_head_β
                                                                                        jmp   n141_match_assign_save_α
n145_match_rpos_β:
                                                                                        jmp   n119_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n146_save_restore_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n147_goto_α:
                                                                                        jmp   n88_call_α
n147_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n148_goto_α:
                                                                                        jmp   n92_lit_string_α
n148_goto_β:
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
.S0:                    .string          "T"
                        .text
                        .section         .note.GNU-stack,"",@progbits
