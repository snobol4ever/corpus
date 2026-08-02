                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_last_name$2F1_α
proc_last_name$2F1_α:
proc_last_name$2F1_α_body:
                        lea              rax, [rip + n4_suspend_β]
                        mov              qword ptr [rbp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx26_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx26_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx26_101
.Lx26_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx26_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx26_240
                        add              rsp, 32
                                                                                        jmp   proc_last_name$2F1_ω
.Lx26_240:
                                                                                        jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   proc_last_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 6
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n3_call_builtin_prolog_α
.Lx29_0:
                        .quad            .Lx29_0_s
.Lx29_0_s:
                        .string          "carter"
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              rsi, qword ptr [rip + .Lx30_2]
                                                                                        jmp   .Lx30_3
.Lx30_2:
                        .quad            .Lx30_2_s
.Lx30_2_s:
                        .string          "carter"
.Lx30_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n5_call_builtin_prolog_α
                                                                                        jmp   n4_suspend_α
n3_call_builtin_prolog_β:
                                                                                        jmp   n5_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_suspend_α:
                        lea              rax, [rip + n4_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 32
                                                                                        jmp   proc_last_name$2F1_γ
n4_suspend_β:
                                                                                        jmp   n5_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    proc_last_name$2F1_ω
                                                                                        jmp   n6_var_ref_α
n5_call_builtin_prolog_β:
                                                                                        jmp   proc_last_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 560], 2                       # result
                        mov              dword ptr [rbp + 564], 6
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n8_call_builtin_prolog_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "carver"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              rsi, qword ptr [rip + .Lx37_2]
                                                                                        jmp   .Lx37_3
.Lx37_2:
                        .quad            .Lx37_2_s
.Lx37_2_s:
                        .string          "carver"
.Lx37_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n10_call_builtin_prolog_α
                                                                                        jmp   n9_suspend_α
n8_call_builtin_prolog_β:
                                                                                        jmp   n10_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_suspend_α:
                        lea              rax, [rip + n9_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_last_name$2F1_γ
n9_suspend_β:
                                                                                        jmp   n10_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    proc_last_name$2F1_ω
                                                                                        jmp   n11_var_ref_α
n10_call_builtin_prolog_β:
                                                                                        jmp   proc_last_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 432], 2                       # result
                        mov              dword ptr [rbp + 436], 5
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n13_call_builtin_prolog_α
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "clark"
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              rsi, qword ptr [rip + .Lx44_2]
                                                                                        jmp   .Lx44_3
.Lx44_2:
                        .quad            .Lx44_2_s
.Lx44_2_s:
                        .string          "clark"
.Lx44_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n15_call_builtin_prolog_α
                                                                                        jmp   n14_suspend_α
n13_call_builtin_prolog_β:
                                                                                        jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_suspend_α:
                        lea              rax, [rip + n14_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_last_name$2F1_γ
n14_suspend_β:
                                                                                        jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    proc_last_name$2F1_ω
                                                                                        jmp   n16_var_ref_α
n15_call_builtin_prolog_β:
                                                                                        jmp   proc_last_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 7
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n18_call_builtin_prolog_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "clayton"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              rsi, qword ptr [rip + .Lx51_2]
                                                                                        jmp   .Lx51_3
.Lx51_2:
                        .quad            .Lx51_2_s
.Lx51_2_s:
                        .string          "clayton"
.Lx51_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n20_call_builtin_prolog_α
                                                                                        jmp   n19_suspend_α
n18_call_builtin_prolog_β:
                                                                                        jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_suspend_α:
                        lea              rax, [rip + n19_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_last_name$2F1_γ
n19_suspend_β:
                                                                                        jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    proc_last_name$2F1_ω
                                                                                        jmp   n21_var_ref_α
n20_call_builtin_prolog_β:
                                                                                        jmp   proc_last_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 6
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n23_call_builtin_prolog_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "cramer"
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              rsi, qword ptr [rip + .Lx58_2]
                                                                                        jmp   .Lx58_3
.Lx58_2:
                        .quad            .Lx58_2_s
.Lx58_2_s:
                        .string          "cramer"
.Lx58_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n25_call_builtin_prolog_α
                                                                                        jmp   n24_suspend_α
n23_call_builtin_prolog_β:
                                                                                        jmp   n25_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_suspend_α:
                        lea              rax, [rip + n24_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_last_name$2F1_γ
n24_suspend_β:
                                                                                        jmp   n25_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_last_name$2F1_ω
                                                                                        jmp   proc_last_name$2F1_ω
n25_call_builtin_prolog_β:
                                                                                        jmp   proc_last_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_last_name$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_last_name$2F1_β:
                                                                                        jmp   qword ptr [rbp + 704]
#-----------------------------------------------------------------------------------------------------------------------
proc_last_name$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_last_name$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj1$2F0_α
proc_$disj1$2F0_α:
proc_$disj1$2F0_α_body:
                        lea              rax, [rip + n64_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx68_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx68_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx68_101
.Lx68_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx68_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj1$2F0_ω
                                                                                        jmp   n63_call_proc_staged_α
n62_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n63_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              edi, 2                                         # idx
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx70_1
                        lea              rcx, [rip + .Lx70_3]
                        lea              rdx, [rip + .Lx70_4]
                                                                                        jmp   rax
.Lx70_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx70_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx70_2
.Lx70_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx70_2
.Lx70_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx70_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx70_2
.Lx70_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx70_2
.Lx70_1:
                        call             rt_faildescr@PLT
.Lx70_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n65_call_builtin_prolog_α
                                                                                        jmp   n64_suspend_α
n63_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "puzzle/0"
#-----------------------------------------------------------------------------------------------------------------------
n64_suspend_α:
                        lea              rax, [rip + n64_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj1$2F0_γ
n64_suspend_β:
                                                                                        jmp   n63_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj1$2F0_ω
                                                                                        jmp   n66_suspend_α
n65_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n66_suspend_α:
                        lea              rax, [rip + n66_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj1$2F0_γ
n66_suspend_β:
                                                                                        jmp   n67_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj1$2F0_ω
                                                                                        jmp   proc_$disj1$2F0_ω
n67_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_puzzle$2F0_α
proc_puzzle$2F0_α:
proc_puzzle$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_prolog_α:
                        sub              rsp, 2016
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
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx146_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx146_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx146_101
.Lx146_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx146_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx146_240
                        add              rsp, 2016
                                                                                        jmp   proc_puzzle$2F0_ω
.Lx146_240:
                                                                                        jmp   n78_var_ref_α
n77_call_builtin_prolog_β:
                        add              rsp, 2016
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n79_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_proc_staged_α:
                        mov              qword ptr [rbp + 2080], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx150_20
                        mov              rax, qword ptr [rbp + 2112]
                        mov              rdx, qword ptr [rbp + 2120]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx150_21
.Lx150_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2112]                    # v
                        mov              rdx, qword ptr [rbp + 2120]                    # v
                        call             rt_arg_stage@PLT
.Lx150_21:
                        mov              edi, 0                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx150_1
                        lea              rcx, [rip + .Lx150_3]
                        lea              rdx, [rip + .Lx150_4]
                                                                                        jmp   rax
.Lx150_3:
                        mov              qword ptr [rbp + 2088], rsp
                        mov              rax, qword ptr [rbp + 2080]
                        test             rax, rax
                                                                                        jne   .Lx150_5
                        mov              qword ptr [rbp + 2080], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx150_2
.Lx150_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx150_2
.Lx150_4:
                        mov              rax, qword ptr [rbp + 2080]
                        test             rax, rax
                                                                                        jne   .Lx150_6
                        mov              qword ptr [rbp + 2080], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx150_2
.Lx150_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx150_2
.Lx150_1:
                        call             rt_faildescr@PLT
.Lx150_2:
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx150_240
                        add              rsp, 2016
                                                                                        jmp   n145_call_builtin_prolog_α
.Lx150_240:
                                                                                        jmp   n80_var_ref_α
n79_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2088]
                                                                                        jmp   qword ptr [rsp]
.Lx150_0:
                        .quad            .Lx150_0_s
.Lx150_0_s:
                        .string          "last_name/1"
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2192]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n81_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_proc_staged_α:
                        mov              qword ptr [rbp + 2000], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx154_20
                        mov              rax, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx154_21
.Lx154_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2032]                    # v
                        mov              rdx, qword ptr [rbp + 2040]                    # v
                        call             rt_arg_stage@PLT
.Lx154_21:
                        mov              edi, 0                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx154_1
                        lea              rcx, [rip + .Lx154_3]
                        lea              rdx, [rip + .Lx154_4]
                                                                                        jmp   rax
.Lx154_3:
                        mov              qword ptr [rbp + 2008], rsp
                        mov              rax, qword ptr [rbp + 2000]
                        test             rax, rax
                                                                                        jne   .Lx154_5
                        mov              qword ptr [rbp + 2000], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx154_2
.Lx154_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx154_2
.Lx154_4:
                        mov              rax, qword ptr [rbp + 2000]
                        test             rax, rax
                                                                                        jne   .Lx154_6
                        mov              qword ptr [rbp + 2000], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx154_2
.Lx154_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx154_2
.Lx154_1:
                        call             rt_faildescr@PLT
.Lx154_2:
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 104
                                                                                        je    n79_call_proc_staged_β
                                                                                        jmp   n82_var_ref_α
n81_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2008]
                                                                                        jmp   qword ptr [rsp]
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "last_name/1"
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2176]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n83_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n83_call_proc_staged_α:
                        mov              qword ptr [rbp + 1920], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx158_20
                        mov              rax, qword ptr [rbp + 1952]
                        mov              rdx, qword ptr [rbp + 1960]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx158_21
.Lx158_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1952]                    # v
                        mov              rdx, qword ptr [rbp + 1960]                    # v
                        call             rt_arg_stage@PLT
.Lx158_21:
                        mov              edi, 0                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx158_1
                        lea              rcx, [rip + .Lx158_3]
                        lea              rdx, [rip + .Lx158_4]
                                                                                        jmp   rax
.Lx158_3:
                        mov              qword ptr [rbp + 1928], rsp
                        mov              rax, qword ptr [rbp + 1920]
                        test             rax, rax
                                                                                        jne   .Lx158_5
                        mov              qword ptr [rbp + 1920], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx158_2
.Lx158_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx158_2
.Lx158_4:
                        mov              rax, qword ptr [rbp + 1920]
                        test             rax, rax
                                                                                        jne   .Lx158_6
                        mov              qword ptr [rbp + 1920], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx158_2
.Lx158_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx158_2
.Lx158_1:
                        call             rt_faildescr@PLT
.Lx158_2:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 104
                                                                                        je    n81_call_proc_staged_β
                                                                                        jmp   n84_var_ref_α
n83_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1928]
                                                                                        jmp   qword ptr [rsp]
.Lx158_0:
                        .quad            .Lx158_0_s
.Lx158_0_s:
                        .string          "last_name/1"
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n85_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_proc_staged_α:
                        mov              qword ptr [rbp + 1840], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx162_20
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx162_21
.Lx162_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1872]                    # v
                        mov              rdx, qword ptr [rbp + 1880]                    # v
                        call             rt_arg_stage@PLT
.Lx162_21:
                        mov              edi, 0                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx162_1
                        lea              rcx, [rip + .Lx162_3]
                        lea              rdx, [rip + .Lx162_4]
                                                                                        jmp   rax
.Lx162_3:
                        mov              qword ptr [rbp + 1848], rsp
                        mov              rax, qword ptr [rbp + 1840]
                        test             rax, rax
                                                                                        jne   .Lx162_5
                        mov              qword ptr [rbp + 1840], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx162_2
.Lx162_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx162_2
.Lx162_4:
                        mov              rax, qword ptr [rbp + 1840]
                        test             rax, rax
                                                                                        jne   .Lx162_6
                        mov              qword ptr [rbp + 1840], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx162_2
.Lx162_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx162_2
.Lx162_1:
                        call             rt_faildescr@PLT
.Lx162_2:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 104
                                                                                        je    n83_call_proc_staged_β
                                                                                        jmp   n86_var_ref_α
n85_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1848]
                                                                                        jmp   qword ptr [rsp]
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "last_name/1"
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n87_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_proc_staged_α:
                        mov              qword ptr [rbp + 1760], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx166_20
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx166_21
.Lx166_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1792]                    # v
                        mov              rdx, qword ptr [rbp + 1800]                    # v
                        call             rt_arg_stage@PLT
.Lx166_21:
                        mov              edi, 0                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx166_1
                        lea              rcx, [rip + .Lx166_3]
                        lea              rdx, [rip + .Lx166_4]
                                                                                        jmp   rax
.Lx166_3:
                        mov              qword ptr [rbp + 1768], rsp
                        mov              rax, qword ptr [rbp + 1760]
                        test             rax, rax
                                                                                        jne   .Lx166_5
                        mov              qword ptr [rbp + 1760], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx166_2
.Lx166_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx166_2
.Lx166_4:
                        mov              rax, qword ptr [rbp + 1760]
                        test             rax, rax
                                                                                        jne   .Lx166_6
                        mov              qword ptr [rbp + 1760], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx166_2
.Lx166_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx166_2
.Lx166_1:
                        call             rt_faildescr@PLT
.Lx166_2:
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 104
                                                                                        je    n85_call_proc_staged_β
                                                                                        jmp   n88_var_ref_α
n87_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1768]
                                                                                        jmp   qword ptr [rsp]
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "last_name/1"
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n89_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2192]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n90_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2176]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n91_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n92_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n93_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx178_20
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx178_21
.Lx178_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1648]                    # v
                        mov              rdx, qword ptr [rbp + 1656]                    # v
                        call             rt_arg_stage@PLT
.Lx178_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx178_22
                        mov              rax, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx178_23
.Lx178_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1664]                    # v
                        mov              rdx, qword ptr [rbp + 1672]                    # v
                        call             rt_arg_stage@PLT
.Lx178_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx178_24
                        mov              rax, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx178_25
.Lx178_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 1680]                    # v
                        mov              rdx, qword ptr [rbp + 1688]                    # v
                        call             rt_arg_stage@PLT
.Lx178_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx178_26
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx178_27
.Lx178_26:
                        mov              edi, 3                                         # idx
                        mov              rsi, qword ptr [rbp + 1696]                    # v
                        mov              rdx, qword ptr [rbp + 1704]                    # v
                        call             rt_arg_stage@PLT
.Lx178_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx178_28
                        mov              rax, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx178_29
.Lx178_28:
                        mov              edi, 4                                         # idx
                        mov              rsi, qword ptr [rbp + 1712]                    # v
                        mov              rdx, qword ptr [rbp + 1720]                    # v
                        call             rt_arg_stage@PLT
.Lx178_29:
                        mov              edi, 4                                         # idx
                        mov              esi, 5                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx178_1
                        lea              rcx, [rip + .Lx178_3]
                        lea              rdx, [rip + .Lx178_4]
                                                                                        jmp   rax
.Lx178_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx178_2
.Lx178_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx178_2
.Lx178_1:
                        call             rt_faildescr@PLT
.Lx178_2:
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 104
                                                                                        je    n87_call_proc_staged_β
                                                                                        jmp   n94_var_ref_α
n93_call_proc_staged_β:
                                                                                        jmp   n87_call_proc_staged_β
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "all_diff5/5"
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2192]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rbp + 1520], 2                      # result
                        mov              dword ptr [rbp + 1524], 7
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n96_call_builtin_prolog_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "clayton"
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1472]
                        mov              rsi, qword ptr [rip + .Lx182_2]
                                                                                        jmp   .Lx182_3
