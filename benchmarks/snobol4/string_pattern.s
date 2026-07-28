                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 160
                        mov              [rsp + 136], rcx
                        mov              [rsp + 144], rdx
                        mov              [rsp + 152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], r8
                        mov              dword ptr [rsp + 120], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n0_match_sequence_β]
                        mov              qword ptr [rsp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_sequence_α:
                                                                                        jmp   n1_match_assign_save_α
n0_match_sequence_as:
                                                                                        jmp   proc_PAT$0_γ
n0_match_sequence_β:
                                                                                        jmp   n3_match_lit_β
n0_match_sequence_af:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n4_match_break_α
n1_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n3_match_lit_α
n2_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n4_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n2_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n2_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$0_γ
n3_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n2_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx14_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx14_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx14_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx14_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx14_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx14_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx14_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx14_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx14_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx14_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx14_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx14_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx14_1
                        add              ecx, 1
                                                                                        jmp   .Lx14_0
.Lx14_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n2_match_assign_cond_α
n4_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 120]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 128], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 120]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 120], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
8:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rsp + 112]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, [rbp + 136]
                        mov              rbp, [rbp + 152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 144]
                        lea              rsp, [rbp + 160]
                        mov              rbp, [rbp + 152]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 128
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "PAT"
.Lgvan1:                .string          "WORD"
.Lgvan2:                .string          "T1"
.Lgvan3:                .string          "ITER"
.Lgvan4:                .string          "S"
.Lgvan5:                .string          "RESULT"
.Lgvan6:                .string          "T2"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 7
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 7
                        call             gva_register@PLT
                        mov              r12, qword ptr [1879048192]
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
                        sub              rsp, 856
                        mov              rdi, rsp
                        mov              ecx, 856
                        xor              eax, eax
                        rep stosb
main_α_body:
#=======================================================================================================================
#     &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rsp + 64], 1
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n19_lit_integer_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n16_goto_α:
                                                                                        jmp   n20_var_α
n16_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_goto_α:
                                                                                        jmp   n21_var_α
n17_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_goto_α:
                                                                                        jmp   n22_call_α
n18_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rsp + 80], 6
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n23_call_α
.Lx71_0:
                        .quad            1
#=======================================================================================================================
# OUTER   ITER = LT(ITER, 500000) ITER + 1   :F(DONE)
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                                                                                        jmp   n24_lit_integer_α
#=======================================================================================================================
# INNER   S PAT = ''                          :F(OUTER)
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                                                                                        jmp   n25_match_head_α
#=======================================================================================================================
# DONE    T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n22_call_α:
                        .section         .rodata
.Lrkfn75:               .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]
                        lea              rsi, [rsp + 704]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n27_lit_string_α
                                                                                        jmp   n26_assign_α
n22_call_β:
                                                                                        jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn77:               .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn77]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n28_lit_string_α
                                                                                        jmp   n28_lit_string_α
n23_call_β:
                                                                                        jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rsp + 384], 6
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n29_op75_α
.Lx78_0:
                        .quad            500000
#-----------------------------------------------------------------------------------------------------------------------
n25_match_head_α:
                        mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rsp + 544], r12
                        mov              qword ptr [rsp + 528], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 520], rax
                        mov              dword ptr [rsp + 512], 0
.Lx80_0:
                        mov              r14d, dword ptr [rsp + 512]
                                                                                        jmp   n30_match_defer_α
n25_match_head_β:
                        add              dword ptr [rsp + 512], 1
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, r15d
                                                                                        jg    .Lx80_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx80_1
                                                                                        jmp   .Lx80_0
.Lx80_1:
                        mov              rax, qword ptr [rsp + 520]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 528]
                        mov              r12, qword ptr [rsp + 544]
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n27_lit_string_α
#=======================================================================================================================
#     OUTPUT = "result: " RESULT
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n31_var_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "result: "
#=======================================================================================================================
#     &STLIMIT = 1000000000
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rsp + 160], 1
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n32_lit_integer_α
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n29_op75_α:
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 7
                                                                                        je    .Lx85_1
                        cmp              eax, 6
                                                                                        jne   .Lx85_0
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 6
                                                                                        jne   .Lx85_0
.Lx85_1:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n33_op75_α
.Lx85_0:
                        lea              rdi, [rsp + 400]
                        lea              rsi, [rsp + 384]
                        lea              rdx, [rsp + 368]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n33_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n30_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx86_11
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        cmp              eax, 3
                                                                                        jne   .Lx86_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx86_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx86_10
.Lx86_9:
                        xor              eax, eax
.Lx86_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx86_11:
                        test             rax, rax
                                                                                        jz    .Lx86_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx86_4]
                        lea              rdx, [rip + .Lx86_5]
                                                                                        jmp   rax
.Lx86_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rsp + 512], eax
                                                                                        jmp   n34_match_release_α
.Lx86_5:
                                                                                        jmp   n25_match_head_β
