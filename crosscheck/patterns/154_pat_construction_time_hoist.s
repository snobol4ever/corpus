                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "V"
.Lgvan1:                .string          "W"
.Lgvan2:                .string          "A"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 3
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 3
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
                        sub              rsp, 1224
                        mov              rdi, rsp
                        mov              ecx, 1224
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
# 	V = 'q'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_assign_α
n0_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n2_lit_string_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n2_lit_string_α
n1_assign_β:
                                                                                        jmp   n2_lit_string_α
#=======================================================================================================================
# 	V = ','
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_assign_α
n2_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n4_lit_string_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n4_lit_string_α
n3_assign_β:
                                                                                        jmp   n4_lit_string_α
#=======================================================================================================================
# 	'ab,cd' LEN(1) $ V BREAK(V) . W
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rsp + 320], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n5_var_α
n4_lit_string_β:
                                                                                        jmp   n7_lit_string_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "ab,cd"
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n6_op73_α
n5_var_β:
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_op73_α:
                        lea              rdi, [rsp + 304]
                        lea              rsi, [rsp + 288]
                        mov              rdx, 4522053
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n8_match_head_α
n6_op73_β:
                                                                                        jmp   n7_lit_string_α
#=======================================================================================================================
# 	OUTPUT = 'S:' W ':' V
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n9_var_α
n7_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "S:"
#-----------------------------------------------------------------------------------------------------------------------
n8_match_head_α:
                        mov              qword ptr [rsp + 112], r13
                        mov              qword ptr [rsp + 120], r14
                        mov              qword ptr [rsp + 128], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 136], rax
                        mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
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
.Lx74_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n10_match_sequence_α
n8_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx74_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx74_1
                                                                                        jmp   .Lx74_0
.Lx74_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx74_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx74_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 112]
                        mov              r14, qword ptr [rsp + 120]
                        mov              r15, qword ptr [rsp + 128]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 136]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n11_binop_α
n9_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_match_sequence_α:
                                                                                        jmp   n14_match_assign_save_α
n10_match_sequence_as:
                                                                                        jmp   n13_match_release_α
n10_match_sequence_β:
                                                                                        jmp   n17_match_assign_cond_β
n10_match_sequence_af:
                                                                                        jmp   n8_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n18_lit_string_α
n11_binop_β:
                        add              rsp, 32
                                                                                        jmp   n12_lit_string_α
#=======================================================================================================================
# 	V = ','
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n19_assign_α
n12_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n23_lit_string_α
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n13_match_release_α:
                        mov              rax, qword ptr [rsp + 56]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 64]
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
                        mov              r13, qword ptr [rsp + 112]
                        mov              r14, qword ptr [rsp + 120]
                        mov              r15, qword ptr [rsp + 128]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 136]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n20_match_len_α
n14_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n8_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_assign_imm_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rdi, [rip + .S0]
                        mov              esi, eax
                        mov              edx, r14d
                        mov              ecx, 1
                        call             rt_cap_open@PLT
                        test             rax, rax
                                                                                        je    .Lx85_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx85_2]
                        lea              rdx, [rip + .Lx85_3]
                                                                                        jmp   rax
.Lx85_2:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_cap_finish@PLT
                                                                                        jmp   .Lx85_1
.Lx85_3:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_cap_finish@PLT
.Lx85_1:
                                                                                        jmp   n16_match_assign_save_α
n15_match_assign_imm_β:
                                                                                        jmp   n20_match_len_β
#-----------------------------------------------------------------------------------------------------------------------
n16_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n21_match_break_α
n16_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n15_match_assign_imm_β
#-----------------------------------------------------------------------------------------------------------------------
n17_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S1]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n13_match_release_α
n17_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n21_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n22_binop_α
n18_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n23_lit_string_α
n19_assign_β:
                                                                                        jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx92_240
                        add              rsp, 16
                                                                                        jmp   n8_match_head_β
.Lx92_240:
                        add              r14d, 1
                                                                                        jmp   n15_match_assign_imm_α
n20_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n8_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n21_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 80], 0
                        mov              r8, qword ptr [rsp + 376]
                        mov              r9d, dword ptr [rsp + 372]
.Lx94_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 80]
                        cmp              eax, r15d
                                                                                        jl    .Lx94_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n15_match_assign_imm_β
.Lx94_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx94_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx94_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx94_1
                        add              edx, 1
                                                                                        jmp   .Lx94_2
.Lx94_3:
                        add              dword ptr [rsp + 80], 1
                                                                                        jmp   .Lx94_0
.Lx94_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 80]
                        mov              dword ptr [rsp + 80], r14d
                        mov              r14d, eax
                                                                                        jmp   n17_match_assign_cond_α
n21_match_break_β:
                        mov              r14d, dword ptr [rsp + 80]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n15_match_assign_imm_β
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n24_var_α
n22_binop_β:
                        add              rsp, 32
                                                                                        jmp   n12_lit_string_α