.Lx182_2:
                        .quad            .Lx182_2_s
.Lx182_2_s:
                        .string          "clayton"
.Lx182_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 104
                                                                                        je    n93_call_proc_staged_β
                                                                                        jmp   n97_var_ref_α
n96_call_builtin_prolog_β:
                                                                                        jmp   n93_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2176]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n98_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        mov              qword ptr [rbp + 1440], 2                      # result
                        mov              dword ptr [rbp + 1444], 6
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n99_call_builtin_prolog_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "carver"
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        mov              rsi, qword ptr [rip + .Lx186_2]
                                                                                        jmp   .Lx186_3
.Lx186_2:
                        .quad            .Lx186_2_s
.Lx186_2_s:
                        .string          "carver"
.Lx186_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 104
                                                                                        je    n93_call_proc_staged_β
                                                                                        jmp   n100_lit_string_α
n99_call_builtin_prolog_β:
                                                                                        jmp   n93_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        mov              qword ptr [rbp + 1312], 2                      # result
                        mov              dword ptr [rbp + 1316], 6
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n101_var_ref_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "carter"
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n102_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n103_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n104_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_proc_staged_α:
                        mov              qword ptr [rbp + 1280], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx195_20
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx195_21
.Lx195_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1312]                    # v
                        mov              rdx, qword ptr [rbp + 1320]                    # v
                        call             rt_arg_stage@PLT
.Lx195_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx195_22
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx195_23
.Lx195_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1328]                    # v
                        mov              rdx, qword ptr [rbp + 1336]                    # v
                        call             rt_arg_stage@PLT
.Lx195_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx195_24
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx195_25
.Lx195_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 1344]                    # v
                        mov              rdx, qword ptr [rbp + 1352]                    # v
                        call             rt_arg_stage@PLT
.Lx195_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx195_26
                        mov              rax, qword ptr [rbp + 1360]
                        mov              rdx, qword ptr [rbp + 1368]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx195_27
.Lx195_26:
                        mov              edi, 3                                         # idx
                        mov              rsi, qword ptr [rbp + 1360]                    # v
                        mov              rdx, qword ptr [rbp + 1368]                    # v
                        call             rt_arg_stage@PLT
.Lx195_27:
                        mov              edi, 5                                         # idx
                        mov              esi, 4                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx195_1
                        lea              rcx, [rip + .Lx195_3]
                        lea              rdx, [rip + .Lx195_4]
                                                                                        jmp   rax
.Lx195_3:
                        mov              qword ptr [rbp + 1288], rsp
                        mov              rax, qword ptr [rbp + 1280]
                        test             rax, rax
                                                                                        jne   .Lx195_5
                        mov              qword ptr [rbp + 1280], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx195_2
.Lx195_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx195_2
.Lx195_4:
                        mov              rax, qword ptr [rbp + 1280]
                        test             rax, rax
                                                                                        jne   .Lx195_6
                        mov              qword ptr [rbp + 1280], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx195_2
.Lx195_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx195_2
.Lx195_1:
                        call             rt_faildescr@PLT
.Lx195_2:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 104
                                                                                        je    n93_call_proc_staged_β
                                                                                        jmp   n105_lit_string_α
n104_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1288]
                                                                                        jmp   qword ptr [rsp]
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "member_of3/4"
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 5
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n106_var_ref_α
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "clark"
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n107_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n108_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n109_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_proc_staged_α:
                        mov              qword ptr [rbp + 1104], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx204_20
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx204_21
.Lx204_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1136]                    # v
                        mov              rdx, qword ptr [rbp + 1144]                    # v
                        call             rt_arg_stage@PLT
.Lx204_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx204_22
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx204_23
.Lx204_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1152]                    # v
                        mov              rdx, qword ptr [rbp + 1160]                    # v
                        call             rt_arg_stage@PLT
.Lx204_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx204_24
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx204_25
.Lx204_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 1168]                    # v
                        mov              rdx, qword ptr [rbp + 1176]                    # v
                        call             rt_arg_stage@PLT
.Lx204_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx204_26
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx204_27
.Lx204_26:
                        mov              edi, 3                                         # idx
                        mov              rsi, qword ptr [rbp + 1184]                    # v
                        mov              rdx, qword ptr [rbp + 1192]                    # v
                        call             rt_arg_stage@PLT
.Lx204_27:
                        mov              edi, 5                                         # idx
                        mov              esi, 4                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx204_1
                        lea              rcx, [rip + .Lx204_3]
                        lea              rdx, [rip + .Lx204_4]
                                                                                        jmp   rax
.Lx204_3:
                        mov              qword ptr [rbp + 1112], rsp
                        mov              rax, qword ptr [rbp + 1104]
                        test             rax, rax
                                                                                        jne   .Lx204_5
                        mov              qword ptr [rbp + 1104], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx204_2
.Lx204_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx204_2
.Lx204_4:
                        mov              rax, qword ptr [rbp + 1104]
                        test             rax, rax
                                                                                        jne   .Lx204_6
                        mov              qword ptr [rbp + 1104], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx204_2
.Lx204_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx204_2
.Lx204_1:
                        call             rt_faildescr@PLT
.Lx204_2:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 104
                                                                                        je    n104_call_proc_staged_β
                                                                                        jmp   n110_lit_string_α
n109_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1112]
                                                                                        jmp   qword ptr [rsp]
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "member_of3/4"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 960], 2                       # result
                        mov              dword ptr [rbp + 964], 6
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n111_var_ref_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "cramer"
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n112_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n113_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n114_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_proc_staged_α:
                        mov              qword ptr [rbp + 928], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx213_20
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx213_21
.Lx213_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 960]                     # v
                        mov              rdx, qword ptr [rbp + 968]                     # v
                        call             rt_arg_stage@PLT
.Lx213_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx213_22
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx213_23
.Lx213_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 976]                     # v
                        mov              rdx, qword ptr [rbp + 984]                     # v
                        call             rt_arg_stage@PLT
.Lx213_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx213_24
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx213_25
.Lx213_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 992]                     # v
                        mov              rdx, qword ptr [rbp + 1000]                    # v
                        call             rt_arg_stage@PLT
.Lx213_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx213_26
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx213_27
.Lx213_26:
                        mov              edi, 3                                         # idx
                        mov              rsi, qword ptr [rbp + 1008]                    # v
                        mov              rdx, qword ptr [rbp + 1016]                    # v
                        call             rt_arg_stage@PLT
.Lx213_27:
                        mov              edi, 5                                         # idx
                        mov              esi, 4                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx213_1
                        lea              rcx, [rip + .Lx213_3]
                        lea              rdx, [rip + .Lx213_4]
                                                                                        jmp   rax
.Lx213_3:
                        mov              qword ptr [rbp + 936], rsp
                        mov              rax, qword ptr [rbp + 928]
                        test             rax, rax
                                                                                        jne   .Lx213_5
                        mov              qword ptr [rbp + 928], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx213_2
.Lx213_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx213_2
.Lx213_4:
                        mov              rax, qword ptr [rbp + 928]
                        test             rax, rax
                                                                                        jne   .Lx213_6
                        mov              qword ptr [rbp + 928], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx213_2
.Lx213_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx213_2
.Lx213_1:
                        call             rt_faildescr@PLT
.Lx213_2:
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 104
                                                                                        je    n109_call_proc_staged_β
                                                                                        jmp   n115_var_ref_α
n114_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 936]
                                                                                        jmp   qword ptr [rsp]
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "member_of3/4"
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n116_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_proc_staged_α:
                        mov              qword ptr [rbp + 800], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx217_20
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx217_21
.Lx217_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 832]                     # v
                        mov              rdx, qword ptr [rbp + 840]                     # v
                        call             rt_arg_stage@PLT
.Lx217_21:
                        mov              edi, 3                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx217_1
                        lea              rcx, [rip + .Lx217_3]
                        lea              rdx, [rip + .Lx217_4]
                                                                                        jmp   rax
.Lx217_3:
                        mov              qword ptr [rbp + 808], rsp
                        mov              rax, qword ptr [rbp + 800]
                        test             rax, rax
                                                                                        jne   .Lx217_5
                        mov              qword ptr [rbp + 800], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx217_2
.Lx217_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx217_2
.Lx217_4:
                        mov              rax, qword ptr [rbp + 800]
                        test             rax, rax
                                                                                        jne   .Lx217_6
                        mov              qword ptr [rbp + 800], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx217_2
.Lx217_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx217_2
.Lx217_1:
                        call             rt_faildescr@PLT
.Lx217_2:
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n114_call_proc_staged_β
                                                                                        jmp   n117_var_ref_α
n116_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 808]
                                                                                        jmp   qword ptr [rsp]
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "$disj0/1"
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n118_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n119_call_builtin_prolog_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "cramer"
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              rsi, qword ptr [rip + .Lx221_2]
                                                                                        jmp   .Lx221_3
.Lx221_2:
                        .quad            .Lx221_2_s
.Lx221_2_s:
                        .string          "cramer"
.Lx221_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n116_call_proc_staged_β
                                                                                        jmp   n120_var_ref_α
n119_call_builtin_prolog_β:
                                                                                        jmp   n116_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n121_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], 5
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n122_call_builtin_prolog_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "clark"
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        mov              rsi, qword ptr [rip + .Lx225_2]
                                                                                        jmp   .Lx225_3
.Lx225_2:
                        .quad            .Lx225_2_s
.Lx225_2_s:
                        .string          "clark"
.Lx225_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n116_call_proc_staged_β
                                                                                        jmp   n123_lit_string_α
n122_call_builtin_prolog_β:
                                                                                        jmp   n116_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rbp + 592], 2                       # result
                        mov              dword ptr [rbp + 596], 5
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n124_call_builtin_prolog_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "Jane="
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn228:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]                         # fn
                        lea              rsi, [rbp + 576]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n116_call_proc_staged_β
                                                                                        jmp   n125_var_α
n124_call_builtin_prolog_β:
                                                                                        jmp   n116_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n126_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn232:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn232]                         # fn
                        lea              rsi, [rbp + 528]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n116_call_proc_staged_β
                                                                                        jmp   n127_lit_string_α
n126_call_builtin_prolog_β:
                                                                                        jmp   n116_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 496], 2                       # result
                        mov              dword ptr [rbp + 500], 8
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n128_call_builtin_prolog_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          " Janice="
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn235:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn235]                         # fn
                        lea              rsi, [rbp + 480]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n116_call_proc_staged_β
                                                                                        jmp   n129_var_α
n128_call_builtin_prolog_β:
                                                                                        jmp   n116_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n130_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn239:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn239]                         # fn
                        lea              rsi, [rbp + 432]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 104
                                                                                        je    n116_call_proc_staged_β
                                                                                        jmp   n131_lit_string_α
n130_call_builtin_prolog_β:
                                                                                        jmp   n116_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 6
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n132_call_builtin_prolog_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          " Jack="
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn242:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn242]                         # fn
                        lea              rsi, [rbp + 384]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n116_call_proc_staged_β
                                                                                        jmp   n133_var_α
n132_call_builtin_prolog_β:
                                                                                        jmp   n116_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n134_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn246:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn246]                         # fn
                        lea              rsi, [rbp + 336]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n116_call_proc_staged_β
                                                                                        jmp   n135_lit_string_α
n134_call_builtin_prolog_β:
                                                                                        jmp   n116_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 8
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n136_call_builtin_prolog_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          " Jasper="
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn249:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn249]                         # fn
                        lea              rsi, [rbp + 288]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n116_call_proc_staged_β
                                                                                        jmp   n137_var_α
n136_call_builtin_prolog_β:
                                                                                        jmp   n116_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn253:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn253]                         # fn
                        lea              rsi, [rbp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n116_call_proc_staged_β
                                                                                        jmp   n139_lit_string_α
n138_call_builtin_prolog_β:
                                                                                        jmp   n116_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 5
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n140_call_builtin_prolog_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          " Jim="
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn256:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]                         # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n116_call_proc_staged_β
                                                                                        jmp   n141_var_α
n140_call_builtin_prolog_β:
                                                                                        jmp   n116_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n142_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n142_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn260:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]                         # fn
                        lea              rsi, [rbp + 144]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n116_call_proc_staged_β
                                                                                        jmp   n143_lit_string_α
n142_call_builtin_prolog_β:
                                                                                        jmp   n116_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:
                        mov              qword ptr [rbp + 112], 2                       # result
                        mov              dword ptr [rbp + 116], 1
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n144_call_builtin_prolog_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn263:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn263]                         # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n116_call_proc_staged_β
                                                                                        jmp   n116_call_proc_staged_β
n144_call_builtin_prolog_β:
                                                                                        jmp   n116_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n145_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   proc_puzzle$2F0_ω
n145_call_builtin_prolog_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F1_α
proc_$disj0$2F1_α:
proc_$disj0$2F1_α_body:
                        lea              rax, [rip + n272_suspend_β]
                        mov              qword ptr [rbp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n265_call_builtin_prolog_α:
                        sub              rsp, 112
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx282_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx282_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx282_101
.Lx282_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx282_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx282_240
                        add              rsp, 112
                                                                                        jmp   proc_$disj0$2F1_ω
.Lx282_240:
                                                                                        jmp   n266_var_ref_α
n265_call_builtin_prolog_β:
                        add              rsp, 112
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n267_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n268_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 416]
                        lea              r8, [rbp + 416]
.Lx287_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx287_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx287_41
                        cmp              esi, 1
                                                                                        jne   .Lx287_55
                        mov              r8, rax
                                                                                        jmp   .Lx287_40
.Lx287_55:
                        cmp              esi, 2
                                                                                        jne   .Lx287_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx287_41
                        mov              r8, rax
                                                                                        jmp   .Lx287_40
.Lx287_56:
                        cmp              eax, 72
                                                                                        jne   .Lx287_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx287_41
                        cmp              rax, r8
                                                                                        je    .Lx287_41
                        mov              r8, rax
                                                                                        jmp   .Lx287_40
.Lx287_41:
                        lea              r9, [rbp + 432]
.Lx287_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx287_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx287_43
                        cmp              esi, 1
                                                                                        jne   .Lx287_57
                        mov              r9, rax
                                                                                        jmp   .Lx287_42
.Lx287_57:
                        cmp              esi, 2
                                                                                        jne   .Lx287_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx287_43
                        mov              r9, rax
                                                                                        jmp   .Lx287_42
.Lx287_58:
                        cmp              eax, 72
                                                                                        jne   .Lx287_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx287_43
                        cmp              rax, r9
                                                                                        je    .Lx287_43
                        mov              r9, rax
                                                                                        jmp   .Lx287_42
.Lx287_43:
                        cmp              r8, r9
                                                                                        je    .Lx287_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx287_44
                        cmp              eax, 104
                                                                                        je    .Lx287_44
                        cmp              eax, 72
                                                                                        jne   .Lx287_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx287_44
                                                                                        jmp   .Lx287_45
.Lx287_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx287_53
                        cmp              eax, 104
                                                                                        je    .Lx287_53
                        cmp              eax, 72
                                                                                        jne   .Lx287_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx287_53
                                                                                        jmp   .Lx287_46
.Lx287_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx287_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx287_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx287_51
.Lx287_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx287_47
                        cmp              eax, 104
                                                                                        je    .Lx287_47
                        cmp              eax, 72
                                                                                        jne   .Lx287_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx287_47
                                                                                        jmp   .Lx287_48
.Lx287_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx287_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx287_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx287_51
.Lx287_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx287_49
                        cmp              edx, 80
                                                                                        je    .Lx287_53
                                                                                        jmp   .Lx287_52