.Lx86_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx86_2:
                        test             rax, rax
                                                                                        je    .Lx86_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx86_7]
                        lea              rdx, [rip + .Lx86_8]
                                                                                        jmp   rax
.Lx86_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx86_2
.Lx86_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx86_2
.Lx86_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n25_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx86_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n34_match_release_α
.Lx86_6:
                        add              rsp, 16
                                                                                        jmp   n25_match_head_β
n30_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n35_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:
                        mov              qword ptr [rsp + 176], 6
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n37_call_α
.Lx88_0:
                        .quad            1000000000
#-----------------------------------------------------------------------------------------------------------------------
n33_op75_α:
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 7
                                                                                        je    .Lx90_1
                        cmp              eax, 6
                                                                                        jne   .Lx90_0
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 6
                                                                                        jne   .Lx90_0
.Lx90_1:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n38_op77_α
.Lx90_0:
                        lea              rdi, [rsp + 384]
                        lea              rsi, [rsp + 400]
                        lea              rdx, [rsp + 352]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n38_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n34_match_release_α:
                        mov              rax, qword ptr [rsp + 520]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              qword ptr [rsp + 536], r14
                        mov              rsp, qword ptr [rsp + 528]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx92_1:
                        test             rax, rax
                                                                                        je    .Lx92_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx92_3]
                        lea              rdx, [rip + .Lx92_4]
                                                                                        jmp   rax
.Lx92_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx92_1
.Lx92_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx92_1
.Lx92_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rsp + 544]
                                                                                        jmp   n39_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n40_assign_α
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n41_var_α
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n37_call_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn96:               .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn96]
                        lea              rsi, [rsp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n42_lit_string_α
                                                                                        jmp   n42_lit_string_α
n37_call_β:
                                                                                        jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n38_op77_α:
                        lea              rdi, [rsp + 368]
                        lea              rsi, [rsp + 352]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n22_call_α
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                                                                                        jmp   n43_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rsp + 576], 1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n44_match_replace_α
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx100_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n36_lit_string_α
.Lx100_0:
                        .quad            .Lx100_0_s
.Lx100_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n45_var_α
#=======================================================================================================================
#     PAT = BREAK(',') . WORD ','
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rsp + 256], 1
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n46_call_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                                                                                        jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n44_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx105_0]
                        mov              rsi, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              ecx, dword ptr [rsp + 512]
                        mov              r8, qword ptr [rsp + 536]
                        lea              r9, [rsp + 576]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx105_1
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "S"
.Lx105_1:
                                                                                        jmp   n48_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n49_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lrkfn108:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn108]
                        lea              rsi, [rsp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n51_call_α
                                                                                        jmp   n50_assign_α
n46_call_β:
                                                                                        jmp   n51_call_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rsp + 448], 6
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n52_binop_α
.Lx109_0:
                        .quad            1
#=======================================================================================================================
#     RESULT = RESULT WORD               :(INNER)
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx111_0
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 100
                                                                                        je    .Lx111_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx111_2
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, 6
                                                                                        jne   .Lx111_2
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 8]
                        sub              rax, rcx
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n54_binop_α
.Lx111_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        lea              r9, [rsp + 16]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx111_2
                        add              rsp, 16
                                                                                        jmp   n54_binop_α
.Lx111_2:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx111_240
                        add              rsp, 48
                                                                                        jmp   main_γ
.Lx111_240:
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n54_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n51_call_α
#=======================================================================================================================
#     T1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n51_call_α:
                        .section         .rodata
.Lrkfn114:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn114]
                        lea              rsi, [rsp + 288]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n56_lit_integer_α
                                                                                        jmp   n55_assign_α
n51_call_β:
                                                                                        jmp   n56_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n52_binop_α:
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 100
                                                                                        je    .Lx115_0
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 6
                                                                                        jne   .Lx115_2
.Lx115_1:
                        mov              rax, qword ptr [rsp + 440]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 416], 6
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n57_binop_α
.Lx115_0:
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              r8d, 0
                        lea              r9, [rsp + 416]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n57_binop_α
.Lx115_2:
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n22_call_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                                                                                        jmp   n57_binop_α
n52_binop_β:
                                                                                        jmp   n22_call_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n58_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n59_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n56_lit_integer_α
#=======================================================================================================================
#     ITER = 0
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n60_assign_α
.Lx119_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                                                                                        jmp   n61_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n62_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:
                        mov              rsi, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx122_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   main_γ
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n21_var_α
#=======================================================================================================================
#     S = 'alpha,beta,gamma,delta,epsilon,zeta,eta,theta,iota,kappa,'
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n64_assign_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "alpha,beta,gamma,delta,epsilon,zeta,eta,theta,iota,kappa,"
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n65_lit_string_α
#=======================================================================================================================
#     RESULT = ''
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n66_assign_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 856
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 856
                        ret
                        .section         .rodata
.S0:                    .string          "WORD"
.S1:                    .string          "PAT"
                        .text
                        .section         .note.GNU-stack,"",@progbits
