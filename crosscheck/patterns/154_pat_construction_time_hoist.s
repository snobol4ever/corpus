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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
# 	V = 'q'
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
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
                        mov              qword ptr [1879052288], rax                    # V
                        mov              qword ptr [1879052296], rdx                    # V
                        add              rsp, 16
                                                                                        jmp   n2_lit_string_α
n1_assign_β:
                        add              rsp, 16
                                                                                        jmp   n2_lit_string_α
#=======================================================================================================================
# 	V = ','
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
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
                        mov              qword ptr [1879052288], rax                    # V
                        mov              qword ptr [1879052296], rdx                    # V
                        add              rsp, 16
                                                                                        jmp   n4_lit_string_α
n3_assign_β:
                        add              rsp, 16
                                                                                        jmp   n4_lit_string_α
#=======================================================================================================================
# 	'ab,cd' LEN(1) $ V BREAK(V) . W
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        sub              rsp, 304
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
                        mov              qword ptr [rsp + 288], 1
                        mov              dword ptr [rsp + 292], 5
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n5_var_α
n4_lit_string_β:
                        add              rsp, 304
                                                                                        jmp   n16_lit_string_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "ab,cd"
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [1879052288]                    # V
                        mov              rdx, qword ptr [1879052296]                    # V
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n6_coerce_string_α
n5_var_β:
                        add              rsp, 304
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_coerce_string_α:
                        lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 256]
                        mov              rdx, 4522053
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n7_match_head_α
n6_coerce_string_β:
                        add              rsp, 304
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_head_α:
                        mov              qword ptr [rsp + 112], r13                     # outer_Σ
                        mov              qword ptr [rsp + 120], r14                     # outer_δ
                        mov              qword ptr [rsp + 128], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 136], rax                     # cap_gen
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
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
.Lx73_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n8_match_sequence_α
n7_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx73_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx73_1
                                                                                        jmp   .Lx73_0
.Lx73_1:
                        mov              r10, qword ptr [1879048192]
.Lx73_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx73_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 112]
                        mov              r14, qword ptr [rsp + 120]
                        mov              r15, qword ptr [rsp + 128]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 136]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 304
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_match_sequence_α:
                                                                                        jmp   n13_match_assign_save_α
n8_match_sequence_as:
                                                                                        jmp   n9_match_release_α
n8_match_sequence_β:
                                                                                        jmp   n12_match_assign_cond_β
n8_match_sequence_af:
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx77_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx77_9
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
                        mov              r10, qword ptr [1879048192]
.Lx77_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx77_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 112]
                        mov              r14, qword ptr [rsp + 120]
                        mov              r15, qword ptr [rsp + 128]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 136]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 304
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n11_match_break_α
n10_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n15_match_assign_imm_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rsp + 264]
                        mov              r9d, dword ptr [rsp + 260]
.Lx81_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx81_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n15_match_assign_imm_β
.Lx81_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx81_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx81_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx81_1
                        add              edx, 1
                                                                                        jmp   .Lx81_2
.Lx81_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx81_0
.Lx81_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax
                                                                                        jmp   n12_match_assign_cond_α
n11_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n15_match_assign_imm_β
#-----------------------------------------------------------------------------------------------------------------------
n12_match_assign_cond_α:
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
                                                                                        jmp   n9_match_release_α
n12_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n11_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n13_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n14_match_len_α
n13_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_len_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx86_240
                        add              rsp, 16
                                                                                        jmp   n7_match_head_β
.Lx86_240:
                        add              r14d, 1
                                                                                        jmp   n15_match_assign_imm_α
n14_match_len_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   n7_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n15_match_assign_imm_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rdi, [rip + .S1]
                        mov              esi, eax
                        mov              edx, r14d
                        mov              ecx, 1
                        call             rt_cap_open@PLT
                        test             rax, rax
                                                                                        je    .Lx88_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx88_2]
                        lea              rdx, [rip + .Lx88_3]
                                                                                        jmp   rax