.Lx287_49:
                        cmp              edx, 80
                                                                                        je    .Lx287_52
                        cmp              ecx, 5
                                                                                        je    .Lx287_53
                        cmp              edx, 5
                                                                                        je    .Lx287_53
                        cmp              ecx, 3
                                                                                        jne   .Lx287_50
                        cmp              edx, 3
                                                                                        jne   .Lx287_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx287_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx287_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx287_51
                                                                                        jmp   .Lx287_52
.Lx287_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx287_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx287_53
.Lx287_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx287_54
.Lx287_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx287_54
.Lx287_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx287_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n273_call_builtin_prolog_α
                                                                                        jmp   n269_var_ref_α
n268_call_builtin_prolog_β:
                                                                                        jmp   n273_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n270_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 5
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n271_call_builtin_prolog_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "clark"
#-----------------------------------------------------------------------------------------------------------------------
n271_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              rsi, qword ptr [rip + .Lx291_2]
                                                                                        jmp   .Lx291_3
.Lx291_2:
                        .quad            .Lx291_2_s
.Lx291_2_s:
                        .string          "clark"
.Lx291_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n273_call_builtin_prolog_α
                                                                                        jmp   n272_suspend_α
n271_call_builtin_prolog_β:
                                                                                        jmp   n273_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n272_suspend_α:
                        lea              rax, [rip + n272_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 112
                                                                                        jmp   proc_$disj0$2F1_γ
n272_suspend_β:
                                                                                        jmp   n273_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n273_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   n274_var_ref_α
n273_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n275_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n275_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n276_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n276_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx299_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx299_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx299_41
                        cmp              esi, 1
                                                                                        jne   .Lx299_55
                        mov              r8, rax
                                                                                        jmp   .Lx299_40
.Lx299_55:
                        cmp              esi, 2
                                                                                        jne   .Lx299_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx299_41
                        mov              r8, rax
                                                                                        jmp   .Lx299_40
.Lx299_56:
                        cmp              eax, 72
                                                                                        jne   .Lx299_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx299_41
                        cmp              rax, r8
                                                                                        je    .Lx299_41
                        mov              r8, rax
                                                                                        jmp   .Lx299_40
.Lx299_41:
                        lea              r9, [rbp + 224]
.Lx299_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx299_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx299_43
                        cmp              esi, 1
                                                                                        jne   .Lx299_57
                        mov              r9, rax
                                                                                        jmp   .Lx299_42
.Lx299_57:
                        cmp              esi, 2
                                                                                        jne   .Lx299_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx299_43
                        mov              r9, rax
                                                                                        jmp   .Lx299_42
.Lx299_58:
                        cmp              eax, 72
                                                                                        jne   .Lx299_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx299_43
                        cmp              rax, r9
                                                                                        je    .Lx299_43
                        mov              r9, rax
                                                                                        jmp   .Lx299_42
.Lx299_43:
                        cmp              r8, r9
                                                                                        je    .Lx299_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx299_44
                        cmp              eax, 104
                                                                                        je    .Lx299_44
                        cmp              eax, 72
                                                                                        jne   .Lx299_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx299_44
                                                                                        jmp   .Lx299_45
.Lx299_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx299_53
                        cmp              eax, 104
                                                                                        je    .Lx299_53
                        cmp              eax, 72
                                                                                        jne   .Lx299_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx299_53
                                                                                        jmp   .Lx299_46
.Lx299_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx299_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx299_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx299_51
.Lx299_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx299_47
                        cmp              eax, 104
                                                                                        je    .Lx299_47
                        cmp              eax, 72
                                                                                        jne   .Lx299_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx299_47
                                                                                        jmp   .Lx299_48
.Lx299_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx299_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx299_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx299_51
.Lx299_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx299_49
                        cmp              edx, 80
                                                                                        je    .Lx299_53
                                                                                        jmp   .Lx299_52
.Lx299_49:
                        cmp              edx, 80
                                                                                        je    .Lx299_52
                        cmp              ecx, 5
                                                                                        je    .Lx299_53
                        cmp              edx, 5
                                                                                        je    .Lx299_53
                        cmp              ecx, 3
                                                                                        jne   .Lx299_50
                        cmp              edx, 3
                                                                                        jne   .Lx299_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx299_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx299_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx299_51
                                                                                        jmp   .Lx299_52
.Lx299_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx299_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx299_53
.Lx299_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx299_54
.Lx299_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx299_54
.Lx299_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx299_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n281_call_builtin_prolog_α
                                                                                        jmp   n277_var_ref_α
n276_call_builtin_prolog_β:
                                                                                        jmp   n281_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n278_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 6
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n279_call_builtin_prolog_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "carter"
#-----------------------------------------------------------------------------------------------------------------------
n279_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              rsi, qword ptr [rip + .Lx303_2]
                                                                                        jmp   .Lx303_3
.Lx303_2:
                        .quad            .Lx303_2_s
.Lx303_2_s:
                        .string          "carter"
.Lx303_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n281_call_builtin_prolog_α
                                                                                        jmp   n280_suspend_α
n279_call_builtin_prolog_β:
                                                                                        jmp   n281_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n280_suspend_α:
                        lea              rax, [rip + n280_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F1_γ
n280_suspend_β:
                                                                                        jmp   n281_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n281_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_$disj0$2F1_ω
                                                                                        jmp   proc_$disj0$2F1_ω
n281_call_builtin_prolog_β:
                                                                                        jmp   proc_$disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_β:
                                                                                        jmp   qword ptr [rbp + 480]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_all_diff5$2F5_α
proc_all_diff5$2F5_α:
proc_all_diff5$2F5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n307_call_builtin_prolog_α:
                        sub              rsp, 432
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx356_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx356_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx356_101
.Lx356_100:
                        lea              rdi, [rbp + 144]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx356_101:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx356_240
                        add              rsp, 432
                                                                                        jmp   proc_all_diff5$2F5_ω
.Lx356_240:
                                                                                        jmp   n308_var_ref_α
n307_call_builtin_prolog_β:
                        add              rsp, 432
                                                                                        jmp   proc_all_diff5$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n309_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n310_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n310_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1328]
                        lea              r8, [rbp + 1328]
.Lx361_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx361_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx361_41
                        cmp              esi, 1
                                                                                        jne   .Lx361_55
                        mov              r8, rax
                                                                                        jmp   .Lx361_40
.Lx361_55:
                        cmp              esi, 2
                                                                                        jne   .Lx361_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx361_41
                        mov              r8, rax
                                                                                        jmp   .Lx361_40
.Lx361_56:
                        cmp              eax, 72
                                                                                        jne   .Lx361_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx361_41
                        cmp              rax, r8
                                                                                        je    .Lx361_41
                        mov              r8, rax
                                                                                        jmp   .Lx361_40
.Lx361_41:
                        lea              r9, [rbp + 1344]
.Lx361_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx361_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx361_43
                        cmp              esi, 1
                                                                                        jne   .Lx361_57
                        mov              r9, rax
                                                                                        jmp   .Lx361_42
.Lx361_57:
                        cmp              esi, 2
                                                                                        jne   .Lx361_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx361_43
                        mov              r9, rax
                                                                                        jmp   .Lx361_42
.Lx361_58:
                        cmp              eax, 72
                                                                                        jne   .Lx361_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx361_43
                        cmp              rax, r9
                                                                                        je    .Lx361_43
                        mov              r9, rax
                                                                                        jmp   .Lx361_42
.Lx361_43:
                        cmp              r8, r9
                                                                                        je    .Lx361_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx361_44
                        cmp              eax, 104
                                                                                        je    .Lx361_44
                        cmp              eax, 72
                                                                                        jne   .Lx361_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx361_44
                                                                                        jmp   .Lx361_45
.Lx361_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx361_53
                        cmp              eax, 104
                                                                                        je    .Lx361_53
                        cmp              eax, 72
                                                                                        jne   .Lx361_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx361_53
                                                                                        jmp   .Lx361_46
.Lx361_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx361_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx361_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx361_51
.Lx361_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx361_47
                        cmp              eax, 104
                                                                                        je    .Lx361_47
                        cmp              eax, 72
                                                                                        jne   .Lx361_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx361_47
                                                                                        jmp   .Lx361_48
.Lx361_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx361_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx361_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx361_51
.Lx361_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx361_49
                        cmp              edx, 80
                                                                                        je    .Lx361_53
                                                                                        jmp   .Lx361_52
.Lx361_49:
                        cmp              edx, 80
                                                                                        je    .Lx361_52
                        cmp              ecx, 5
                                                                                        je    .Lx361_53
                        cmp              edx, 5
                                                                                        je    .Lx361_53
                        cmp              ecx, 3
                                                                                        jne   .Lx361_50
                        cmp              edx, 3
                                                                                        jne   .Lx361_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx361_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx361_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx361_51
                                                                                        jmp   .Lx361_52
.Lx361_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx361_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx361_53
.Lx361_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx361_54
.Lx361_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx361_54
.Lx361_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx361_54:
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 104
                                                                                        je    n355_call_builtin_prolog_α
                                                                                        jmp   n311_var_ref_α
n310_call_builtin_prolog_β:
                                                                                        jmp   n355_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n312_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n313_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n313_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1248]
                        lea              r8, [rbp + 1248]
.Lx366_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx366_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx366_41
                        cmp              esi, 1
                                                                                        jne   .Lx366_55
                        mov              r8, rax
                                                                                        jmp   .Lx366_40
.Lx366_55:
                        cmp              esi, 2
                                                                                        jne   .Lx366_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx366_41
                        mov              r8, rax
                                                                                        jmp   .Lx366_40
.Lx366_56:
                        cmp              eax, 72
                                                                                        jne   .Lx366_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx366_41
                        cmp              rax, r8
                                                                                        je    .Lx366_41
                        mov              r8, rax
                                                                                        jmp   .Lx366_40
.Lx366_41:
                        lea              r9, [rbp + 1264]
.Lx366_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx366_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx366_43
                        cmp              esi, 1
                                                                                        jne   .Lx366_57
                        mov              r9, rax
                                                                                        jmp   .Lx366_42
.Lx366_57:
                        cmp              esi, 2
                                                                                        jne   .Lx366_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx366_43
                        mov              r9, rax
                                                                                        jmp   .Lx366_42
.Lx366_58:
                        cmp              eax, 72
                                                                                        jne   .Lx366_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx366_43
                        cmp              rax, r9
                                                                                        je    .Lx366_43
                        mov              r9, rax
                                                                                        jmp   .Lx366_42
.Lx366_43:
                        cmp              r8, r9
                                                                                        je    .Lx366_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx366_44
                        cmp              eax, 104
                                                                                        je    .Lx366_44
                        cmp              eax, 72
                                                                                        jne   .Lx366_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx366_44
                                                                                        jmp   .Lx366_45
.Lx366_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx366_53
                        cmp              eax, 104
                                                                                        je    .Lx366_53
                        cmp              eax, 72
                                                                                        jne   .Lx366_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx366_53
                                                                                        jmp   .Lx366_46
.Lx366_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx366_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx366_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx366_51
.Lx366_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx366_47
                        cmp              eax, 104
                                                                                        je    .Lx366_47
                        cmp              eax, 72
                                                                                        jne   .Lx366_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx366_47
                                                                                        jmp   .Lx366_48
.Lx366_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx366_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx366_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx366_51
.Lx366_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx366_49
                        cmp              edx, 80
                                                                                        je    .Lx366_53
                                                                                        jmp   .Lx366_52
.Lx366_49:
                        cmp              edx, 80
                                                                                        je    .Lx366_52
                        cmp              ecx, 5
                                                                                        je    .Lx366_53
                        cmp              edx, 5
                                                                                        je    .Lx366_53
                        cmp              ecx, 3
                                                                                        jne   .Lx366_50
                        cmp              edx, 3
                                                                                        jne   .Lx366_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx366_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx366_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx366_51
                                                                                        jmp   .Lx366_52
.Lx366_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx366_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx366_53
.Lx366_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx366_54
.Lx366_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx366_54
.Lx366_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx366_54:
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 104
                                                                                        je    n355_call_builtin_prolog_α
                                                                                        jmp   n314_var_ref_α
n313_call_builtin_prolog_β:
                                                                                        jmp   n355_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n315_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n315_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n316_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n316_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1168]
                        lea              r8, [rbp + 1168]
.Lx371_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx371_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx371_41
                        cmp              esi, 1
                                                                                        jne   .Lx371_55
                        mov              r8, rax
                                                                                        jmp   .Lx371_40
.Lx371_55:
                        cmp              esi, 2
                                                                                        jne   .Lx371_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx371_41
                        mov              r8, rax
                                                                                        jmp   .Lx371_40
.Lx371_56:
                        cmp              eax, 72
                                                                                        jne   .Lx371_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx371_41
                        cmp              rax, r8
                                                                                        je    .Lx371_41
                        mov              r8, rax
                                                                                        jmp   .Lx371_40
.Lx371_41:
                        lea              r9, [rbp + 1184]
.Lx371_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx371_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx371_43
                        cmp              esi, 1
                                                                                        jne   .Lx371_57
                        mov              r9, rax
                                                                                        jmp   .Lx371_42
.Lx371_57:
                        cmp              esi, 2
                                                                                        jne   .Lx371_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx371_43
                        mov              r9, rax
                                                                                        jmp   .Lx371_42
.Lx371_58:
                        cmp              eax, 72
                                                                                        jne   .Lx371_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx371_43
                        cmp              rax, r9
                                                                                        je    .Lx371_43
                        mov              r9, rax
                                                                                        jmp   .Lx371_42
.Lx371_43:
                        cmp              r8, r9
                                                                                        je    .Lx371_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx371_44
                        cmp              eax, 104
                                                                                        je    .Lx371_44
                        cmp              eax, 72
                                                                                        jne   .Lx371_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx371_44
                                                                                        jmp   .Lx371_45
.Lx371_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx371_53
                        cmp              eax, 104
                                                                                        je    .Lx371_53
                        cmp              eax, 72
                                                                                        jne   .Lx371_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx371_53
                                                                                        jmp   .Lx371_46
.Lx371_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx371_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx371_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx371_51
.Lx371_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx371_47
                        cmp              eax, 104
                                                                                        je    .Lx371_47
                        cmp              eax, 72
                                                                                        jne   .Lx371_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx371_47
                                                                                        jmp   .Lx371_48
.Lx371_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx371_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx371_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx371_51
.Lx371_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx371_49
                        cmp              edx, 80
                                                                                        je    .Lx371_53
                                                                                        jmp   .Lx371_52
.Lx371_49:
                        cmp              edx, 80
                                                                                        je    .Lx371_52
                        cmp              ecx, 5
                                                                                        je    .Lx371_53
                        cmp              edx, 5
                                                                                        je    .Lx371_53
                        cmp              ecx, 3
                                                                                        jne   .Lx371_50
                        cmp              edx, 3
                                                                                        jne   .Lx371_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx371_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx371_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx371_51
                                                                                        jmp   .Lx371_52
.Lx371_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx371_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx371_53
.Lx371_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx371_54
.Lx371_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx371_54
.Lx371_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx371_54:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 104
                                                                                        je    n355_call_builtin_prolog_α
                                                                                        jmp   n317_var_ref_α
n316_call_builtin_prolog_β:
                                                                                        jmp   n355_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n318_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n319_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n319_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1088]
                        lea              r8, [rbp + 1088]
.Lx376_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx376_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx376_41
                        cmp              esi, 1
                                                                                        jne   .Lx376_55
                        mov              r8, rax
                                                                                        jmp   .Lx376_40