#=======================================================================================================================
# 	'ab,cd' BREAK(V) . W
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rsp + 656], 1
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 664], rax
                                                                                        jmp   n25_var_α
n23_lit_string_β:
                                                                                        jmp   n28_var_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "ab,cd"
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n26_binop_α
n24_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                                                                                        jmp   n27_op73_α
n25_var_β:
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n29_assign_α
n26_binop_β:
                        add              rsp, 32
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_op73_α:
                        lea              rdi, [rsp + 640]
                        lea              rsi, [rsp + 624]
                        mov              rdx, 4522053
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n30_match_head_α
n27_op73_β:
                                                                                        jmp   n28_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n31_assign_α
n28_var_β:
                        add              rsp, 16
                                                                                        jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx103_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n12_lit_string_α
n29_assign_β:
                                                                                        jmp   n12_lit_string_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n30_match_head_α:
                        mov              qword ptr [rsp + 528], r13
                        mov              qword ptr [rsp + 536], r14
                        mov              qword ptr [rsp + 544], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 552], rax
                        mov              rdi, qword ptr [rsp + 656]
                        mov              rsi, qword ptr [rsp + 664]
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
.Lx105_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n33_match_assign_save_α
n30_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx105_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx105_1
                                                                                        jmp   .Lx105_0
.Lx105_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx105_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx105_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 528]
                        mov              r14, qword ptr [rsp + 536]
                        mov              r15, qword ptr [rsp + 544]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 552]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx106_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n32_lit_string_α
n31_assign_β:
                                                                                        jmp   n32_lit_string_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	V = 'd'
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n34_assign_α
n32_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n36_lit_string_α
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n33_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n35_match_break_α
n33_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n30_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n36_lit_string_α
n34_assign_β:
                                                                                        jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], 0
                        mov              r8, qword ptr [rsp + 696]
                        mov              r9d, dword ptr [rsp + 692]
.Lx112_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 64]
                        cmp              eax, r15d
                                                                                        jl    .Lx112_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n30_match_head_β
.Lx112_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx112_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx112_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx112_1
                        add              edx, 1
                                                                                        jmp   .Lx112_2
.Lx112_3:
                        add              dword ptr [rsp + 64], 1
                                                                                        jmp   .Lx112_0
.Lx112_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 64]
                        mov              dword ptr [rsp + 64], r14d
                        mov              r14d, eax
                                                                                        jmp   n37_match_assign_cond_α
n35_match_break_β:
                        mov              r14d, dword ptr [rsp + 64]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n30_match_head_β
#=======================================================================================================================
# 	'ab,cd' BREAK(V) . W
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rsp + 896], 1
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 904], rax
                                                                                        jmp   n38_var_α
n36_lit_string_β:
                                                                                        jmp   n41_var_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "ab,cd"
#-----------------------------------------------------------------------------------------------------------------------
n37_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S1]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n39_match_release_α
n37_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n35_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                                                                                        jmp   n40_op73_α
n38_var_β:
                                                                                        jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_match_release_α:
                        mov              rax, qword ptr [rsp + 40]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 48]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx118_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx118_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx118_1:
                        test             rax, rax
                                                                                        je    .Lx118_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx118_3]
                        lea              rdx, [rip + .Lx118_4]
                                                                                        jmp   rax
.Lx118_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx118_1
.Lx118_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx118_1
.Lx118_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx118_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx118_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 528]
                        mov              r14, qword ptr [rsp + 536]
                        mov              r15, qword ptr [rsp + 544]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 552]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_op73_α:
                        lea              rdi, [rsp + 880]
                        lea              rsi, [rsp + 864]
                        mov              rdx, 4522053
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n42_match_head_α
n40_op73_β:
                                                                                        jmp   n41_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n43_assign_α
n41_var_β:
                        add              rsp, 16
                                                                                        jmp   n44_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_match_head_α:
                        mov              qword ptr [rsp + 768], r13
                        mov              qword ptr [rsp + 776], r14
                        mov              qword ptr [rsp + 784], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 792], rax
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
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
.Lx123_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n45_match_assign_save_α
n42_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx123_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx123_1
                                                                                        jmp   .Lx123_0
.Lx123_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx123_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx123_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 768]
                        mov              r14, qword ptr [rsp + 776]
                        mov              r15, qword ptr [rsp + 784]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 792]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx124_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n44_lit_string_α
n43_assign_β:
                                                                                        jmp   n44_lit_string_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	A = 'q'
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n46_assign_α
n44_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n48_lit_string_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n45_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n47_match_break_α
n45_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n42_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n48_lit_string_α
n46_assign_β:
                                                                                        jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], 0
                        mov              r8, qword ptr [rsp + 936]
                        mov              r9d, dword ptr [rsp + 932]
.Lx130_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 64]
                        cmp              eax, r15d
                                                                                        jl    .Lx130_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n42_match_head_β