.Lx88_2:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_cap_finish@PLT
                                                                                        jmp   .Lx88_1
.Lx88_3:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_cap_finish@PLT
.Lx88_1:
                                                                                        jmp   n10_match_assign_save_α
n15_match_assign_imm_β:
                                                                                        jmp   n14_match_len_β
#=======================================================================================================================
# 	OUTPUT = 'S:' W ':' V
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n17_var_α
n16_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n24_lit_string_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "S:"
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]                    # W
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n18_binop_α
n17_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n19_lit_string_α
n18_binop_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n20_binop_α
n19_lit_string_β:
                        add              rsp, 16
                        add              rsp, 48
                                                                                        jmp   n24_lit_string_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n21_var_α
n20_binop_β:
                        add              rsp, 16
                        add              rsp, 64
                                                                                        jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # V
                        mov              rdx, qword ptr [1879052296]                    # V
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n22_binop_α
n21_var_β:
                        add              rsp, 16
                        add              rsp, 80
                                                                                        jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n23_assign_α
n22_binop_β:
                        add              rsp, 16
                        add              rsp, 96
                                                                                        jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx96_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 112
                                                                                        jmp   n24_lit_string_α
n23_assign_β:
                        add              rsp, 112
                                                                                        jmp   n24_lit_string_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	V = ','
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n25_assign_α
n24_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n26_lit_string_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # V
                        mov              qword ptr [1879052296], rdx                    # V
                        add              rsp, 16
                                                                                        jmp   n26_lit_string_α
n25_assign_β:
                        add              rsp, 16
                                                                                        jmp   n26_lit_string_α
#=======================================================================================================================
# 	'ab,cd' BREAK(V) . W
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 192
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
                        mov              qword ptr [rsp + 176], 1
                        mov              dword ptr [rsp + 180], 5
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n27_var_α
n26_lit_string_β:
                        add              rsp, 192
                                                                                        jmp   n34_var_α
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "ab,cd"
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [1879052288]                    # V
                        mov              rdx, qword ptr [1879052296]                    # V
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n28_coerce_string_α
n27_var_β:
                        add              rsp, 192
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n28_coerce_string_α:
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 144]
                        mov              rdx, 4522053
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n29_match_head_α
n28_coerce_string_β:
                        add              rsp, 192
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_match_head_α:
                        mov              qword ptr [rsp + 64], r13                      # outer_Σ
                        mov              qword ptr [rsp + 72], r14                      # outer_δ
                        mov              qword ptr [rsp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 88], rax                      # cap_gen
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
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
.Lx104_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n30_match_assign_save_α
n29_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx104_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx104_1
                                                                                        jmp   .Lx104_0
.Lx104_1:
                        mov              r10, qword ptr [1879048192]
.Lx104_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx104_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 192
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n31_match_break_α
n30_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n29_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n31_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rsp + 152]
                        mov              r9d, dword ptr [rsp + 148]
.Lx108_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx108_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n29_match_head_β
.Lx108_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx108_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx108_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx108_1
                        add              edx, 1
                                                                                        jmp   .Lx108_2
.Lx108_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx108_0
.Lx108_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax
                                                                                        jmp   n32_match_assign_cond_α
n31_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n29_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n32_match_assign_cond_α:
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
                                                                                        jmp   n33_match_release_α
n32_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n31_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx112_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx112_9
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
.Lx112_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx112_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx112_1:
                        test             rax, rax
                                                                                        je    .Lx112_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx112_3]
                        lea              rdx, [rip + .Lx112_4]
                                                                                        jmp   rax
.Lx112_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx112_1
.Lx112_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx112_1
.Lx112_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx112_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx112_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 192
                                                                                        jmp   n34_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]                    # W
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n35_assign_α
n34_var_β:
                        add              rsp, 16
                                                                                        jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx114_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n36_lit_string_α