.Lx376_55:
                        cmp              esi, 2
                                                                                        jne   .Lx376_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx376_41
                        mov              r8, rax
                                                                                        jmp   .Lx376_40
.Lx376_56:
                        cmp              eax, 72
                                                                                        jne   .Lx376_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx376_41
                        cmp              rax, r8
                                                                                        je    .Lx376_41
                        mov              r8, rax
                                                                                        jmp   .Lx376_40
.Lx376_41:
                        lea              r9, [rbp + 1104]
.Lx376_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx376_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx376_43
                        cmp              esi, 1
                                                                                        jne   .Lx376_57
                        mov              r9, rax
                                                                                        jmp   .Lx376_42
.Lx376_57:
                        cmp              esi, 2
                                                                                        jne   .Lx376_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx376_43
                        mov              r9, rax
                                                                                        jmp   .Lx376_42
.Lx376_58:
                        cmp              eax, 72
                                                                                        jne   .Lx376_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx376_43
                        cmp              rax, r9
                                                                                        je    .Lx376_43
                        mov              r9, rax
                                                                                        jmp   .Lx376_42
.Lx376_43:
                        cmp              r8, r9
                                                                                        je    .Lx376_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx376_44
                        cmp              eax, 104
                                                                                        je    .Lx376_44
                        cmp              eax, 72
                                                                                        jne   .Lx376_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx376_44
                                                                                        jmp   .Lx376_45
.Lx376_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx376_53
                        cmp              eax, 104
                                                                                        je    .Lx376_53
                        cmp              eax, 72
                                                                                        jne   .Lx376_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx376_53
                                                                                        jmp   .Lx376_46
.Lx376_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx376_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx376_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx376_51
.Lx376_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx376_47
                        cmp              eax, 104
                                                                                        je    .Lx376_47
                        cmp              eax, 72
                                                                                        jne   .Lx376_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx376_47
                                                                                        jmp   .Lx376_48
.Lx376_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx376_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx376_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx376_51
.Lx376_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx376_49
                        cmp              edx, 80
                                                                                        je    .Lx376_53
                                                                                        jmp   .Lx376_52
.Lx376_49:
                        cmp              edx, 80
                                                                                        je    .Lx376_52
                        cmp              ecx, 5
                                                                                        je    .Lx376_53
                        cmp              edx, 5
                                                                                        je    .Lx376_53
                        cmp              ecx, 3
                                                                                        jne   .Lx376_50
                        cmp              edx, 3
                                                                                        jne   .Lx376_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx376_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx376_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx376_51
                                                                                        jmp   .Lx376_52
.Lx376_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx376_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx376_53
.Lx376_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx376_54
.Lx376_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx376_54
.Lx376_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx376_54:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 104
                                                                                        je    n355_call_builtin_prolog_α
                                                                                        jmp   n320_var_ref_α
n319_call_builtin_prolog_β:
                                                                                        jmp   n355_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n320_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n321_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n322_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n322_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1008]
                        lea              r8, [rbp + 1008]
.Lx381_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx381_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx381_41
                        cmp              esi, 1
                                                                                        jne   .Lx381_55
                        mov              r8, rax
                                                                                        jmp   .Lx381_40
.Lx381_55:
                        cmp              esi, 2
                                                                                        jne   .Lx381_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx381_41
                        mov              r8, rax
                                                                                        jmp   .Lx381_40
.Lx381_56:
                        cmp              eax, 72
                                                                                        jne   .Lx381_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx381_41
                        cmp              rax, r8
                                                                                        je    .Lx381_41
                        mov              r8, rax
                                                                                        jmp   .Lx381_40
.Lx381_41:
                        lea              r9, [rbp + 1024]
.Lx381_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx381_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx381_43
                        cmp              esi, 1
                                                                                        jne   .Lx381_57
                        mov              r9, rax
                                                                                        jmp   .Lx381_42
.Lx381_57:
                        cmp              esi, 2
                                                                                        jne   .Lx381_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx381_43
                        mov              r9, rax
                                                                                        jmp   .Lx381_42
.Lx381_58:
                        cmp              eax, 72
                                                                                        jne   .Lx381_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx381_43
                        cmp              rax, r9
                                                                                        je    .Lx381_43
                        mov              r9, rax
                                                                                        jmp   .Lx381_42
.Lx381_43:
                        cmp              r8, r9
                                                                                        je    .Lx381_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx381_44
                        cmp              eax, 104
                                                                                        je    .Lx381_44
                        cmp              eax, 72
                                                                                        jne   .Lx381_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx381_44
                                                                                        jmp   .Lx381_45
.Lx381_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx381_53
                        cmp              eax, 104
                                                                                        je    .Lx381_53
                        cmp              eax, 72
                                                                                        jne   .Lx381_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx381_53
                                                                                        jmp   .Lx381_46
.Lx381_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx381_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx381_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx381_51
.Lx381_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx381_47
                        cmp              eax, 104
                                                                                        je    .Lx381_47
                        cmp              eax, 72
                                                                                        jne   .Lx381_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx381_47
                                                                                        jmp   .Lx381_48
.Lx381_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx381_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx381_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx381_51
.Lx381_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx381_49
                        cmp              edx, 80
                                                                                        je    .Lx381_53
                                                                                        jmp   .Lx381_52
.Lx381_49:
                        cmp              edx, 80
                                                                                        je    .Lx381_52
                        cmp              ecx, 5
                                                                                        je    .Lx381_53
                        cmp              edx, 5
                                                                                        je    .Lx381_53
                        cmp              ecx, 3
                                                                                        jne   .Lx381_50
                        cmp              edx, 3
                                                                                        jne   .Lx381_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx381_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx381_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx381_51
                                                                                        jmp   .Lx381_52
.Lx381_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx381_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx381_53
.Lx381_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx381_54
.Lx381_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx381_54
.Lx381_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx381_54:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    n355_call_builtin_prolog_α
                                                                                        jmp   n323_var_ref_α
n322_call_builtin_prolog_β:
                                                                                        jmp   n355_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n324_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n325_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n325_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 928]
                        lea              r8, [rbp + 928]
.Lx386_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx386_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx386_41
                        cmp              esi, 1
                                                                                        jne   .Lx386_55
                        mov              r8, rax
                                                                                        jmp   .Lx386_40
.Lx386_55:
                        cmp              esi, 2
                                                                                        jne   .Lx386_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx386_41
                        mov              r8, rax
                                                                                        jmp   .Lx386_40
.Lx386_56:
                        cmp              eax, 72
                                                                                        jne   .Lx386_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx386_41
                        cmp              rax, r8
                                                                                        je    .Lx386_41
                        mov              r8, rax
                                                                                        jmp   .Lx386_40
.Lx386_41:
                        lea              r9, [rbp + 944]
.Lx386_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx386_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx386_43
                        cmp              esi, 1
                                                                                        jne   .Lx386_57
                        mov              r9, rax
                                                                                        jmp   .Lx386_42
.Lx386_57:
                        cmp              esi, 2
                                                                                        jne   .Lx386_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx386_43
                        mov              r9, rax
                                                                                        jmp   .Lx386_42
.Lx386_58:
                        cmp              eax, 72
                                                                                        jne   .Lx386_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx386_43
                        cmp              rax, r9
                                                                                        je    .Lx386_43
                        mov              r9, rax
                                                                                        jmp   .Lx386_42
.Lx386_43:
                        cmp              r8, r9
                                                                                        je    .Lx386_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx386_44
                        cmp              eax, 104
                                                                                        je    .Lx386_44
                        cmp              eax, 72
                                                                                        jne   .Lx386_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx386_44
                                                                                        jmp   .Lx386_45
.Lx386_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx386_53
                        cmp              eax, 104
                                                                                        je    .Lx386_53
                        cmp              eax, 72
                                                                                        jne   .Lx386_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx386_53
                                                                                        jmp   .Lx386_46
.Lx386_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx386_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx386_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx386_51
.Lx386_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx386_47
                        cmp              eax, 104
                                                                                        je    .Lx386_47
                        cmp              eax, 72
                                                                                        jne   .Lx386_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx386_47
                                                                                        jmp   .Lx386_48
.Lx386_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx386_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx386_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx386_51
.Lx386_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx386_49
                        cmp              edx, 80
                                                                                        je    .Lx386_53
                                                                                        jmp   .Lx386_52
.Lx386_49:
                        cmp              edx, 80
                                                                                        je    .Lx386_52
                        cmp              ecx, 5
                                                                                        je    .Lx386_53
                        cmp              edx, 5
                                                                                        je    .Lx386_53
                        cmp              ecx, 3
                                                                                        jne   .Lx386_50
                        cmp              edx, 3
                                                                                        jne   .Lx386_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx386_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx386_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx386_51
                                                                                        jmp   .Lx386_52
.Lx386_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx386_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx386_53
.Lx386_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx386_54
.Lx386_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx386_54
.Lx386_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx386_54:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx386_240
                        add              rsp, 432
                                                                                        jmp   n326_var_ref_α
.Lx386_240:
                                                                                        jmp   n355_call_builtin_prolog_α
n325_call_builtin_prolog_β:
                        add              rsp, 432
                                                                                        jmp   n326_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n327_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n328_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n328_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 848]
                        lea              r8, [rbp + 848]
.Lx391_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx391_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx391_41
                        cmp              esi, 1
                                                                                        jne   .Lx391_55
                        mov              r8, rax
                                                                                        jmp   .Lx391_40
.Lx391_55:
                        cmp              esi, 2
                                                                                        jne   .Lx391_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx391_41
                        mov              r8, rax
                                                                                        jmp   .Lx391_40
.Lx391_56:
                        cmp              eax, 72
                                                                                        jne   .Lx391_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx391_41
                        cmp              rax, r8
                                                                                        je    .Lx391_41
                        mov              r8, rax
                                                                                        jmp   .Lx391_40
.Lx391_41:
                        lea              r9, [rbp + 864]
.Lx391_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx391_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx391_43
                        cmp              esi, 1
                                                                                        jne   .Lx391_57
                        mov              r9, rax
                                                                                        jmp   .Lx391_42
.Lx391_57:
                        cmp              esi, 2
                                                                                        jne   .Lx391_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx391_43
                        mov              r9, rax
                                                                                        jmp   .Lx391_42
.Lx391_58:
                        cmp              eax, 72
                                                                                        jne   .Lx391_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx391_43
                        cmp              rax, r9
                                                                                        je    .Lx391_43
                        mov              r9, rax
                                                                                        jmp   .Lx391_42
.Lx391_43:
                        cmp              r8, r9
                                                                                        je    .Lx391_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx391_44
                        cmp              eax, 104
                                                                                        je    .Lx391_44
                        cmp              eax, 72
                                                                                        jne   .Lx391_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx391_44
                                                                                        jmp   .Lx391_45
.Lx391_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx391_53
                        cmp              eax, 104
                                                                                        je    .Lx391_53
                        cmp              eax, 72
                                                                                        jne   .Lx391_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx391_53
                                                                                        jmp   .Lx391_46
.Lx391_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx391_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx391_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx391_51
.Lx391_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx391_47
                        cmp              eax, 104
                                                                                        je    .Lx391_47
                        cmp              eax, 72
                                                                                        jne   .Lx391_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx391_47
                                                                                        jmp   .Lx391_48
.Lx391_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx391_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx391_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx391_51
.Lx391_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx391_49
                        cmp              edx, 80
                                                                                        je    .Lx391_53
                                                                                        jmp   .Lx391_52
.Lx391_49:
                        cmp              edx, 80
                                                                                        je    .Lx391_52
                        cmp              ecx, 5
                                                                                        je    .Lx391_53
                        cmp              edx, 5
                                                                                        je    .Lx391_53
                        cmp              ecx, 3
                                                                                        jne   .Lx391_50
                        cmp              edx, 3
                                                                                        jne   .Lx391_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx391_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx391_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx391_51
                                                                                        jmp   .Lx391_52
.Lx391_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx391_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx391_53
.Lx391_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx391_54
.Lx391_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx391_54
.Lx391_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx391_54:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        je    n329_var_ref_α
                                                                                        jmp   n355_call_builtin_prolog_α
n328_call_builtin_prolog_β:
                                                                                        jmp   n329_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n330_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n331_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n331_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 768]
                        lea              r8, [rbp + 768]
.Lx396_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx396_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx396_41
                        cmp              esi, 1
                                                                                        jne   .Lx396_55
                        mov              r8, rax
                                                                                        jmp   .Lx396_40
.Lx396_55:
                        cmp              esi, 2
                                                                                        jne   .Lx396_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx396_41
                        mov              r8, rax
                                                                                        jmp   .Lx396_40
.Lx396_56:
                        cmp              eax, 72
                                                                                        jne   .Lx396_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx396_41
                        cmp              rax, r8
                                                                                        je    .Lx396_41
                        mov              r8, rax
                                                                                        jmp   .Lx396_40
.Lx396_41:
                        lea              r9, [rbp + 784]
.Lx396_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx396_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx396_43
                        cmp              esi, 1
                                                                                        jne   .Lx396_57
                        mov              r9, rax
                                                                                        jmp   .Lx396_42
.Lx396_57:
                        cmp              esi, 2
                                                                                        jne   .Lx396_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx396_43
                        mov              r9, rax
                                                                                        jmp   .Lx396_42
.Lx396_58:
                        cmp              eax, 72
                                                                                        jne   .Lx396_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx396_43
                        cmp              rax, r9
                                                                                        je    .Lx396_43
                        mov              r9, rax
                                                                                        jmp   .Lx396_42
.Lx396_43:
                        cmp              r8, r9
                                                                                        je    .Lx396_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx396_44
                        cmp              eax, 104
                                                                                        je    .Lx396_44
                        cmp              eax, 72
                                                                                        jne   .Lx396_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx396_44
                                                                                        jmp   .Lx396_45
.Lx396_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx396_53
                        cmp              eax, 104
                                                                                        je    .Lx396_53
                        cmp              eax, 72
                                                                                        jne   .Lx396_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx396_53
                                                                                        jmp   .Lx396_46
.Lx396_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx396_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx396_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx396_51
.Lx396_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx396_47
                        cmp              eax, 104
                                                                                        je    .Lx396_47
                        cmp              eax, 72
                                                                                        jne   .Lx396_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx396_47
                                                                                        jmp   .Lx396_48
.Lx396_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx396_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx396_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx396_51
.Lx396_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx396_49
                        cmp              edx, 80
                                                                                        je    .Lx396_53
                                                                                        jmp   .Lx396_52
.Lx396_49:
                        cmp              edx, 80
                                                                                        je    .Lx396_52
                        cmp              ecx, 5
                                                                                        je    .Lx396_53
                        cmp              edx, 5
                                                                                        je    .Lx396_53
                        cmp              ecx, 3
                                                                                        jne   .Lx396_50
                        cmp              edx, 3
                                                                                        jne   .Lx396_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx396_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx396_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx396_51
                                                                                        jmp   .Lx396_52
.Lx396_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx396_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx396_53
.Lx396_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx396_54
.Lx396_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx396_54
.Lx396_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx396_54:
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n332_var_ref_α
                                                                                        jmp   n355_call_builtin_prolog_α
n331_call_builtin_prolog_β:
                                                                                        jmp   n332_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n333_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n334_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n334_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 688]
                        lea              r8, [rbp + 688]
.Lx401_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx401_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx401_41
                        cmp              esi, 1
                                                                                        jne   .Lx401_55
                        mov              r8, rax
                                                                                        jmp   .Lx401_40