.Lx130_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx130_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx130_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx130_1
                        add              edx, 1
                                                                                        jmp   .Lx130_2
.Lx130_3:
                        add              dword ptr [rsp + 64], 1
                                                                                        jmp   .Lx130_0
.Lx130_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 64]
                        mov              dword ptr [rsp + 64], r14d
                        mov              r14d, eax
                                                                                        jmp   n49_match_assign_cond_α
n47_match_break_β:
                        mov              r14d, dword ptr [rsp + 64]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n42_match_head_β
#=======================================================================================================================
# 	A = 'x'
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n50_assign_α
n48_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n52_lit_string_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n49_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S1]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n51_match_release_α
n49_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n47_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n52_lit_string_α
n50_assign_β:
                                                                                        jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n51_match_release_α:
                        mov              rax, qword ptr [rsp + 40]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 48]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx136_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx136_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx136_1:
                        test             rax, rax
                                                                                        je    .Lx136_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx136_3]
                        lea              rdx, [rip + .Lx136_4]
                                                                                        jmp   rax
.Lx136_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx136_1
.Lx136_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx136_1
.Lx136_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx136_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx136_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 768]
                        mov              r14, qword ptr [rsp + 776]
                        mov              r15, qword ptr [rsp + 784]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 792]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n41_var_α
#=======================================================================================================================
# 	'axyb' BREAK(A 'y') . W
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rsp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 1192], rax
                                                                                        jmp   n53_var_α
n52_lit_string_β:
                                                                                        jmp   n55_var_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "axyb"
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                                                                                        jmp   n54_lit_string_α
n53_var_β:
                                                                                        jmp   n55_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rsp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 1176], rax
                                                                                        jmp   n56_binop_α
n54_lit_string_β:
                                                                                        jmp   n55_var_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "y"
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n57_assign_α
n55_var_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:
                        mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 1168]
                        mov              rcx, qword ptr [rsp + 1176]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                                                                                        jmp   n58_op73_α
n56_binop_β:
                                                                                        jmp   n55_var_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx142_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
n57_assign_β:
                                                                                        jmp   main_γ
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n58_op73_α:
                        lea              rdi, [rsp + 1136]
                        lea              rsi, [rsp + 1120]
                        mov              rdx, 4522053
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n59_match_head_α
n58_op73_β:
                                                                                        jmp   n55_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_match_head_α:
                        mov              qword ptr [rsp + 1024], r13
                        mov              qword ptr [rsp + 1032], r14
                        mov              qword ptr [rsp + 1040], r15
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
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
.Lx146_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n60_match_assign_save_α
n59_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx146_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx146_1
                                                                                        jmp   .Lx146_0
.Lx146_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r10, qword ptr [1879048192]
.Lx146_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx146_2
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 1024]
                        mov              r14, qword ptr [rsp + 1032]
                        mov              r15, qword ptr [rsp + 1040]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 1048]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n55_var_α
#-----------------------------------------------------------------------------------------------------------------------
n60_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n61_match_break_α
n60_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n59_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n61_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 64], 0
                        mov              r8, qword ptr [rsp + 1192]
                        mov              r9d, dword ptr [rsp + 1188]
.Lx150_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 64]
                        cmp              eax, r15d
                                                                                        jl    .Lx150_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n59_match_head_β
.Lx150_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx150_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx150_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx150_1
                        add              edx, 1
                                                                                        jmp   .Lx150_2
.Lx150_3:
                        add              dword ptr [rsp + 64], 1
                                                                                        jmp   .Lx150_0
.Lx150_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 64]
                        mov              dword ptr [rsp + 64], r14d
                        mov              r14d, eax
                                                                                        jmp   n62_match_assign_cond_α
n61_match_break_β:
                        mov              r14d, dword ptr [rsp + 64]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n59_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n62_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S1]
                        mov              r10, qword ptr [1879048192]
                        mov              qword ptr [r10 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r10 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r10 + 16], rdx
                        add              r10, 24
                        mov              qword ptr [1879048192], r10
                                                                                        jmp   n63_match_release_α
n62_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n61_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n63_match_release_α:
                        mov              rax, qword ptr [rsp + 40]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 48]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, qword ptr [1879048192]
                        mov              r10, rsi
.Lx154_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx154_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx154_1:
                        test             rax, rax
                                                                                        je    .Lx154_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx154_3]
                        lea              rdx, [rip + .Lx154_4]
                                                                                        jmp   rax
.Lx154_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx154_1
.Lx154_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx154_1
.Lx154_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx154_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx154_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 1024]
                        mov              r14, qword ptr [rsp + 1032]
                        mov              r15, qword ptr [rsp + 1040]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 1048]
                        call             rt_match_ctx_restore@PLT
                                                                                        jmp   n55_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 1224
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 1224
                        ret
                        .section         .rodata
.S0:                    .string          "V"
.S1:                    .string          "W"
                        .text
                        .section         .note.GNU-stack,"",@progbits