n35_assign_β:
                        add              rsp, 16
                                                                                        jmp   n36_lit_string_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	V = 'd'
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n37_assign_α
n36_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n38_lit_string_α
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # V
                        mov              qword ptr [1879052296], rdx                    # V
                        add              rsp, 16
                                                                                        jmp   n38_lit_string_α
n37_assign_β:
                        add              rsp, 16
                                                                                        jmp   n38_lit_string_α
#=======================================================================================================================
# 	'ab,cd' BREAK(V) . W
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        sub              rsp, 192
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
                        mov              qword ptr [rsp + 176], 1
                        mov              dword ptr [rsp + 180], 5
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n39_var_α
n38_lit_string_β:
                        add              rsp, 192
                                                                                        jmp   n46_var_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "ab,cd"
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [1879052288]                    # V
                        mov              rdx, qword ptr [1879052296]                    # V
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n40_coerce_string_α
n39_var_β:
                        add              rsp, 192
                                                                                        jmp   n46_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_coerce_string_α:
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 144]
                        mov              rdx, 4522053
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n41_match_head_α
n40_coerce_string_β:
                        add              rsp, 192
                                                                                        jmp   n46_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_match_head_α:
                        mov              qword ptr [rsp + 64], r13                      # outer_Σ
                        mov              qword ptr [rsp + 72], r14                      # outer_δ
                        mov              qword ptr [rsp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 88], rax                      # cap_gen
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
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
.Lx122_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n42_match_assign_save_α
n41_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx122_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx122_1
                                                                                        jmp   .Lx122_0
.Lx122_1:
                        mov              r10, qword ptr [1879048192]
.Lx122_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx122_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 192
                                                                                        jmp   n46_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n43_match_break_α
n42_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n41_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n43_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rsp + 152]
                        mov              r9d, dword ptr [rsp + 148]
.Lx126_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx126_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n41_match_head_β
.Lx126_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx126_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx126_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx126_1
                        add              edx, 1
                                                                                        jmp   .Lx126_2
.Lx126_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx126_0
.Lx126_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax
                                                                                        jmp   n44_match_assign_cond_α
n43_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n41_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n44_match_assign_cond_α:
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
                                                                                        jmp   n45_match_release_α
n44_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n43_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n45_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx130_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx130_9
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
.Lx130_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx130_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx130_1:
                        test             rax, rax
                                                                                        je    .Lx130_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx130_3]
                        lea              rdx, [rip + .Lx130_4]
                                                                                        jmp   rax
.Lx130_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx130_1
.Lx130_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx130_1
.Lx130_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx130_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx130_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 192
                                                                                        jmp   n46_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]                    # W
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n47_assign_α
n46_var_β:
                        add              rsp, 16
                                                                                        jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx132_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   n48_lit_string_α
n47_assign_β:
                        add              rsp, 16
                                                                                        jmp   n48_lit_string_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "OUTPUT"
#=======================================================================================================================
# 	A = 'q'
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n49_assign_α
n48_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n50_lit_string_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # A
                        mov              qword ptr [1879052328], rdx                    # A
                        add              rsp, 16
                                                                                        jmp   n50_lit_string_α
n49_assign_β:
                        add              rsp, 16
                                                                                        jmp   n50_lit_string_α
#=======================================================================================================================
# 	A = 'x'
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n51_assign_α
n50_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n52_lit_string_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # A
                        mov              qword ptr [1879052328], rdx                    # A
                        add              rsp, 16
                                                                                        jmp   n52_lit_string_α
n51_assign_β:
                        add              rsp, 16
                                                                                        jmp   n52_lit_string_α