.Lx401_55:
                        cmp              esi, 2
                                                                                        jne   .Lx401_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx401_41
                        mov              r8, rax
                                                                                        jmp   .Lx401_40
.Lx401_56:
                        cmp              eax, 72
                                                                                        jne   .Lx401_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx401_41
                        cmp              rax, r8
                                                                                        je    .Lx401_41
                        mov              r8, rax
                                                                                        jmp   .Lx401_40
.Lx401_41:
                        lea              r9, [rbp + 704]
.Lx401_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx401_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx401_43
                        cmp              esi, 1
                                                                                        jne   .Lx401_57
                        mov              r9, rax
                                                                                        jmp   .Lx401_42
.Lx401_57:
                        cmp              esi, 2
                                                                                        jne   .Lx401_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx401_43
                        mov              r9, rax
                                                                                        jmp   .Lx401_42
.Lx401_58:
                        cmp              eax, 72
                                                                                        jne   .Lx401_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx401_43
                        cmp              rax, r9
                                                                                        je    .Lx401_43
                        mov              r9, rax
                                                                                        jmp   .Lx401_42
.Lx401_43:
                        cmp              r8, r9
                                                                                        je    .Lx401_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx401_44
                        cmp              eax, 104
                                                                                        je    .Lx401_44
                        cmp              eax, 72
                                                                                        jne   .Lx401_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx401_44
                                                                                        jmp   .Lx401_45
.Lx401_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx401_53
                        cmp              eax, 104
                                                                                        je    .Lx401_53
                        cmp              eax, 72
                                                                                        jne   .Lx401_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx401_53
                                                                                        jmp   .Lx401_46
.Lx401_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx401_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx401_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx401_51
.Lx401_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx401_47
                        cmp              eax, 104
                                                                                        je    .Lx401_47
                        cmp              eax, 72
                                                                                        jne   .Lx401_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx401_47
                                                                                        jmp   .Lx401_48
.Lx401_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx401_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx401_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx401_51
.Lx401_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx401_49
                        cmp              edx, 80
                                                                                        je    .Lx401_53
                                                                                        jmp   .Lx401_52
.Lx401_49:
                        cmp              edx, 80
                                                                                        je    .Lx401_52
                        cmp              ecx, 5
                                                                                        je    .Lx401_53
                        cmp              edx, 5
                                                                                        je    .Lx401_53
                        cmp              ecx, 3
                                                                                        jne   .Lx401_50
                        cmp              edx, 3
                                                                                        jne   .Lx401_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx401_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx401_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx401_51
                                                                                        jmp   .Lx401_52
.Lx401_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx401_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx401_53
.Lx401_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx401_54
.Lx401_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx401_54
.Lx401_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx401_54:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        je    n335_var_ref_α
                                                                                        jmp   n355_call_builtin_prolog_α
n334_call_builtin_prolog_β:
                                                                                        jmp   n335_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n336_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n336_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n337_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 608]
                        lea              r8, [rbp + 608]
.Lx406_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx406_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx406_41
                        cmp              esi, 1
                                                                                        jne   .Lx406_55
                        mov              r8, rax
                                                                                        jmp   .Lx406_40
.Lx406_55:
                        cmp              esi, 2
                                                                                        jne   .Lx406_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx406_41
                        mov              r8, rax
                                                                                        jmp   .Lx406_40
.Lx406_56:
                        cmp              eax, 72
                                                                                        jne   .Lx406_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx406_41
                        cmp              rax, r8
                                                                                        je    .Lx406_41
                        mov              r8, rax
                                                                                        jmp   .Lx406_40
.Lx406_41:
                        lea              r9, [rbp + 624]
.Lx406_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx406_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx406_43
                        cmp              esi, 1
                                                                                        jne   .Lx406_57
                        mov              r9, rax
                                                                                        jmp   .Lx406_42
.Lx406_57:
                        cmp              esi, 2
                                                                                        jne   .Lx406_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx406_43
                        mov              r9, rax
                                                                                        jmp   .Lx406_42
.Lx406_58:
                        cmp              eax, 72
                                                                                        jne   .Lx406_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx406_43
                        cmp              rax, r9
                                                                                        je    .Lx406_43
                        mov              r9, rax
                                                                                        jmp   .Lx406_42
.Lx406_43:
                        cmp              r8, r9
                                                                                        je    .Lx406_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx406_44
                        cmp              eax, 104
                                                                                        je    .Lx406_44
                        cmp              eax, 72
                                                                                        jne   .Lx406_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx406_44
                                                                                        jmp   .Lx406_45
.Lx406_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx406_53
                        cmp              eax, 104
                                                                                        je    .Lx406_53
                        cmp              eax, 72
                                                                                        jne   .Lx406_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx406_53
                                                                                        jmp   .Lx406_46
.Lx406_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx406_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx406_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx406_51
.Lx406_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx406_47
                        cmp              eax, 104
                                                                                        je    .Lx406_47
                        cmp              eax, 72
                                                                                        jne   .Lx406_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx406_47
                                                                                        jmp   .Lx406_48
.Lx406_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx406_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx406_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx406_51
.Lx406_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx406_49
                        cmp              edx, 80
                                                                                        je    .Lx406_53
                                                                                        jmp   .Lx406_52
.Lx406_49:
                        cmp              edx, 80
                                                                                        je    .Lx406_52
                        cmp              ecx, 5
                                                                                        je    .Lx406_53
                        cmp              edx, 5
                                                                                        je    .Lx406_53
                        cmp              ecx, 3
                                                                                        jne   .Lx406_50
                        cmp              edx, 3
                                                                                        jne   .Lx406_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx406_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx406_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx406_51
                                                                                        jmp   .Lx406_52
.Lx406_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx406_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx406_53
.Lx406_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx406_54
.Lx406_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx406_54
.Lx406_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx406_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        je    n338_var_ref_α
                                                                                        jmp   n355_call_builtin_prolog_α
n337_call_builtin_prolog_β:
                                                                                        jmp   n338_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n339_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n340_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n340_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 528]
                        lea              r8, [rbp + 528]
.Lx411_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx411_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx411_41
                        cmp              esi, 1
                                                                                        jne   .Lx411_55
                        mov              r8, rax
                                                                                        jmp   .Lx411_40
.Lx411_55:
                        cmp              esi, 2
                                                                                        jne   .Lx411_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx411_41
                        mov              r8, rax
                                                                                        jmp   .Lx411_40
.Lx411_56:
                        cmp              eax, 72
                                                                                        jne   .Lx411_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx411_41
                        cmp              rax, r8
                                                                                        je    .Lx411_41
                        mov              r8, rax
                                                                                        jmp   .Lx411_40
.Lx411_41:
                        lea              r9, [rbp + 544]
.Lx411_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx411_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx411_43
                        cmp              esi, 1
                                                                                        jne   .Lx411_57
                        mov              r9, rax
                                                                                        jmp   .Lx411_42
.Lx411_57:
                        cmp              esi, 2
                                                                                        jne   .Lx411_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx411_43
                        mov              r9, rax
                                                                                        jmp   .Lx411_42
.Lx411_58:
                        cmp              eax, 72
                                                                                        jne   .Lx411_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx411_43
                        cmp              rax, r9
                                                                                        je    .Lx411_43
                        mov              r9, rax
                                                                                        jmp   .Lx411_42
.Lx411_43:
                        cmp              r8, r9
                                                                                        je    .Lx411_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx411_44
                        cmp              eax, 104
                                                                                        je    .Lx411_44
                        cmp              eax, 72
                                                                                        jne   .Lx411_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx411_44
                                                                                        jmp   .Lx411_45
.Lx411_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx411_53
                        cmp              eax, 104
                                                                                        je    .Lx411_53
                        cmp              eax, 72
                                                                                        jne   .Lx411_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx411_53
                                                                                        jmp   .Lx411_46
.Lx411_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx411_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx411_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx411_51
.Lx411_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx411_47
                        cmp              eax, 104
                                                                                        je    .Lx411_47
                        cmp              eax, 72
                                                                                        jne   .Lx411_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx411_47
                                                                                        jmp   .Lx411_48
.Lx411_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx411_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx411_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx411_51
.Lx411_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx411_49
                        cmp              edx, 80
                                                                                        je    .Lx411_53
                                                                                        jmp   .Lx411_52
.Lx411_49:
                        cmp              edx, 80
                                                                                        je    .Lx411_52
                        cmp              ecx, 5
                                                                                        je    .Lx411_53
                        cmp              edx, 5
                                                                                        je    .Lx411_53
                        cmp              ecx, 3
                                                                                        jne   .Lx411_50
                        cmp              edx, 3
                                                                                        jne   .Lx411_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx411_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx411_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx411_51
                                                                                        jmp   .Lx411_52
.Lx411_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx411_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx411_53
.Lx411_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx411_54
.Lx411_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx411_54
.Lx411_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx411_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n341_var_ref_α
                                                                                        jmp   n355_call_builtin_prolog_α
n340_call_builtin_prolog_β:
                                                                                        jmp   n341_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n342_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n343_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 448]
                        lea              r8, [rbp + 448]
.Lx416_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx416_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx416_41
                        cmp              esi, 1
                                                                                        jne   .Lx416_55
                        mov              r8, rax
                                                                                        jmp   .Lx416_40
.Lx416_55:
                        cmp              esi, 2
                                                                                        jne   .Lx416_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx416_41
                        mov              r8, rax
                                                                                        jmp   .Lx416_40
.Lx416_56:
                        cmp              eax, 72
                                                                                        jne   .Lx416_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx416_41
                        cmp              rax, r8
                                                                                        je    .Lx416_41
                        mov              r8, rax
                                                                                        jmp   .Lx416_40
.Lx416_41:
                        lea              r9, [rbp + 464]
.Lx416_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx416_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx416_43
                        cmp              esi, 1
                                                                                        jne   .Lx416_57
                        mov              r9, rax
                                                                                        jmp   .Lx416_42
.Lx416_57:
                        cmp              esi, 2
                                                                                        jne   .Lx416_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx416_43
                        mov              r9, rax
                                                                                        jmp   .Lx416_42
.Lx416_58:
                        cmp              eax, 72
                                                                                        jne   .Lx416_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx416_43
                        cmp              rax, r9
                                                                                        je    .Lx416_43
                        mov              r9, rax
                                                                                        jmp   .Lx416_42
.Lx416_43:
                        cmp              r8, r9
                                                                                        je    .Lx416_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx416_44
                        cmp              eax, 104
                                                                                        je    .Lx416_44
                        cmp              eax, 72
                                                                                        jne   .Lx416_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx416_44
                                                                                        jmp   .Lx416_45
.Lx416_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx416_53
                        cmp              eax, 104
                                                                                        je    .Lx416_53
                        cmp              eax, 72
                                                                                        jne   .Lx416_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx416_53
                                                                                        jmp   .Lx416_46
.Lx416_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx416_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx416_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx416_51
.Lx416_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx416_47
                        cmp              eax, 104
                                                                                        je    .Lx416_47
                        cmp              eax, 72
                                                                                        jne   .Lx416_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx416_47
                                                                                        jmp   .Lx416_48
.Lx416_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx416_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx416_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx416_51
.Lx416_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx416_49
                        cmp              edx, 80
                                                                                        je    .Lx416_53
                                                                                        jmp   .Lx416_52
.Lx416_49:
                        cmp              edx, 80
                                                                                        je    .Lx416_52
                        cmp              ecx, 5
                                                                                        je    .Lx416_53
                        cmp              edx, 5
                                                                                        je    .Lx416_53
                        cmp              ecx, 3
                                                                                        jne   .Lx416_50
                        cmp              edx, 3
                                                                                        jne   .Lx416_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx416_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx416_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx416_51
                                                                                        jmp   .Lx416_52
.Lx416_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx416_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx416_53
.Lx416_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx416_54
.Lx416_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx416_54
.Lx416_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx416_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n344_var_ref_α
                                                                                        jmp   n355_call_builtin_prolog_α
n343_call_builtin_prolog_β:
                                                                                        jmp   n344_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n345_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n346_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n346_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 368]
                        lea              r8, [rbp + 368]
.Lx421_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx421_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx421_41
                        cmp              esi, 1
                                                                                        jne   .Lx421_55
                        mov              r8, rax
                                                                                        jmp   .Lx421_40
.Lx421_55:
                        cmp              esi, 2
                                                                                        jne   .Lx421_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx421_41
                        mov              r8, rax
                                                                                        jmp   .Lx421_40
.Lx421_56:
                        cmp              eax, 72
                                                                                        jne   .Lx421_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx421_41
                        cmp              rax, r8
                                                                                        je    .Lx421_41
                        mov              r8, rax
                                                                                        jmp   .Lx421_40
.Lx421_41:
                        lea              r9, [rbp + 384]
.Lx421_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx421_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx421_43
                        cmp              esi, 1
                                                                                        jne   .Lx421_57
                        mov              r9, rax
                                                                                        jmp   .Lx421_42
.Lx421_57:
                        cmp              esi, 2
                                                                                        jne   .Lx421_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx421_43
                        mov              r9, rax
                                                                                        jmp   .Lx421_42
.Lx421_58:
                        cmp              eax, 72
                                                                                        jne   .Lx421_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx421_43
                        cmp              rax, r9
                                                                                        je    .Lx421_43
                        mov              r9, rax
                                                                                        jmp   .Lx421_42
.Lx421_43:
                        cmp              r8, r9
                                                                                        je    .Lx421_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx421_44
                        cmp              eax, 104
                                                                                        je    .Lx421_44
                        cmp              eax, 72
                                                                                        jne   .Lx421_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx421_44
                                                                                        jmp   .Lx421_45
.Lx421_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx421_53
                        cmp              eax, 104
                                                                                        je    .Lx421_53
                        cmp              eax, 72
                                                                                        jne   .Lx421_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx421_53
                                                                                        jmp   .Lx421_46
.Lx421_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx421_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx421_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx421_51
.Lx421_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx421_47
                        cmp              eax, 104
                                                                                        je    .Lx421_47
                        cmp              eax, 72
                                                                                        jne   .Lx421_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx421_47
                                                                                        jmp   .Lx421_48
.Lx421_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx421_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx421_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx421_51
.Lx421_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx421_49
                        cmp              edx, 80
                                                                                        je    .Lx421_53
                                                                                        jmp   .Lx421_52
.Lx421_49:
                        cmp              edx, 80
                                                                                        je    .Lx421_52
                        cmp              ecx, 5
                                                                                        je    .Lx421_53
                        cmp              edx, 5
                                                                                        je    .Lx421_53
                        cmp              ecx, 3
                                                                                        jne   .Lx421_50
                        cmp              edx, 3
                                                                                        jne   .Lx421_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx421_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx421_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx421_51
                                                                                        jmp   .Lx421_52
.Lx421_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx421_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx421_53
.Lx421_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx421_54
.Lx421_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx421_54
.Lx421_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx421_54:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n347_var_ref_α
                                                                                        jmp   n355_call_builtin_prolog_α
n346_call_builtin_prolog_β:
                                                                                        jmp   n347_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n348_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n349_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n349_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        lea              r8, [rbp + 288]
.Lx426_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx426_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx426_41
                        cmp              esi, 1
                                                                                        jne   .Lx426_55
                        mov              r8, rax
                                                                                        jmp   .Lx426_40
.Lx426_55:
                        cmp              esi, 2
                                                                                        jne   .Lx426_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx426_41
                        mov              r8, rax
                                                                                        jmp   .Lx426_40
.Lx426_56:
                        cmp              eax, 72
                                                                                        jne   .Lx426_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx426_41
                        cmp              rax, r8
                                                                                        je    .Lx426_41
                        mov              r8, rax
                                                                                        jmp   .Lx426_40