#=======================================================================================================================
# 	'axyb' BREAK(A 'y') . W
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        sub              rsp, 224
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
                        mov              qword ptr [rsp + 208], 1
                        mov              dword ptr [rsp + 212], 4
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n53_var_α
n52_lit_string_β:
                        add              rsp, 224
                                                                                        jmp   n62_var_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "axyb"
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        mov              rax, qword ptr [1879052320]                    # A
                        mov              rdx, qword ptr [1879052328]                    # A
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                                                                                        jmp   n54_lit_string_α
n53_var_β:
                        add              rsp, 224
                                                                                        jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rsp + 192], 1
                        mov              dword ptr [rsp + 196], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n55_binop_α
n54_lit_string_β:
                        add              rsp, 224
                                                                                        jmp   n62_var_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n55_binop_α:
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n56_coerce_string_α
n55_binop_β:
                        add              rsp, 224
                                                                                        jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_string_α:
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 144]
                        mov              rdx, 4522053
                        call             rt_coerce_str_d@PLT
                                                                                        jmp   n57_match_head_α
n56_coerce_string_β:
                        add              rsp, 224
                                                                                        jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n57_match_head_α:
                        mov              qword ptr [rsp + 64], r13                      # outer_Σ
                        mov              qword ptr [rsp + 72], r14                      # outer_δ
                        mov              qword ptr [rsp + 80], r15                      # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rsp + 88], rax                      # cap_gen
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
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
.Lx144_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   n58_match_assign_save_α
n57_match_head_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx144_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx144_1
                                                                                        jmp   .Lx144_0
.Lx144_1:
                        mov              r10, qword ptr [1879048192]
.Lx144_2:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx144_2
                        mov              rax, qword ptr [r10 + 16]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [r10 + 8]
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 224
                                                                                        jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n58_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n59_match_break_α
n58_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n57_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n59_match_break_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              r8, qword ptr [rsp + 152]
                        mov              r9d, dword ptr [rsp + 148]
.Lx148_0:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jl    .Lx148_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n57_match_head_β
.Lx148_240:
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              edx, 0
.Lx148_2:
                        cmp              edx, r9d
                                                                                        jge   .Lx148_3
                        movzx            edi, byte ptr [r8 + rdx]
                        cmp              esi, edi
                                                                                        je    .Lx148_1
                        add              edx, 1
                                                                                        jmp   .Lx148_2
.Lx148_3:
                        add              dword ptr [rsp + 0], 1
                                                                                        jmp   .Lx148_0
.Lx148_1:
                        mov              eax, r14d
                        add              eax, dword ptr [rsp + 0]
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, eax
                                                                                        jmp   n60_match_assign_cond_α
n59_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n57_match_head_β
#-----------------------------------------------------------------------------------------------------------------------
n60_match_assign_cond_α:
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
                                                                                        jmp   n61_match_release_α
n60_match_assign_cond_β:
                        mov              rax, qword ptr [1879048192]
                        sub              rax, 24
                        mov              qword ptr [1879048192], rax
                                                                                        jmp   n59_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n61_match_release_α:
                        mov              r10, qword ptr [1879048192]
.Lx152_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx152_9
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
.Lx152_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx152_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx152_1:
                        test             rax, rax
                                                                                        je    .Lx152_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx152_3]
                        lea              rdx, [rip + .Lx152_4]
                                                                                        jmp   rax
.Lx152_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx152_1
.Lx152_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx152_1
.Lx152_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r10, qword ptr [1879048192]
.Lx152_6:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx152_6
                        mov              qword ptr [1879048192], r10
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80]
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_match_ctx_restore@PLT
                        add              rsp, 224
                                                                                        jmp   n62_var_α
#=======================================================================================================================
# 	OUTPUT = W
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # W
                        mov              rdx, qword ptr [1879052312]                    # W
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n63_assign_α
n62_var_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx154_0]
                        call             NV_SET_fn@PLT
                        add              rsp, 16
                                                                                        jmp   main_γ
n63_assign_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
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
                        .section         .rodata
.S0:                    .string          "W"
.S1:                    .string          "V"
                        .text
                        .section         .note.GNU-stack,"",@progbits