.Lx426_41:
                        lea              r9, [rbp + 304]
.Lx426_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx426_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx426_43
                        cmp              esi, 1
                                                                                        jne   .Lx426_57
                        mov              r9, rax
                                                                                        jmp   .Lx426_42
.Lx426_57:
                        cmp              esi, 2
                                                                                        jne   .Lx426_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx426_43
                        mov              r9, rax
                                                                                        jmp   .Lx426_42
.Lx426_58:
                        cmp              eax, 72
                                                                                        jne   .Lx426_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx426_43
                        cmp              rax, r9
                                                                                        je    .Lx426_43
                        mov              r9, rax
                                                                                        jmp   .Lx426_42
.Lx426_43:
                        cmp              r8, r9
                                                                                        je    .Lx426_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx426_44
                        cmp              eax, 104
                                                                                        je    .Lx426_44
                        cmp              eax, 72
                                                                                        jne   .Lx426_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx426_44
                                                                                        jmp   .Lx426_45
.Lx426_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx426_53
                        cmp              eax, 104
                                                                                        je    .Lx426_53
                        cmp              eax, 72
                                                                                        jne   .Lx426_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx426_53
                                                                                        jmp   .Lx426_46
.Lx426_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx426_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx426_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx426_51
.Lx426_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx426_47
                        cmp              eax, 104
                                                                                        je    .Lx426_47
                        cmp              eax, 72
                                                                                        jne   .Lx426_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx426_47
                                                                                        jmp   .Lx426_48
.Lx426_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx426_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx426_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx426_51
.Lx426_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx426_49
                        cmp              edx, 80
                                                                                        je    .Lx426_53
                                                                                        jmp   .Lx426_52
.Lx426_49:
                        cmp              edx, 80
                                                                                        je    .Lx426_52
                        cmp              ecx, 5
                                                                                        je    .Lx426_53
                        cmp              edx, 5
                                                                                        je    .Lx426_53
                        cmp              ecx, 3
                                                                                        jne   .Lx426_50
                        cmp              edx, 3
                                                                                        jne   .Lx426_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx426_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx426_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx426_51
                                                                                        jmp   .Lx426_52
.Lx426_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx426_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx426_53
.Lx426_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx426_54
.Lx426_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx426_54
.Lx426_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx426_54:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n350_var_ref_α
                                                                                        jmp   n355_call_builtin_prolog_α
n349_call_builtin_prolog_β:
                                                                                        jmp   n350_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n351_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n352_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n352_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx431_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx431_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx431_41
                        cmp              esi, 1
                                                                                        jne   .Lx431_55
                        mov              r8, rax
                                                                                        jmp   .Lx431_40
.Lx431_55:
                        cmp              esi, 2
                                                                                        jne   .Lx431_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx431_41
                        mov              r8, rax
                                                                                        jmp   .Lx431_40
.Lx431_56:
                        cmp              eax, 72
                                                                                        jne   .Lx431_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx431_41
                        cmp              rax, r8
                                                                                        je    .Lx431_41
                        mov              r8, rax
                                                                                        jmp   .Lx431_40
.Lx431_41:
                        lea              r9, [rbp + 224]
.Lx431_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx431_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx431_43
                        cmp              esi, 1
                                                                                        jne   .Lx431_57
                        mov              r9, rax
                                                                                        jmp   .Lx431_42
.Lx431_57:
                        cmp              esi, 2
                                                                                        jne   .Lx431_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx431_43
                        mov              r9, rax
                                                                                        jmp   .Lx431_42
.Lx431_58:
                        cmp              eax, 72
                                                                                        jne   .Lx431_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx431_43
                        cmp              rax, r9
                                                                                        je    .Lx431_43
                        mov              r9, rax
                                                                                        jmp   .Lx431_42
.Lx431_43:
                        cmp              r8, r9
                                                                                        je    .Lx431_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx431_44
                        cmp              eax, 104
                                                                                        je    .Lx431_44
                        cmp              eax, 72
                                                                                        jne   .Lx431_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx431_44
                                                                                        jmp   .Lx431_45
.Lx431_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx431_53
                        cmp              eax, 104
                                                                                        je    .Lx431_53
                        cmp              eax, 72
                                                                                        jne   .Lx431_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx431_53
                                                                                        jmp   .Lx431_46
.Lx431_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx431_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx431_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx431_51
.Lx431_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx431_47
                        cmp              eax, 104
                                                                                        je    .Lx431_47
                        cmp              eax, 72
                                                                                        jne   .Lx431_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx431_47
                                                                                        jmp   .Lx431_48
.Lx431_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx431_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx431_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx431_51
.Lx431_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx431_49
                        cmp              edx, 80
                                                                                        je    .Lx431_53
                                                                                        jmp   .Lx431_52
.Lx431_49:
                        cmp              edx, 80
                                                                                        je    .Lx431_52
                        cmp              ecx, 5
                                                                                        je    .Lx431_53
                        cmp              edx, 5
                                                                                        je    .Lx431_53
                        cmp              ecx, 3
                                                                                        jne   .Lx431_50
                        cmp              edx, 3
                                                                                        jne   .Lx431_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx431_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx431_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx431_51
                                                                                        jmp   .Lx431_52
.Lx431_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx431_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx431_53
.Lx431_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx431_54
.Lx431_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx431_54
.Lx431_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx431_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n353_move_label_α
                                                                                        jmp   n355_call_builtin_prolog_α
n352_call_builtin_prolog_β:
                                                                                        jmp   n353_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n353_move_label_α:
                        lea              rax, [rip + n355_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 112], rax
                                                                                        jmp   proc_all_diff5$2F5_γ
#-----------------------------------------------------------------------------------------------------------------------
n354_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 112]
n354_disjunction_β:
                                                                                        jmp   proc_all_diff5$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n355_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx436_240
                        add              rsp, 432
                                                                                        jmp   proc_all_diff5$2F5_ω
.Lx436_240:
                        add              rsp, 432
                                                                                        jmp   proc_all_diff5$2F5_ω
n355_call_builtin_prolog_β:
                        add              rsp, 432
                                                                                        jmp   proc_all_diff5$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_all_diff5$2F5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_all_diff5$2F5_β:
                                                                                        jmp   n354_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_all_diff5$2F5_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_all_diff5$2F5_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_member_of3$2F4_α
proc_member_of3$2F4_α:
proc_member_of3$2F4_α_body:
                        lea              rax, [rip + n450_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
#-----------------------------------------------------------------------------------------------------------------------
n437_call_builtin_prolog_α:
                        sub              rsp, 272
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx480_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx480_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx480_101
.Lx480_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx480_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx480_240
                        add              rsp, 272
                                                                                        jmp   proc_member_of3$2F4_ω
.Lx480_240:
                                                                                        jmp   n438_var_ref_α
n437_call_builtin_prolog_β:
                        add              rsp, 272
                                                                                        jmp   proc_member_of3$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n438_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n439_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n440_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n440_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1152]
                        lea              r8, [rbp + 1152]
.Lx485_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx485_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx485_41
                        cmp              esi, 1
                                                                                        jne   .Lx485_55
                        mov              r8, rax
                                                                                        jmp   .Lx485_40
.Lx485_55:
                        cmp              esi, 2
                                                                                        jne   .Lx485_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx485_41
                        mov              r8, rax
                                                                                        jmp   .Lx485_40
.Lx485_56:
                        cmp              eax, 72
                                                                                        jne   .Lx485_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx485_41
                        cmp              rax, r8
                                                                                        je    .Lx485_41
                        mov              r8, rax
                                                                                        jmp   .Lx485_40
.Lx485_41:
                        lea              r9, [rbp + 1168]
.Lx485_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx485_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx485_43
                        cmp              esi, 1
                                                                                        jne   .Lx485_57
                        mov              r9, rax
                                                                                        jmp   .Lx485_42
.Lx485_57:
                        cmp              esi, 2
                                                                                        jne   .Lx485_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx485_43
                        mov              r9, rax
                                                                                        jmp   .Lx485_42
.Lx485_58:
                        cmp              eax, 72
                                                                                        jne   .Lx485_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx485_43
                        cmp              rax, r9
                                                                                        je    .Lx485_43
                        mov              r9, rax
                                                                                        jmp   .Lx485_42
.Lx485_43:
                        cmp              r8, r9
                                                                                        je    .Lx485_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx485_44
                        cmp              eax, 104
                                                                                        je    .Lx485_44
                        cmp              eax, 72
                                                                                        jne   .Lx485_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx485_44
                                                                                        jmp   .Lx485_45
.Lx485_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx485_53
                        cmp              eax, 104
                                                                                        je    .Lx485_53
                        cmp              eax, 72
                                                                                        jne   .Lx485_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx485_53
                                                                                        jmp   .Lx485_46
.Lx485_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx485_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx485_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx485_51
.Lx485_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx485_47
                        cmp              eax, 104
                                                                                        je    .Lx485_47
                        cmp              eax, 72
                                                                                        jne   .Lx485_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx485_47
                                                                                        jmp   .Lx485_48
.Lx485_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx485_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx485_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx485_51
.Lx485_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx485_49
                        cmp              edx, 80
                                                                                        je    .Lx485_53
                                                                                        jmp   .Lx485_52
.Lx485_49:
                        cmp              edx, 80
                                                                                        je    .Lx485_52
                        cmp              ecx, 5
                                                                                        je    .Lx485_53
                        cmp              edx, 5
                                                                                        je    .Lx485_53
                        cmp              ecx, 3
                                                                                        jne   .Lx485_50
                        cmp              edx, 3
                                                                                        jne   .Lx485_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx485_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx485_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx485_51
                                                                                        jmp   .Lx485_52
.Lx485_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx485_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx485_53
.Lx485_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx485_54
.Lx485_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx485_54
.Lx485_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx485_54:
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 104
                                                                                        je    n451_call_builtin_prolog_α
                                                                                        jmp   n441_var_ref_α
n440_call_builtin_prolog_β:
                                                                                        jmp   n451_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n441_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n442_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n443_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n443_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1072]
                        lea              r8, [rbp + 1072]
.Lx490_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx490_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx490_41
                        cmp              esi, 1
                                                                                        jne   .Lx490_55
                        mov              r8, rax
                                                                                        jmp   .Lx490_40
.Lx490_55:
                        cmp              esi, 2
                                                                                        jne   .Lx490_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx490_41
                        mov              r8, rax
                                                                                        jmp   .Lx490_40
.Lx490_56:
                        cmp              eax, 72
                                                                                        jne   .Lx490_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx490_41
                        cmp              rax, r8
                                                                                        je    .Lx490_41
                        mov              r8, rax
                                                                                        jmp   .Lx490_40
.Lx490_41:
                        lea              r9, [rbp + 1088]
.Lx490_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx490_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx490_43
                        cmp              esi, 1
                                                                                        jne   .Lx490_57
                        mov              r9, rax
                                                                                        jmp   .Lx490_42
.Lx490_57:
                        cmp              esi, 2
                                                                                        jne   .Lx490_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx490_43
                        mov              r9, rax
                                                                                        jmp   .Lx490_42
.Lx490_58:
                        cmp              eax, 72
                                                                                        jne   .Lx490_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx490_43
                        cmp              rax, r9
                                                                                        je    .Lx490_43
                        mov              r9, rax
                                                                                        jmp   .Lx490_42
.Lx490_43:
                        cmp              r8, r9
                                                                                        je    .Lx490_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx490_44
                        cmp              eax, 104
                                                                                        je    .Lx490_44
                        cmp              eax, 72
                                                                                        jne   .Lx490_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx490_44
                                                                                        jmp   .Lx490_45
.Lx490_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx490_53
                        cmp              eax, 104
                                                                                        je    .Lx490_53
                        cmp              eax, 72
                                                                                        jne   .Lx490_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx490_53
                                                                                        jmp   .Lx490_46
.Lx490_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx490_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx490_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx490_51
.Lx490_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx490_47
                        cmp              eax, 104
                                                                                        je    .Lx490_47
                        cmp              eax, 72
                                                                                        jne   .Lx490_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx490_47
                                                                                        jmp   .Lx490_48
.Lx490_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx490_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx490_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx490_51
.Lx490_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx490_49
                        cmp              edx, 80
                                                                                        je    .Lx490_53
                                                                                        jmp   .Lx490_52
.Lx490_49:
                        cmp              edx, 80
                                                                                        je    .Lx490_52
                        cmp              ecx, 5
                                                                                        je    .Lx490_53
                        cmp              edx, 5
                                                                                        je    .Lx490_53
                        cmp              ecx, 3
                                                                                        jne   .Lx490_50
                        cmp              edx, 3
                                                                                        jne   .Lx490_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx490_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx490_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx490_51
                                                                                        jmp   .Lx490_52
.Lx490_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx490_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx490_53
.Lx490_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx490_54
.Lx490_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx490_54
.Lx490_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx490_54:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n451_call_builtin_prolog_α
                                                                                        jmp   n444_var_ref_α
n443_call_builtin_prolog_β:
                                                                                        jmp   n451_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n444_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n445_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n446_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n446_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 992]
                        lea              r8, [rbp + 992]
.Lx495_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx495_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx495_41
                        cmp              esi, 1
                                                                                        jne   .Lx495_55
                        mov              r8, rax
                                                                                        jmp   .Lx495_40
.Lx495_55:
                        cmp              esi, 2
                                                                                        jne   .Lx495_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx495_41
                        mov              r8, rax
                                                                                        jmp   .Lx495_40
.Lx495_56:
                        cmp              eax, 72
                                                                                        jne   .Lx495_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx495_41
                        cmp              rax, r8
                                                                                        je    .Lx495_41
                        mov              r8, rax
                                                                                        jmp   .Lx495_40
.Lx495_41:
                        lea              r9, [rbp + 1008]
.Lx495_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx495_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx495_43
                        cmp              esi, 1
                                                                                        jne   .Lx495_57
                        mov              r9, rax
                                                                                        jmp   .Lx495_42
.Lx495_57:
                        cmp              esi, 2
                                                                                        jne   .Lx495_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx495_43
                        mov              r9, rax
                                                                                        jmp   .Lx495_42
.Lx495_58:
                        cmp              eax, 72
                                                                                        jne   .Lx495_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx495_43
                        cmp              rax, r9
                                                                                        je    .Lx495_43
                        mov              r9, rax
                                                                                        jmp   .Lx495_42
.Lx495_43:
                        cmp              r8, r9
                                                                                        je    .Lx495_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx495_44
                        cmp              eax, 104
                                                                                        je    .Lx495_44
                        cmp              eax, 72
                                                                                        jne   .Lx495_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx495_44
                                                                                        jmp   .Lx495_45
.Lx495_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx495_53
                        cmp              eax, 104
                                                                                        je    .Lx495_53
                        cmp              eax, 72
                                                                                        jne   .Lx495_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx495_53
                                                                                        jmp   .Lx495_46
.Lx495_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx495_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx495_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx495_51
.Lx495_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx495_47
                        cmp              eax, 104
                                                                                        je    .Lx495_47
                        cmp              eax, 72
                                                                                        jne   .Lx495_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx495_47
                                                                                        jmp   .Lx495_48
.Lx495_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx495_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx495_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx495_51
.Lx495_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx495_49
                        cmp              edx, 80
                                                                                        je    .Lx495_53
                                                                                        jmp   .Lx495_52
.Lx495_49:
                        cmp              edx, 80
                                                                                        je    .Lx495_52
                        cmp              ecx, 5
                                                                                        je    .Lx495_53
                        cmp              edx, 5
                                                                                        je    .Lx495_53
                        cmp              ecx, 3
                                                                                        jne   .Lx495_50
                        cmp              edx, 3
                                                                                        jne   .Lx495_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx495_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx495_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx495_51
                                                                                        jmp   .Lx495_52
.Lx495_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx495_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx495_53
.Lx495_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx495_54
.Lx495_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx495_54
.Lx495_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx495_54:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 104
                                                                                        je    n451_call_builtin_prolog_α
                                                                                        jmp   n447_var_ref_α
n446_call_builtin_prolog_β:
                                                                                        jmp   n451_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n447_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n448_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n448_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n449_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n449_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 912]
                        lea              r8, [rbp + 912]
.Lx500_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx500_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx500_41
                        cmp              esi, 1
                                                                                        jne   .Lx500_55
                        mov              r8, rax
                                                                                        jmp   .Lx500_40
.Lx500_55:
                        cmp              esi, 2
                                                                                        jne   .Lx500_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx500_41
                        mov              r8, rax
                                                                                        jmp   .Lx500_40
.Lx500_56:
                        cmp              eax, 72
                                                                                        jne   .Lx500_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx500_41
                        cmp              rax, r8
                                                                                        je    .Lx500_41
                        mov              r8, rax
                                                                                        jmp   .Lx500_40
.Lx500_41:
                        lea              r9, [rbp + 928]
.Lx500_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx500_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx500_43
                        cmp              esi, 1
                                                                                        jne   .Lx500_57
                        mov              r9, rax
                                                                                        jmp   .Lx500_42
.Lx500_57:
                        cmp              esi, 2
                                                                                        jne   .Lx500_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx500_43
                        mov              r9, rax
                                                                                        jmp   .Lx500_42
.Lx500_58:
                        cmp              eax, 72
                                                                                        jne   .Lx500_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx500_43
                        cmp              rax, r9
                                                                                        je    .Lx500_43
                        mov              r9, rax
                                                                                        jmp   .Lx500_42
.Lx500_43:
                        cmp              r8, r9
                                                                                        je    .Lx500_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx500_44
                        cmp              eax, 104
                                                                                        je    .Lx500_44
                        cmp              eax, 72
                                                                                        jne   .Lx500_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx500_44
                                                                                        jmp   .Lx500_45
.Lx500_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx500_53
                        cmp              eax, 104
                                                                                        je    .Lx500_53
                        cmp              eax, 72
                                                                                        jne   .Lx500_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx500_53
                                                                                        jmp   .Lx500_46
.Lx500_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx500_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx500_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx500_51
.Lx500_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx500_47
                        cmp              eax, 104
                                                                                        je    .Lx500_47
                        cmp              eax, 72
                                                                                        jne   .Lx500_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx500_47
                                                                                        jmp   .Lx500_48
.Lx500_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx500_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx500_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx500_51
.Lx500_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx500_49
                        cmp              edx, 80
                                                                                        je    .Lx500_53
                                                                                        jmp   .Lx500_52
.Lx500_49:
                        cmp              edx, 80
                                                                                        je    .Lx500_52
                        cmp              ecx, 5
                                                                                        je    .Lx500_53
                        cmp              edx, 5
                                                                                        je    .Lx500_53
                        cmp              ecx, 3
                                                                                        jne   .Lx500_50
                        cmp              edx, 3
                                                                                        jne   .Lx500_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx500_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx500_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx500_51
                                                                                        jmp   .Lx500_52
.Lx500_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx500_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx500_53
.Lx500_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx500_54
.Lx500_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx500_54
.Lx500_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx500_54:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 104
                                                                                        je    n451_call_builtin_prolog_α
                                                                                        jmp   n450_suspend_α
n449_call_builtin_prolog_β:
                                                                                        jmp   n451_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n450_suspend_α:
                        lea              rax, [rip + n450_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 272
                                                                                        jmp   proc_member_of3$2F4_γ
n450_suspend_β:
                                                                                        jmp   n451_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n451_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 104
                                                                                        je    proc_member_of3$2F4_ω
                                                                                        jmp   n452_var_ref_α
n451_call_builtin_prolog_β:
                                                                                        jmp   proc_member_of3$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n453_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n453_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n454_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n454_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 784]
                        lea              r8, [rbp + 784]
.Lx508_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx508_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx508_41
                        cmp              esi, 1
                                                                                        jne   .Lx508_55
                        mov              r8, rax
                                                                                        jmp   .Lx508_40
.Lx508_55:
                        cmp              esi, 2
                                                                                        jne   .Lx508_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx508_41
                        mov              r8, rax
                                                                                        jmp   .Lx508_40
.Lx508_56:
                        cmp              eax, 72
                                                                                        jne   .Lx508_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx508_41
                        cmp              rax, r8
                                                                                        je    .Lx508_41
                        mov              r8, rax
                                                                                        jmp   .Lx508_40
.Lx508_41:
                        lea              r9, [rbp + 800]
.Lx508_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx508_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx508_43
                        cmp              esi, 1
                                                                                        jne   .Lx508_57
                        mov              r9, rax
                                                                                        jmp   .Lx508_42
.Lx508_57:
                        cmp              esi, 2
                                                                                        jne   .Lx508_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx508_43
                        mov              r9, rax
                                                                                        jmp   .Lx508_42
.Lx508_58:
                        cmp              eax, 72
                                                                                        jne   .Lx508_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx508_43
                        cmp              rax, r9
                                                                                        je    .Lx508_43
                        mov              r9, rax
                                                                                        jmp   .Lx508_42
.Lx508_43:
                        cmp              r8, r9
                                                                                        je    .Lx508_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx508_44
                        cmp              eax, 104
                                                                                        je    .Lx508_44
                        cmp              eax, 72
                                                                                        jne   .Lx508_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx508_44
                                                                                        jmp   .Lx508_45
.Lx508_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx508_53
                        cmp              eax, 104
                                                                                        je    .Lx508_53
                        cmp              eax, 72
                                                                                        jne   .Lx508_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx508_53
                                                                                        jmp   .Lx508_46
.Lx508_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx508_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx508_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx508_51
.Lx508_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx508_47
                        cmp              eax, 104
                                                                                        je    .Lx508_47
                        cmp              eax, 72
                                                                                        jne   .Lx508_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx508_47
                                                                                        jmp   .Lx508_48
.Lx508_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx508_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx508_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx508_51
.Lx508_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx508_49
                        cmp              edx, 80
                                                                                        je    .Lx508_53
                                                                                        jmp   .Lx508_52
.Lx508_49:
                        cmp              edx, 80
                                                                                        je    .Lx508_52
                        cmp              ecx, 5
                                                                                        je    .Lx508_53
                        cmp              edx, 5
                                                                                        je    .Lx508_53
                        cmp              ecx, 3
                                                                                        jne   .Lx508_50
                        cmp              edx, 3
                                                                                        jne   .Lx508_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx508_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx508_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx508_51
                                                                                        jmp   .Lx508_52
.Lx508_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx508_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx508_53
.Lx508_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx508_54
.Lx508_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx508_54
.Lx508_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx508_54:
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n465_call_builtin_prolog_α
                                                                                        jmp   n455_var_ref_α
n454_call_builtin_prolog_β:
                                                                                        jmp   n465_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n455_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n456_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n457_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n457_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 704]
                        lea              r8, [rbp + 704]
.Lx513_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx513_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx513_41
                        cmp              esi, 1
                                                                                        jne   .Lx513_55
                        mov              r8, rax
                                                                                        jmp   .Lx513_40
.Lx513_55:
                        cmp              esi, 2
                                                                                        jne   .Lx513_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx513_41
                        mov              r8, rax
                                                                                        jmp   .Lx513_40
.Lx513_56:
                        cmp              eax, 72
                                                                                        jne   .Lx513_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx513_41
                        cmp              rax, r8
                                                                                        je    .Lx513_41
                        mov              r8, rax
                                                                                        jmp   .Lx513_40
.Lx513_41:
                        lea              r9, [rbp + 720]
.Lx513_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx513_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx513_43
                        cmp              esi, 1
                                                                                        jne   .Lx513_57
                        mov              r9, rax
                                                                                        jmp   .Lx513_42
.Lx513_57:
                        cmp              esi, 2
                                                                                        jne   .Lx513_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx513_43
                        mov              r9, rax
                                                                                        jmp   .Lx513_42
.Lx513_58:
                        cmp              eax, 72
                                                                                        jne   .Lx513_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx513_43
                        cmp              rax, r9
                                                                                        je    .Lx513_43
                        mov              r9, rax
                                                                                        jmp   .Lx513_42
.Lx513_43:
                        cmp              r8, r9
                                                                                        je    .Lx513_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx513_44
                        cmp              eax, 104
                                                                                        je    .Lx513_44
                        cmp              eax, 72
                                                                                        jne   .Lx513_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx513_44
                                                                                        jmp   .Lx513_45
.Lx513_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx513_53
                        cmp              eax, 104
                                                                                        je    .Lx513_53
                        cmp              eax, 72
                                                                                        jne   .Lx513_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx513_53
                                                                                        jmp   .Lx513_46
.Lx513_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx513_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx513_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx513_51
.Lx513_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx513_47
                        cmp              eax, 104
                                                                                        je    .Lx513_47
                        cmp              eax, 72
                                                                                        jne   .Lx513_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx513_47
                                                                                        jmp   .Lx513_48
.Lx513_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx513_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx513_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx513_51
.Lx513_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx513_49
                        cmp              edx, 80
                                                                                        je    .Lx513_53
                                                                                        jmp   .Lx513_52
.Lx513_49:
                        cmp              edx, 80
                                                                                        je    .Lx513_52
                        cmp              ecx, 5
                                                                                        je    .Lx513_53
                        cmp              edx, 5
                                                                                        je    .Lx513_53
                        cmp              ecx, 3
                                                                                        jne   .Lx513_50
                        cmp              edx, 3
                                                                                        jne   .Lx513_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx513_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx513_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx513_51
                                                                                        jmp   .Lx513_52
.Lx513_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx513_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx513_53
.Lx513_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx513_54
.Lx513_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx513_54
.Lx513_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx513_54:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n465_call_builtin_prolog_α
                                                                                        jmp   n458_var_ref_α
n457_call_builtin_prolog_β:
                                                                                        jmp   n465_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n458_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n459_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n459_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n460_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n460_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 624]
                        lea              r8, [rbp + 624]
.Lx518_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx518_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx518_41
                        cmp              esi, 1
                                                                                        jne   .Lx518_55
                        mov              r8, rax
                                                                                        jmp   .Lx518_40
.Lx518_55:
                        cmp              esi, 2
                                                                                        jne   .Lx518_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx518_41
                        mov              r8, rax
                                                                                        jmp   .Lx518_40
.Lx518_56:
                        cmp              eax, 72
                                                                                        jne   .Lx518_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx518_41
                        cmp              rax, r8
                                                                                        je    .Lx518_41
                        mov              r8, rax
                                                                                        jmp   .Lx518_40
.Lx518_41:
                        lea              r9, [rbp + 640]
.Lx518_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx518_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx518_43
                        cmp              esi, 1
                                                                                        jne   .Lx518_57
                        mov              r9, rax
                                                                                        jmp   .Lx518_42
.Lx518_57:
                        cmp              esi, 2
                                                                                        jne   .Lx518_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx518_43
                        mov              r9, rax
                                                                                        jmp   .Lx518_42
.Lx518_58:
                        cmp              eax, 72
                                                                                        jne   .Lx518_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx518_43
                        cmp              rax, r9
                                                                                        je    .Lx518_43
                        mov              r9, rax
                                                                                        jmp   .Lx518_42
.Lx518_43:
                        cmp              r8, r9
                                                                                        je    .Lx518_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx518_44
                        cmp              eax, 104
                                                                                        je    .Lx518_44
                        cmp              eax, 72
                                                                                        jne   .Lx518_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx518_44
                                                                                        jmp   .Lx518_45
.Lx518_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx518_53
                        cmp              eax, 104
                                                                                        je    .Lx518_53
                        cmp              eax, 72
                                                                                        jne   .Lx518_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx518_53
                                                                                        jmp   .Lx518_46
.Lx518_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx518_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx518_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx518_51
.Lx518_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx518_47
                        cmp              eax, 104
                                                                                        je    .Lx518_47
                        cmp              eax, 72
                                                                                        jne   .Lx518_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx518_47
                                                                                        jmp   .Lx518_48
.Lx518_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx518_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx518_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx518_51
.Lx518_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx518_49
                        cmp              edx, 80
                                                                                        je    .Lx518_53
                                                                                        jmp   .Lx518_52
.Lx518_49:
                        cmp              edx, 80
                                                                                        je    .Lx518_52
                        cmp              ecx, 5
                                                                                        je    .Lx518_53
                        cmp              edx, 5
                                                                                        je    .Lx518_53
                        cmp              ecx, 3
                                                                                        jne   .Lx518_50
                        cmp              edx, 3
                                                                                        jne   .Lx518_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx518_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx518_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx518_51
                                                                                        jmp   .Lx518_52
.Lx518_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx518_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx518_53
.Lx518_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx518_54
.Lx518_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx518_54
.Lx518_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx518_54:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n465_call_builtin_prolog_α
                                                                                        jmp   n461_var_ref_α
n460_call_builtin_prolog_β:
                                                                                        jmp   n465_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n461_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n462_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n462_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n463_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n463_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 544]
                        lea              r8, [rbp + 544]
.Lx523_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx523_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx523_41
                        cmp              esi, 1
                                                                                        jne   .Lx523_55
                        mov              r8, rax
                                                                                        jmp   .Lx523_40
.Lx523_55:
                        cmp              esi, 2
                                                                                        jne   .Lx523_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx523_41
                        mov              r8, rax
                                                                                        jmp   .Lx523_40
.Lx523_56:
                        cmp              eax, 72
                                                                                        jne   .Lx523_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx523_41
                        cmp              rax, r8
                                                                                        je    .Lx523_41
                        mov              r8, rax
                                                                                        jmp   .Lx523_40
.Lx523_41:
                        lea              r9, [rbp + 560]
.Lx523_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx523_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx523_43
                        cmp              esi, 1
                                                                                        jne   .Lx523_57
                        mov              r9, rax
                                                                                        jmp   .Lx523_42
.Lx523_57:
                        cmp              esi, 2
                                                                                        jne   .Lx523_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx523_43
                        mov              r9, rax
                                                                                        jmp   .Lx523_42
.Lx523_58:
                        cmp              eax, 72
                                                                                        jne   .Lx523_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx523_43
                        cmp              rax, r9
                                                                                        je    .Lx523_43
                        mov              r9, rax
                                                                                        jmp   .Lx523_42
.Lx523_43:
                        cmp              r8, r9
                                                                                        je    .Lx523_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx523_44
                        cmp              eax, 104
                                                                                        je    .Lx523_44
                        cmp              eax, 72
                                                                                        jne   .Lx523_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx523_44
                                                                                        jmp   .Lx523_45
.Lx523_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx523_53
                        cmp              eax, 104
                                                                                        je    .Lx523_53
                        cmp              eax, 72
                                                                                        jne   .Lx523_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx523_53
                                                                                        jmp   .Lx523_46
.Lx523_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx523_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx523_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx523_51
.Lx523_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx523_47
                        cmp              eax, 104
                                                                                        je    .Lx523_47
                        cmp              eax, 72
                                                                                        jne   .Lx523_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx523_47
                                                                                        jmp   .Lx523_48
.Lx523_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx523_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx523_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx523_51
.Lx523_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx523_49
                        cmp              edx, 80
                                                                                        je    .Lx523_53
                                                                                        jmp   .Lx523_52
.Lx523_49:
                        cmp              edx, 80
                                                                                        je    .Lx523_52
                        cmp              ecx, 5
                                                                                        je    .Lx523_53
                        cmp              edx, 5
                                                                                        je    .Lx523_53
                        cmp              ecx, 3
                                                                                        jne   .Lx523_50
                        cmp              edx, 3
                                                                                        jne   .Lx523_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx523_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx523_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx523_51
                                                                                        jmp   .Lx523_52
.Lx523_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx523_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx523_53
.Lx523_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx523_54
.Lx523_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx523_54
.Lx523_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx523_54:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        je    n465_call_builtin_prolog_α
                                                                                        jmp   n464_suspend_α
n463_call_builtin_prolog_β:
                                                                                        jmp   n465_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n464_suspend_α:
                        lea              rax, [rip + n464_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member_of3$2F4_γ
n464_suspend_β:
                                                                                        jmp   n465_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n465_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    proc_member_of3$2F4_ω
                                                                                        jmp   n466_var_ref_α
n465_call_builtin_prolog_β:
                                                                                        jmp   proc_member_of3$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n466_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n467_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n467_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n468_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n468_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 416]
                        lea              r8, [rbp + 416]
.Lx531_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx531_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx531_41
                        cmp              esi, 1
                                                                                        jne   .Lx531_55
                        mov              r8, rax
                                                                                        jmp   .Lx531_40
.Lx531_55:
                        cmp              esi, 2
                                                                                        jne   .Lx531_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx531_41
                        mov              r8, rax
                                                                                        jmp   .Lx531_40
.Lx531_56:
                        cmp              eax, 72
                                                                                        jne   .Lx531_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx531_41
                        cmp              rax, r8
                                                                                        je    .Lx531_41
                        mov              r8, rax
                                                                                        jmp   .Lx531_40
.Lx531_41:
                        lea              r9, [rbp + 432]
.Lx531_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx531_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx531_43
                        cmp              esi, 1
                                                                                        jne   .Lx531_57
                        mov              r9, rax
                                                                                        jmp   .Lx531_42
.Lx531_57:
                        cmp              esi, 2
                                                                                        jne   .Lx531_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx531_43
                        mov              r9, rax
                                                                                        jmp   .Lx531_42
.Lx531_58:
                        cmp              eax, 72
                                                                                        jne   .Lx531_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx531_43
                        cmp              rax, r9
                                                                                        je    .Lx531_43
                        mov              r9, rax
                                                                                        jmp   .Lx531_42
.Lx531_43:
                        cmp              r8, r9
                                                                                        je    .Lx531_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx531_44
                        cmp              eax, 104
                                                                                        je    .Lx531_44
                        cmp              eax, 72
                                                                                        jne   .Lx531_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx531_44
                                                                                        jmp   .Lx531_45
.Lx531_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx531_53
                        cmp              eax, 104
                                                                                        je    .Lx531_53
                        cmp              eax, 72
                                                                                        jne   .Lx531_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx531_53
                                                                                        jmp   .Lx531_46
.Lx531_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx531_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx531_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx531_51
.Lx531_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx531_47
                        cmp              eax, 104
                                                                                        je    .Lx531_47
                        cmp              eax, 72
                                                                                        jne   .Lx531_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx531_47
                                                                                        jmp   .Lx531_48
.Lx531_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx531_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx531_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx531_51
.Lx531_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx531_49
                        cmp              edx, 80
                                                                                        je    .Lx531_53
                                                                                        jmp   .Lx531_52
.Lx531_49:
                        cmp              edx, 80
                                                                                        je    .Lx531_52
                        cmp              ecx, 5
                                                                                        je    .Lx531_53
                        cmp              edx, 5
                                                                                        je    .Lx531_53
                        cmp              ecx, 3
                                                                                        jne   .Lx531_50
                        cmp              edx, 3
                                                                                        jne   .Lx531_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx531_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx531_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx531_51
                                                                                        jmp   .Lx531_52
.Lx531_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx531_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx531_53
.Lx531_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx531_54
.Lx531_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx531_54
.Lx531_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx531_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n479_call_builtin_prolog_α
                                                                                        jmp   n469_var_ref_α
n468_call_builtin_prolog_β:
                                                                                        jmp   n479_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n469_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n470_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n470_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n471_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n471_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 336]
                        lea              r8, [rbp + 336]
.Lx536_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx536_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx536_41
                        cmp              esi, 1
                                                                                        jne   .Lx536_55
                        mov              r8, rax
                                                                                        jmp   .Lx536_40
.Lx536_55:
                        cmp              esi, 2
                                                                                        jne   .Lx536_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx536_41
                        mov              r8, rax
                                                                                        jmp   .Lx536_40
.Lx536_56:
                        cmp              eax, 72
                                                                                        jne   .Lx536_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx536_41
                        cmp              rax, r8
                                                                                        je    .Lx536_41
                        mov              r8, rax
                                                                                        jmp   .Lx536_40
.Lx536_41:
                        lea              r9, [rbp + 352]
.Lx536_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx536_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx536_43
                        cmp              esi, 1
                                                                                        jne   .Lx536_57
                        mov              r9, rax
                                                                                        jmp   .Lx536_42
.Lx536_57:
                        cmp              esi, 2
                                                                                        jne   .Lx536_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx536_43
                        mov              r9, rax
                                                                                        jmp   .Lx536_42
.Lx536_58:
                        cmp              eax, 72
                                                                                        jne   .Lx536_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx536_43
                        cmp              rax, r9
                                                                                        je    .Lx536_43
                        mov              r9, rax
                                                                                        jmp   .Lx536_42
.Lx536_43:
                        cmp              r8, r9
                                                                                        je    .Lx536_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx536_44
                        cmp              eax, 104
                                                                                        je    .Lx536_44
                        cmp              eax, 72
                                                                                        jne   .Lx536_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx536_44
                                                                                        jmp   .Lx536_45
.Lx536_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx536_53
                        cmp              eax, 104
                                                                                        je    .Lx536_53
                        cmp              eax, 72
                                                                                        jne   .Lx536_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx536_53
                                                                                        jmp   .Lx536_46
.Lx536_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx536_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx536_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx536_51
.Lx536_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx536_47
                        cmp              eax, 104
                                                                                        je    .Lx536_47
                        cmp              eax, 72
                                                                                        jne   .Lx536_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx536_47
                                                                                        jmp   .Lx536_48
.Lx536_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx536_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx536_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx536_51
.Lx536_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx536_49
                        cmp              edx, 80
                                                                                        je    .Lx536_53
                                                                                        jmp   .Lx536_52
.Lx536_49:
                        cmp              edx, 80
                                                                                        je    .Lx536_52
                        cmp              ecx, 5
                                                                                        je    .Lx536_53
                        cmp              edx, 5
                                                                                        je    .Lx536_53
                        cmp              ecx, 3
                                                                                        jne   .Lx536_50
                        cmp              edx, 3
                                                                                        jne   .Lx536_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx536_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx536_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx536_51
                                                                                        jmp   .Lx536_52
.Lx536_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx536_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx536_53
.Lx536_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx536_54
.Lx536_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx536_54
.Lx536_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx536_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n479_call_builtin_prolog_α
                                                                                        jmp   n472_var_ref_α
n471_call_builtin_prolog_β:
                                                                                        jmp   n479_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n472_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n473_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n473_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n474_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n474_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 256]
                        lea              r8, [rbp + 256]
.Lx541_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx541_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx541_41
                        cmp              esi, 1
                                                                                        jne   .Lx541_55
                        mov              r8, rax
                                                                                        jmp   .Lx541_40
.Lx541_55:
                        cmp              esi, 2
                                                                                        jne   .Lx541_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx541_41
                        mov              r8, rax
                                                                                        jmp   .Lx541_40
.Lx541_56:
                        cmp              eax, 72
                                                                                        jne   .Lx541_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx541_41
                        cmp              rax, r8
                                                                                        je    .Lx541_41
                        mov              r8, rax
                                                                                        jmp   .Lx541_40
.Lx541_41:
                        lea              r9, [rbp + 272]
.Lx541_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx541_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx541_43
                        cmp              esi, 1
                                                                                        jne   .Lx541_57
                        mov              r9, rax
                                                                                        jmp   .Lx541_42
.Lx541_57:
                        cmp              esi, 2
                                                                                        jne   .Lx541_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx541_43
                        mov              r9, rax
                                                                                        jmp   .Lx541_42
.Lx541_58:
                        cmp              eax, 72
                                                                                        jne   .Lx541_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx541_43
                        cmp              rax, r9
                                                                                        je    .Lx541_43
                        mov              r9, rax
                                                                                        jmp   .Lx541_42
.Lx541_43:
                        cmp              r8, r9
                                                                                        je    .Lx541_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx541_44
                        cmp              eax, 104
                                                                                        je    .Lx541_44
                        cmp              eax, 72
                                                                                        jne   .Lx541_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx541_44
                                                                                        jmp   .Lx541_45
.Lx541_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx541_53
                        cmp              eax, 104
                                                                                        je    .Lx541_53
                        cmp              eax, 72
                                                                                        jne   .Lx541_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx541_53
                                                                                        jmp   .Lx541_46
.Lx541_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx541_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx541_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx541_51
.Lx541_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx541_47
                        cmp              eax, 104
                                                                                        je    .Lx541_47
                        cmp              eax, 72
                                                                                        jne   .Lx541_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx541_47
                                                                                        jmp   .Lx541_48
.Lx541_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx541_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx541_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx541_51
.Lx541_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx541_49
                        cmp              edx, 80
                                                                                        je    .Lx541_53
                                                                                        jmp   .Lx541_52
.Lx541_49:
                        cmp              edx, 80
                                                                                        je    .Lx541_52
                        cmp              ecx, 5
                                                                                        je    .Lx541_53
                        cmp              edx, 5
                                                                                        je    .Lx541_53
                        cmp              ecx, 3
                                                                                        jne   .Lx541_50
                        cmp              edx, 3
                                                                                        jne   .Lx541_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx541_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx541_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx541_51
                                                                                        jmp   .Lx541_52
.Lx541_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx541_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx541_53
.Lx541_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx541_54
.Lx541_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx541_54
.Lx541_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx541_54:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n479_call_builtin_prolog_α
                                                                                        jmp   n475_var_ref_α
n474_call_builtin_prolog_β:
                                                                                        jmp   n479_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n475_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n476_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n476_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n477_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n477_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        lea              r8, [rbp + 176]
.Lx546_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx546_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_41
                        cmp              esi, 1
                                                                                        jne   .Lx546_55
                        mov              r8, rax
                                                                                        jmp   .Lx546_40
.Lx546_55:
                        cmp              esi, 2
                                                                                        jne   .Lx546_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx546_41
                        mov              r8, rax
                                                                                        jmp   .Lx546_40
.Lx546_56:
                        cmp              eax, 72
                                                                                        jne   .Lx546_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_41
                        cmp              rax, r8
                                                                                        je    .Lx546_41
                        mov              r8, rax
                                                                                        jmp   .Lx546_40
.Lx546_41:
                        lea              r9, [rbp + 192]
.Lx546_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx546_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_43
                        cmp              esi, 1
                                                                                        jne   .Lx546_57
                        mov              r9, rax
                                                                                        jmp   .Lx546_42
.Lx546_57:
                        cmp              esi, 2
                                                                                        jne   .Lx546_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx546_43
                        mov              r9, rax
                                                                                        jmp   .Lx546_42
.Lx546_58:
                        cmp              eax, 72
                                                                                        jne   .Lx546_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_43
                        cmp              rax, r9
                                                                                        je    .Lx546_43
                        mov              r9, rax
                                                                                        jmp   .Lx546_42
.Lx546_43:
                        cmp              r8, r9
                                                                                        je    .Lx546_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx546_44
                        cmp              eax, 104
                                                                                        je    .Lx546_44
                        cmp              eax, 72
                                                                                        jne   .Lx546_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx546_44
                                                                                        jmp   .Lx546_45
.Lx546_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx546_53
                        cmp              eax, 104
                                                                                        je    .Lx546_53
                        cmp              eax, 72
                                                                                        jne   .Lx546_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx546_53
                                                                                        jmp   .Lx546_46
.Lx546_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx546_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx546_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx546_51
.Lx546_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx546_47
                        cmp              eax, 104
                                                                                        je    .Lx546_47
                        cmp              eax, 72
                                                                                        jne   .Lx546_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx546_47
                                                                                        jmp   .Lx546_48
.Lx546_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx546_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx546_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx546_51
.Lx546_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx546_49
                        cmp              edx, 80
                                                                                        je    .Lx546_53
                                                                                        jmp   .Lx546_52
.Lx546_49:
                        cmp              edx, 80
                                                                                        je    .Lx546_52
                        cmp              ecx, 5
                                                                                        je    .Lx546_53
                        cmp              edx, 5
                                                                                        je    .Lx546_53
                        cmp              ecx, 3
                                                                                        jne   .Lx546_50
                        cmp              edx, 3
                                                                                        jne   .Lx546_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx546_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx546_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx546_51
                                                                                        jmp   .Lx546_52
.Lx546_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx546_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx546_53
.Lx546_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx546_54
.Lx546_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx546_54
.Lx546_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx546_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n479_call_builtin_prolog_α
                                                                                        jmp   n478_suspend_α
n477_call_builtin_prolog_β:
                                                                                        jmp   n479_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n478_suspend_α:
                        lea              rax, [rip + n478_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member_of3$2F4_γ
n478_suspend_β:
                                                                                        jmp   n479_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n479_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    proc_member_of3$2F4_ω
                                                                                        jmp   proc_member_of3$2F4_ω
n479_call_builtin_prolog_β:
                                                                                        jmp   proc_member_of3$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_member_of3$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_member_of3$2F4_β:
                                                                                        jmp   qword ptr [rbp + 1216]
#-----------------------------------------------------------------------------------------------------------------------
proc_member_of3$2F4_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_member_of3$2F4_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "last_name/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_last_name$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "$disj1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_$disj1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "puzzle/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_puzzle$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "$disj0/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_$disj0$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 512
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "all_diff5/5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_all_diff5$2F5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 5
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1472
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "member_of3/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_member_of3$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1280
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n550_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx555_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx555_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx555_101
.Lx555_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx555_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx555_240
                        add              rsp, 32
                                                                                        jmp   main_ω
.Lx555_240:
                                                                                        jmp   n551_call_proc_staged_α
n550_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n551_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              edi, 1                                         # idx
                        mov              esi, 0                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx557_1
                        lea              rcx, [rip + .Lx557_3]
                        lea              rdx, [rip + .Lx557_4]
                                                                                        jmp   rax
.Lx557_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx557_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx557_2
.Lx557_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx557_2
.Lx557_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx557_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx557_2
.Lx557_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx557_2
.Lx557_1:
                        call             rt_faildescr@PLT
.Lx557_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx557_240
                        add              rsp, 32
                                                                                        jmp   n554_call_builtin_prolog_α
.Lx557_240:
                                                                                        jmp   n552_move_label_α
n551_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx557_0:
                        .quad            .Lx557_0_s
.Lx557_0_s:
                        .string          "$disj1/0"
#-----------------------------------------------------------------------------------------------------------------------
n552_move_label_α:
                        lea              rax, [rip + n551_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                        add              rsp, 32
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n553_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n553_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n554_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n554_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n553_disjunction_α
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
