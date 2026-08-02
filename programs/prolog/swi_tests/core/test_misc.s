                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F1_α
proc_test$2F1_α:
proc_test$2F1_α_body:
                        lea              rax, [rip + n21_suspend_β]
                        mov              qword ptr [rbp + 720], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        sub              rsp, 592
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx23_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx23_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx23_101
.Lx23_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx23_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx23_240
                        add              rsp, 592
                                                                                        jmp   proc_test$2F1_ω
.Lx23_240:
                                                                                        jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        add              rsp, 592
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 704], 2                       # result
                        mov              dword ptr [rbp + 708], 14
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n3_call_builtin_prolog_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "cut_to_cleanup"
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 656]
                        mov              rsi, qword ptr [rip + .Lx27_2]
                                                                                        jmp   .Lx27_3
.Lx27_2:
                        .quad            .Lx27_2_s
.Lx27_2_s:
                        .string          "cut_to_cleanup"
.Lx27_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx27_240
                        add              rsp, 592
                                                                                        jmp   n22_call_builtin_prolog_α
.Lx27_240:
                                                                                        jmp   n4_lit_string_α
n3_call_builtin_prolog_β:
                        add              rsp, 592
                                                                                        jmp   n22_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 624], 2                       # result
                        mov              dword ptr [rbp + 628], 12
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n5_call_builtin_prolog_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "retractall/1"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn30:               .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn30]                          # fn
                        lea              rsi, [rbp + 608]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx29_240
                        add              rsp, 592
                                                                                        jmp   n22_call_builtin_prolog_α
.Lx29_240:
                                                                                        jmp   n6_var_ref_α
n5_call_builtin_prolog_β:
                        add              rsp, 592
                                                                                        jmp   n22_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 736]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n7_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx34_20
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx34_21
.Lx34_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 576]                     # v
                        mov              rdx, qword ptr [rbp + 584]                     # v
                        call             rt_arg_stage@PLT
.Lx34_21:
                        mov              rdi, qword ptr [rip + .Lx34_0]                 # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx34_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx34_3]
                        lea              rdx, [rip + .Lx34_4]
                                                                                        jmp   rax
.Lx34_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx34_2
.Lx34_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx34_2
.Lx34_1:
                        call             rt_faildescr@PLT
.Lx34_2:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx34_240
                        add              rsp, 592
                                                                                        jmp   n22_call_builtin_prolog_α
.Lx34_240:
                                                                                        jmp   n8_lit_string_α
n7_call_proc_staged_β:
                                                                                        jmp   n22_call_builtin_prolog_α
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "prolog_current_choice/1"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 7
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n9_lit_integer_α
.Lx35_0:
                        .quad            .Lx35_0_s
.Lx35_0_s:
                        .string          "between"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n10_lit_integer_α
.Lx36_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 288], 3                       # result
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n11_var_ref_α
.Lx37_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx40_240
                        add              rsp, 592
                                                                                        jmp   n22_call_builtin_prolog_α
.Lx40_240:
                                                                                        jmp   n13_lit_string_α
n12_call_builtin_prolog_β:
                        add              rsp, 592
                                                                                        jmp   n22_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 512], 2                       # result
                        mov              dword ptr [rbp + 516], 6
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n14_lit_string_α
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 432], 2                       # result
                        mov              dword ptr [rbp + 436], 2
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n15_call_builtin_prolog_α
.Lx42_0:
                        .quad            .Lx42_0_s
.Lx42_0_s:
                        .string          "cl"
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx43_240
                        add              rsp, 592
                                                                                        jmp   n22_call_builtin_prolog_α
.Lx43_240:
                                                                                        jmp   n16_call_proc_staged_α
n15_call_builtin_prolog_β:
                        add              rsp, 592
                                                                                        jmp   n22_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx45_20
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx45_21
.Lx45_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 320]                     # v
                        mov              rdx, qword ptr [rbp + 328]                     # v
                        call             rt_arg_stage@PLT
.Lx45_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx45_22
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx45_23
.Lx45_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 448]                     # v
                        mov              rdx, qword ptr [rbp + 456]                     # v
                        call             rt_arg_stage@PLT
.Lx45_23:
                        mov              rdi, qword ptr [rip + .Lx45_0]                 # name
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx45_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx45_3]
                        lea              rdx, [rip + .Lx45_4]
                                                                                        jmp   rax
.Lx45_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx45_2
.Lx45_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx45_2
.Lx45_1:
                        call             rt_faildescr@PLT
.Lx45_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n7_call_proc_staged_β
                                                                                        jmp   n17_var_ref_α
n16_call_proc_staged_β:
                                                                                        jmp   n7_call_proc_staged_β
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "call_cleanup/2"
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 736]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n18_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx49_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx49_21
.Lx49_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 192]                     # v
                        mov              rdx, qword ptr [rbp + 200]                     # v
                        call             rt_arg_stage@PLT
.Lx49_21:
                        mov              rdi, qword ptr [rip + .Lx49_0]                 # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx49_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx49_3]
                        lea              rdx, [rip + .Lx49_4]
                                                                                        jmp   rax
.Lx49_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx49_2
.Lx49_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx49_2
.Lx49_1:
                        call             rt_faildescr@PLT
.Lx49_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n16_call_proc_staged_β
                                                                                        jmp   n19_lit_string_α
n18_call_proc_staged_β:
                                                                                        jmp   n16_call_proc_staged_β
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "prolog_cut_to/1"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 2
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n20_call_builtin_prolog_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "cl"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn52:               .string          "$retract"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn52]                          # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n18_call_proc_staged_β
                                                                                        jmp   n21_suspend_α
n20_call_builtin_prolog_β:
                                                                                        jmp   n18_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n21_suspend_α:
                        lea              rax, [rip + n21_suspend_β]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 592
                                                                                        jmp   proc_test$2F1_γ
n21_suspend_β:
                                                                                        jmp   n18_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
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
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   proc_test$2F1_ω
n22_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_β:
                                                                                        jmp   qword ptr [rbp + 720]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_between$2F3_α
proc_between$2F3_α:
proc_between$2F3_α_body:
                        lea              rax, [rip + n60_suspend_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:
                        sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n57_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n58_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n59_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 128], 0
.Lx67_60:
                        .section         .rodata
.Lbynamegenfn27:        .string          "$between"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn27]                   # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 3                                         # nargs
                        lea              rcx, [rbp + 128]                               # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx67_240
                        add              rsp, 48
                                                                                        jmp   proc_between$2F3_ω
.Lx67_240:
                                                                                        jmp   n60_suspend_α
n59_call_builtin_gen_β:
                                                                                        jmp   .Lx67_60
#-----------------------------------------------------------------------------------------------------------------------
n60_suspend_α:
                        lea              rax, [rip + n60_suspend_β]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 48
                                                                                        jmp   proc_between$2F3_γ
n60_suspend_β:
                                                                                        jmp   n59_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F2_α
proc_test$2F2_α:
proc_test$2F2_α_body:
                        lea              rax, [rip + n86_suspend_β]
                        mov              qword ptr [rbp + 1344], rax
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
                        sub              rsp, 352
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx112_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx112_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx112_101
.Lx112_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx112_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx112_240
                        add              rsp, 352
                                                                                        jmp   proc_test$2F2_ω
.Lx112_240:
                                                                                        jmp   n71_var_ref_α
n70_call_builtin_prolog_β:
                        add              rsp, 352
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n72_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 1328], 2                      # result
                        mov              dword ptr [rbp + 1332], 14
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n73_call_builtin_prolog_α
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          "read_only_flag"
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1280]
                        mov              rsi, qword ptr [rip + .Lx116_2]
                                                                                        jmp   .Lx116_3
.Lx116_2:
                        .quad            .Lx116_2_s
.Lx116_2_s:
                        .string          "read_only_flag"
.Lx116_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx116_240
                        add              rsp, 352
                                                                                        jmp   n87_call_builtin_prolog_α
.Lx116_240:
                                                                                        jmp   n74_var_ref_α
n73_call_builtin_prolog_β:
                        add              rsp, 352
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 2
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n76_var_ref_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n77_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 1152], 2                      # result
                        mov              dword ptr [rbp + 1156], 4
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n78_call_builtin_prolog_α
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n78_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1184]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx123_240
                        add              rsp, 352
                                                                                        jmp   n87_call_builtin_prolog_α
.Lx123_240:
                                                                                        jmp   n79_call_builtin_prolog_α
n78_call_builtin_prolog_β:
                        add              rsp, 352
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1088]
                        lea              r8, [rbp + 1088]
.Lx124_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx124_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx124_41
                        cmp              esi, 1
                                                                                        jne   .Lx124_55
                        mov              r8, rax
                                                                                        jmp   .Lx124_40
.Lx124_55:
                        cmp              esi, 2
                                                                                        jne   .Lx124_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx124_41
                        mov              r8, rax
                                                                                        jmp   .Lx124_40
.Lx124_56:
                        cmp              eax, 72
                                                                                        jne   .Lx124_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx124_41
                        cmp              rax, r8
                                                                                        je    .Lx124_41
                        mov              r8, rax
                                                                                        jmp   .Lx124_40
.Lx124_41:
                        lea              r9, [rbp + 1104]
.Lx124_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx124_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx124_43
                        cmp              esi, 1
                                                                                        jne   .Lx124_57
                        mov              r9, rax
                                                                                        jmp   .Lx124_42
.Lx124_57:
                        cmp              esi, 2
                                                                                        jne   .Lx124_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx124_43
                        mov              r9, rax
                                                                                        jmp   .Lx124_42
.Lx124_58:
                        cmp              eax, 72
                                                                                        jne   .Lx124_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx124_43
                        cmp              rax, r9
                                                                                        je    .Lx124_43
                        mov              r9, rax
                                                                                        jmp   .Lx124_42
.Lx124_43:
                        cmp              r8, r9
                                                                                        je    .Lx124_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx124_44
                        cmp              eax, 104
                                                                                        je    .Lx124_44
                        cmp              eax, 72
                                                                                        jne   .Lx124_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx124_44
                                                                                        jmp   .Lx124_45
.Lx124_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx124_53
                        cmp              eax, 104
                                                                                        je    .Lx124_53
                        cmp              eax, 72
                                                                                        jne   .Lx124_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx124_53
                                                                                        jmp   .Lx124_46
.Lx124_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx124_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx124_53
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
                                                                                        jmp   .Lx124_51
.Lx124_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx124_47
                        cmp              eax, 104
                                                                                        je    .Lx124_47
                        cmp              eax, 72
                                                                                        jne   .Lx124_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx124_47
                                                                                        jmp   .Lx124_48
.Lx124_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx124_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx124_53
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
                                                                                        jmp   .Lx124_51
.Lx124_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx124_49
                        cmp              edx, 80
                                                                                        je    .Lx124_53
                                                                                        jmp   .Lx124_52
.Lx124_49:
                        cmp              edx, 80
                                                                                        je    .Lx124_52
                        cmp              ecx, 5
                                                                                        je    .Lx124_53
                        cmp              edx, 5
                                                                                        je    .Lx124_53
                        cmp              ecx, 3
                                                                                        jne   .Lx124_50
                        cmp              edx, 3
                                                                                        jne   .Lx124_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx124_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx124_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx124_51
                                                                                        jmp   .Lx124_52
.Lx124_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx124_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx124_53
.Lx124_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx124_54
.Lx124_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx124_54
.Lx124_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx124_54:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx124_240
                        add              rsp, 352
                                                                                        jmp   n87_call_builtin_prolog_α
.Lx124_240:
                                                                                        jmp   n80_lit_string_α
n79_call_builtin_prolog_β:
                        add              rsp, 352
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 992], 2                       # result
                        mov              dword ptr [rbp + 996], 4
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n81_var_ref_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "arch"
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n82_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n84_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n85_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx135_20
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx135_21
.Lx135_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 992]                     # v
                        mov              rdx, qword ptr [rbp + 1000]                    # v
                        call             rt_arg_stage@PLT
.Lx135_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx135_22
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx135_23
.Lx135_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1008]                    # v
                        mov              rdx, qword ptr [rbp + 1016]                    # v
                        call             rt_arg_stage@PLT
.Lx135_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx135_24
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx135_25
.Lx135_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 1024]                    # v
                        mov              rdx, qword ptr [rbp + 1032]                    # v
                        call             rt_arg_stage@PLT
.Lx135_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx135_26
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx135_27
.Lx135_26:
                        mov              edi, 3                                         # idx
                        mov              rsi, qword ptr [rbp + 1040]                    # v
                        mov              rdx, qword ptr [rbp + 1048]                    # v
                        call             rt_arg_stage@PLT
.Lx135_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx135_28
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx135_29
.Lx135_28:
                        mov              edi, 4                                         # idx
                        mov              rsi, qword ptr [rbp + 1056]                    # v
                        mov              rdx, qword ptr [rbp + 1064]                    # v
                        call             rt_arg_stage@PLT
.Lx135_29:
                        mov              rdi, qword ptr [rip + .Lx135_0]                # name
                        mov              esi, 5                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx135_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx135_3]
                        lea              rdx, [rip + .Lx135_4]
                                                                                        jmp   rax
.Lx135_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx135_2
.Lx135_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx135_2
.Lx135_1:
                        call             rt_faildescr@PLT
.Lx135_2:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx135_240
                        add              rsp, 352
                                                                                        jmp   n87_call_builtin_prolog_α
.Lx135_240:
                                                                                        jmp   n86_suspend_α
n85_call_proc_staged_β:
                                                                                        jmp   n87_call_builtin_prolog_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "$current_prolog_flag/5"
#-----------------------------------------------------------------------------------------------------------------------
n86_suspend_α:
                        lea              rax, [rip + n86_suspend_β]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 352
                                                                                        jmp   proc_test$2F2_γ
n86_suspend_β:
                                                                                        jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n88_var_ref_α
n87_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 832], 2                       # result
                        mov              dword ptr [rbp + 836], 6
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n90_call_builtin_prolog_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "cut_to"
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              rsi, qword ptr [rip + .Lx142_2]
                                                                                        jmp   .Lx142_3
.Lx142_2:
                        .quad            .Lx142_2_s
.Lx142_2_s:
                        .string          "cut_to"
.Lx142_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n111_call_builtin_prolog_α
                                                                                        jmp   n91_var_ref_α
n90_call_builtin_prolog_β:
                                                                                        jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n92_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 3
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n93_lit_string_α
.Lx145_0:
                        .quad            .Lx145_0_s
.Lx145_0_s:
                        .string          "all"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], 2
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n94_var_ref_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rbp + 576], 2                       # result
                        mov              dword ptr [rbp + 580], 1
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n96_lit_integer_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        mov              qword ptr [rbp + 480], 3                       # result
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n97_lit_string_α
.Lx150_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], 2
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n98_call_builtin_prolog_α
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n98_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n99_call_builtin_prolog_α
n98_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n100_call_builtin_prolog_α
n99_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n111_call_builtin_prolog_α
                                                                                        jmp   n101_call_builtin_prolog_α
n100_call_builtin_prolog_β:
                                                                                        jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        lea              r8, [rbp + 400]
.Lx155_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx155_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx155_41
                        cmp              esi, 1
                                                                                        jne   .Lx155_55
                        mov              r8, rax
                                                                                        jmp   .Lx155_40
.Lx155_55:
                        cmp              esi, 2
                                                                                        jne   .Lx155_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx155_41
                        mov              r8, rax
                                                                                        jmp   .Lx155_40
.Lx155_56:
                        cmp              eax, 72
                                                                                        jne   .Lx155_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx155_41
                        cmp              rax, r8
                                                                                        je    .Lx155_41
                        mov              r8, rax
                                                                                        jmp   .Lx155_40
.Lx155_41:
                        lea              r9, [rbp + 416]
.Lx155_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx155_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx155_43
                        cmp              esi, 1
                                                                                        jne   .Lx155_57
                        mov              r9, rax
                                                                                        jmp   .Lx155_42
.Lx155_57:
                        cmp              esi, 2
                                                                                        jne   .Lx155_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx155_43
                        mov              r9, rax
                                                                                        jmp   .Lx155_42
.Lx155_58:
                        cmp              eax, 72
                                                                                        jne   .Lx155_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx155_43
                        cmp              rax, r9
                                                                                        je    .Lx155_43
                        mov              r9, rax
                                                                                        jmp   .Lx155_42
.Lx155_43:
                        cmp              r8, r9
                                                                                        je    .Lx155_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx155_44
                        cmp              eax, 104
                                                                                        je    .Lx155_44
                        cmp              eax, 72
                                                                                        jne   .Lx155_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx155_44
                                                                                        jmp   .Lx155_45
.Lx155_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx155_53
                        cmp              eax, 104
                                                                                        je    .Lx155_53
                        cmp              eax, 72
                                                                                        jne   .Lx155_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx155_53
                                                                                        jmp   .Lx155_46
.Lx155_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx155_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx155_53
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
                                                                                        jmp   .Lx155_51
.Lx155_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx155_47
                        cmp              eax, 104
                                                                                        je    .Lx155_47
                        cmp              eax, 72
                                                                                        jne   .Lx155_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx155_47
                                                                                        jmp   .Lx155_48
.Lx155_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx155_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx155_53
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
                                                                                        jmp   .Lx155_51
.Lx155_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx155_49
                        cmp              edx, 80
                                                                                        je    .Lx155_53
                                                                                        jmp   .Lx155_52
.Lx155_49:
                        cmp              edx, 80
                                                                                        je    .Lx155_52
                        cmp              ecx, 5
                                                                                        je    .Lx155_53
                        cmp              edx, 5
                                                                                        je    .Lx155_53
                        cmp              ecx, 3
                                                                                        jne   .Lx155_50
                        cmp              edx, 3
                                                                                        jne   .Lx155_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx155_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx155_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx155_51
                                                                                        jmp   .Lx155_52
.Lx155_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx155_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx155_53
.Lx155_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx155_54
.Lx155_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx155_54
.Lx155_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx155_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n111_call_builtin_prolog_α
                                                                                        jmp   n102_var_ref_α
n101_call_builtin_prolog_β:
                                                                                        jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n103_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx159_20
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx159_21
.Lx159_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 368]                     # v
                        mov              rdx, qword ptr [rbp + 376]                     # v
                        call             rt_arg_stage@PLT
.Lx159_21:
                        mov              rdi, qword ptr [rip + .Lx159_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx159_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx159_3]
                        lea              rdx, [rip + .Lx159_4]
                                                                                        jmp   rax
.Lx159_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx159_2
.Lx159_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx159_2
.Lx159_1:
                        call             rt_faildescr@PLT
.Lx159_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n111_call_builtin_prolog_α
                                                                                        jmp   n104_lit_integer_α
n103_call_proc_staged_β:
                                                                                        jmp   n111_call_builtin_prolog_α
.Lx159_0:
                        .quad            .Lx159_0_s
.Lx159_0_s:
                        .string          "prolog_current_choice/1"
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:
                        mov              qword ptr [rbp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n105_lit_integer_α
.Lx160_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:
                        mov              qword ptr [rbp + 288], 3                       # result
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n106_var_ref_α
.Lx161_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n107_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n107_call_proc_staged_α:
                        mov              qword ptr [rbp + 240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx165_20
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx165_21
.Lx165_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 272]                     # v
                        mov              rdx, qword ptr [rbp + 280]                     # v
                        call             rt_arg_stage@PLT
.Lx165_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx165_22
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx165_23
.Lx165_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 288]                     # v
                        mov              rdx, qword ptr [rbp + 296]                     # v
                        call             rt_arg_stage@PLT
.Lx165_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx165_24
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx165_25
.Lx165_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 304]                     # v
                        mov              rdx, qword ptr [rbp + 312]                     # v
                        call             rt_arg_stage@PLT
.Lx165_25:
                        mov              edi, 1                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx165_1
                        lea              rcx, [rip + .Lx165_3]
                        lea              rdx, [rip + .Lx165_4]
                                                                                        jmp   rax
.Lx165_3:
                        mov              qword ptr [rbp + 248], rsp
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx165_5
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx165_2
.Lx165_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx165_2
.Lx165_4:
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx165_6
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx165_2
.Lx165_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx165_2
.Lx165_1:
                        call             rt_faildescr@PLT
.Lx165_2:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n103_call_proc_staged_β
                                                                                        jmp   n108_var_ref_α
n107_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 248]
                                                                                        jmp   qword ptr [rsp]
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n109_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx169_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx169_21
.Lx169_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 160]                     # v
                        mov              rdx, qword ptr [rbp + 168]                     # v
                        call             rt_arg_stage@PLT
.Lx169_21:
                        mov              rdi, qword ptr [rip + .Lx169_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx169_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx169_3]
                        lea              rdx, [rip + .Lx169_4]
                                                                                        jmp   rax
.Lx169_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx169_2
.Lx169_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx169_2
.Lx169_1:
                        call             rt_faildescr@PLT
.Lx169_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n107_call_proc_staged_β
                                                                                        jmp   n110_suspend_α
n109_call_proc_staged_β:
                                                                                        jmp   n107_call_proc_staged_β
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "prolog_cut_to/1"
#-----------------------------------------------------------------------------------------------------------------------
n110_suspend_α:
                        lea              rax, [rip + n110_suspend_β]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n110_suspend_β:
                                                                                        jmp   n109_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   proc_test$2F2_ω
n111_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1344]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
proc_pj_test$2F4_α_body:
                        lea              rax, [rip + n195_suspend_β]
                        mov              qword ptr [rbp + 3472], rax
#-----------------------------------------------------------------------------------------------------------------------
n173_call_builtin_prolog_α:
                        sub              rsp, 592
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx276_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx276_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx276_101
.Lx276_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx276_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx276_240
                        add              rsp, 592
                                                                                        jmp   proc_pj_test$2F4_ω
.Lx276_240:
                                                                                        jmp   n174_var_ref_α
n173_call_builtin_prolog_β:
                        add              rsp, 592
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                                                                                        jmp   n175_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:
                        mov              qword ptr [rbp + 3456], 2                      # result
                        mov              dword ptr [rbp + 3460], 4
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n176_call_builtin_prolog_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "misc"
#-----------------------------------------------------------------------------------------------------------------------
n176_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3416], rax
                        lea              rdi, [rbp + 3408]
                        mov              rsi, qword ptr [rip + .Lx280_2]
                                                                                        jmp   .Lx280_3
.Lx280_2:
                        .quad            .Lx280_2_s
.Lx280_2_s:
                        .string          "misc"
.Lx280_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 104
                                                                                        je    n196_call_builtin_prolog_α
                                                                                        jmp   n177_var_ref_α
n176_call_builtin_prolog_β:
                                                                                        jmp   n196_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:
                        mov              qword ptr [rbp + 3376], 2                      # result
                        mov              dword ptr [rbp + 3380], 14
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n179_call_builtin_prolog_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "read_only_flag"
#-----------------------------------------------------------------------------------------------------------------------
n179_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3336], rax
                        lea              rdi, [rbp + 3328]
                        mov              rsi, qword ptr [rip + .Lx284_2]
                                                                                        jmp   .Lx284_3
.Lx284_2:
                        .quad            .Lx284_2_s
.Lx284_2_s:
                        .string          "read_only_flag"
.Lx284_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        cmp              eax, 104
                                                                                        je    n196_call_builtin_prolog_α
                                                                                        jmp   n180_var_ref_α
n179_call_builtin_prolog_β:
                                                                                        jmp   n196_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n181_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        mov              qword ptr [rbp + 3296], 2                      # result
                        mov              dword ptr [rbp + 3300], 2
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n182_var_ref_α
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3488]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                                                                                        jmp   n183_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:
                        mov              qword ptr [rbp + 3200], 2                      # result
                        mov              dword ptr [rbp + 3204], 4
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n184_call_builtin_prolog_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3272], rax
                        lea              rdi, [rbp + 3232]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              eax, 104
                                                                                        je    n196_call_builtin_prolog_α
                                                                                        jmp   n185_call_builtin_prolog_α
n184_call_builtin_prolog_β:
                                                                                        jmp   n196_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3144], rax
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3160], rax
                        lea              rdi, [rbp + 3136]
                        lea              r8, [rbp + 3136]
.Lx292_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx292_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_41
                        cmp              esi, 1
                                                                                        jne   .Lx292_55
                        mov              r8, rax
                                                                                        jmp   .Lx292_40
.Lx292_55:
                        cmp              esi, 2
                                                                                        jne   .Lx292_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx292_41
                        mov              r8, rax
                                                                                        jmp   .Lx292_40
.Lx292_56:
                        cmp              eax, 72
                                                                                        jne   .Lx292_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_41
                        cmp              rax, r8
                                                                                        je    .Lx292_41
                        mov              r8, rax
                                                                                        jmp   .Lx292_40
.Lx292_41:
                        lea              r9, [rbp + 3152]
.Lx292_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx292_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_43
                        cmp              esi, 1
                                                                                        jne   .Lx292_57
                        mov              r9, rax
                                                                                        jmp   .Lx292_42
.Lx292_57:
                        cmp              esi, 2
                                                                                        jne   .Lx292_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx292_43
                        mov              r9, rax
                                                                                        jmp   .Lx292_42
.Lx292_58:
                        cmp              eax, 72
                                                                                        jne   .Lx292_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_43
                        cmp              rax, r9
                                                                                        je    .Lx292_43
                        mov              r9, rax
                                                                                        jmp   .Lx292_42
.Lx292_43:
                        cmp              r8, r9
                                                                                        je    .Lx292_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx292_44
                        cmp              eax, 104
                                                                                        je    .Lx292_44
                        cmp              eax, 72
                                                                                        jne   .Lx292_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx292_44
                                                                                        jmp   .Lx292_45
.Lx292_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx292_53
                        cmp              eax, 104
                                                                                        je    .Lx292_53
                        cmp              eax, 72
                                                                                        jne   .Lx292_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx292_53
                                                                                        jmp   .Lx292_46
.Lx292_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx292_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx292_53
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
                                                                                        jmp   .Lx292_51
.Lx292_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx292_47
                        cmp              eax, 104
                                                                                        je    .Lx292_47
                        cmp              eax, 72
                                                                                        jne   .Lx292_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx292_47
                                                                                        jmp   .Lx292_48
.Lx292_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx292_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx292_53
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
                                                                                        jmp   .Lx292_51
.Lx292_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx292_49
                        cmp              edx, 80
                                                                                        je    .Lx292_53
                                                                                        jmp   .Lx292_52
.Lx292_49:
                        cmp              edx, 80
                                                                                        je    .Lx292_52
                        cmp              ecx, 5
                                                                                        je    .Lx292_53
                        cmp              edx, 5
                                                                                        je    .Lx292_53
                        cmp              ecx, 3
                                                                                        jne   .Lx292_50
                        cmp              edx, 3
                                                                                        jne   .Lx292_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx292_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx292_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx292_51
                                                                                        jmp   .Lx292_52
.Lx292_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx292_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx292_53
.Lx292_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx292_54
.Lx292_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx292_54
.Lx292_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx292_54:
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 104
                                                                                        je    n196_call_builtin_prolog_α
                                                                                        jmp   n186_var_ref_α
n185_call_builtin_prolog_β:
                                                                                        jmp   n196_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n187_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:
                        mov              qword ptr [rbp + 3104], 2                      # result
                        mov              dword ptr [rbp + 3108], 20
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n188_lit_string_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "$current_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:
                        mov              qword ptr [rbp + 2896], 2                      # result
                        mov              dword ptr [rbp + 2900], 4
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n189_var_ref_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "arch"
#-----------------------------------------------------------------------------------------------------------------------
n189_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n190_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3520]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   n191_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n191_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3488]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                                                                                        jmp   n192_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3536]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n193_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n193_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3000], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 3032], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 3048], rax
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 3064], rax
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 3080], rax
                        lea              rdi, [rbp + 2992]
                        mov              esi, 6
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 104
                                                                                        je    n196_call_builtin_prolog_α
                                                                                        jmp   n194_call_builtin_prolog_α
n193_call_builtin_prolog_β:
                                                                                        jmp   n196_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n194_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2856], rax
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2872], rax
                        lea              rdi, [rbp + 2848]
                        lea              r8, [rbp + 2848]
.Lx306_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx306_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx306_41
                        cmp              esi, 1
                                                                                        jne   .Lx306_55
                        mov              r8, rax
                                                                                        jmp   .Lx306_40
.Lx306_55:
                        cmp              esi, 2
                                                                                        jne   .Lx306_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx306_41
                        mov              r8, rax
                                                                                        jmp   .Lx306_40
.Lx306_56:
                        cmp              eax, 72
                                                                                        jne   .Lx306_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx306_41
                        cmp              rax, r8
                                                                                        je    .Lx306_41
                        mov              r8, rax
                                                                                        jmp   .Lx306_40
.Lx306_41:
                        lea              r9, [rbp + 2864]
.Lx306_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx306_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx306_43
                        cmp              esi, 1
                                                                                        jne   .Lx306_57
                        mov              r9, rax
                                                                                        jmp   .Lx306_42
.Lx306_57:
                        cmp              esi, 2
                                                                                        jne   .Lx306_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx306_43
                        mov              r9, rax
                                                                                        jmp   .Lx306_42
.Lx306_58:
                        cmp              eax, 72
                                                                                        jne   .Lx306_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx306_43
                        cmp              rax, r9
                                                                                        je    .Lx306_43
                        mov              r9, rax
                                                                                        jmp   .Lx306_42
.Lx306_43:
                        cmp              r8, r9
                                                                                        je    .Lx306_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx306_44
                        cmp              eax, 104
                                                                                        je    .Lx306_44
                        cmp              eax, 72
                                                                                        jne   .Lx306_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx306_44
                                                                                        jmp   .Lx306_45
.Lx306_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx306_53
                        cmp              eax, 104
                                                                                        je    .Lx306_53
                        cmp              eax, 72
                                                                                        jne   .Lx306_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx306_53
                                                                                        jmp   .Lx306_46
.Lx306_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx306_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx306_53
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
                                                                                        jmp   .Lx306_51
.Lx306_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx306_47
                        cmp              eax, 104
                                                                                        je    .Lx306_47
                        cmp              eax, 72
                                                                                        jne   .Lx306_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx306_47
                                                                                        jmp   .Lx306_48
.Lx306_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx306_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx306_53
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
                                                                                        jmp   .Lx306_51
.Lx306_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx306_49
                        cmp              edx, 80
                                                                                        je    .Lx306_53
                                                                                        jmp   .Lx306_52
.Lx306_49:
                        cmp              edx, 80
                                                                                        je    .Lx306_52
                        cmp              ecx, 5
                                                                                        je    .Lx306_53
                        cmp              edx, 5
                                                                                        je    .Lx306_53
                        cmp              ecx, 3
                                                                                        jne   .Lx306_50
                        cmp              edx, 3
                                                                                        jne   .Lx306_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx306_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx306_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx306_51
                                                                                        jmp   .Lx306_52
.Lx306_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx306_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx306_53
.Lx306_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx306_54
.Lx306_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx306_54
.Lx306_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx306_54:
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 104
                                                                                        je    n196_call_builtin_prolog_α
                                                                                        jmp   n195_suspend_α
n194_call_builtin_prolog_β:
                                                                                        jmp   n196_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n195_suspend_α:
                        lea              rax, [rip + n195_suspend_β]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 592
                                                                                        jmp   proc_pj_test$2F4_γ
n195_suspend_β:
                                                                                        jmp   n196_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n196_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2808], rax
                        lea              rdi, [rbp + 2800]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n197_var_ref_α
n196_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   n198_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:
                        mov              qword ptr [rbp + 2768], 2                      # result
                        mov              dword ptr [rbp + 2772], 4
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n199_call_builtin_prolog_α
.Lx312_0:
                        .quad            .Lx312_0_s
.Lx312_0_s:
                        .string          "misc"
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2728], rax
                        lea              rdi, [rbp + 2720]
                        mov              rsi, qword ptr [rip + .Lx313_2]
                                                                                        jmp   .Lx313_3
.Lx313_2:
                        .quad            .Lx313_2_s
.Lx313_2_s:
                        .string          "misc"
.Lx313_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 104
                                                                                        je    n232_call_builtin_prolog_α
                                                                                        jmp   n200_var_ref_α
n199_call_builtin_prolog_β:
                                                                                        jmp   n232_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 2688], 2                      # result
                        mov              dword ptr [rbp + 2692], 6
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n202_call_builtin_prolog_α
.Lx316_0:
                        .quad            .Lx316_0_s
.Lx316_0_s:
                        .string          "cut_to"
#-----------------------------------------------------------------------------------------------------------------------
n202_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                        lea              rdi, [rbp + 2640]
                        mov              rsi, qword ptr [rip + .Lx317_2]
                                                                                        jmp   .Lx317_3
.Lx317_2:
                        .quad            .Lx317_2_s
.Lx317_2_s:
                        .string          "cut_to"
.Lx317_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 104
                                                                                        je    n232_call_builtin_prolog_α
                                                                                        jmp   n203_var_ref_α
n202_call_builtin_prolog_β:
                                                                                        jmp   n232_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n203_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n204_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:
                        mov              qword ptr [rbp + 2608], 2                      # result
                        mov              dword ptr [rbp + 2612], 3
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n205_lit_string_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "all"
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:
                        mov              qword ptr [rbp + 2528], 2                      # result
                        mov              dword ptr [rbp + 2532], 2
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n206_var_ref_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3488]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rbp + 2432], 2                      # result
                        mov              dword ptr [rbp + 2436], 1
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n208_lit_integer_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_integer_α:
                        mov              qword ptr [rbp + 2336], 3                      # result
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n209_lit_string_α
.Lx325_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:
                        mov              qword ptr [rbp + 2320], 2                      # result
                        mov              dword ptr [rbp + 2324], 2
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n210_call_builtin_prolog_α
.Lx326_0:
                        .quad            .Lx326_0_s
.Lx326_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n210_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2408], rax
                        lea              rdi, [rbp + 2368]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n211_call_builtin_prolog_α
n210_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n211_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2488], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2504], rax
                        lea              rdi, [rbp + 2464]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n212_call_builtin_prolog_α
n211_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n212_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2584], rax
                        lea              rdi, [rbp + 2560]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 104
                                                                                        je    n232_call_builtin_prolog_α
                                                                                        jmp   n213_call_builtin_prolog_α
n212_call_builtin_prolog_β:
                                                                                        jmp   n232_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n213_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2256]
                        lea              r8, [rbp + 2256]
.Lx330_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx330_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx330_41
                        cmp              esi, 1
                                                                                        jne   .Lx330_55
                        mov              r8, rax
                                                                                        jmp   .Lx330_40
.Lx330_55:
                        cmp              esi, 2
                                                                                        jne   .Lx330_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx330_41
                        mov              r8, rax
                                                                                        jmp   .Lx330_40
.Lx330_56:
                        cmp              eax, 72
                                                                                        jne   .Lx330_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx330_41
                        cmp              rax, r8
                                                                                        je    .Lx330_41
                        mov              r8, rax
                                                                                        jmp   .Lx330_40
.Lx330_41:
                        lea              r9, [rbp + 2272]
.Lx330_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx330_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx330_43
                        cmp              esi, 1
                                                                                        jne   .Lx330_57
                        mov              r9, rax
                                                                                        jmp   .Lx330_42
.Lx330_57:
                        cmp              esi, 2
                                                                                        jne   .Lx330_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx330_43
                        mov              r9, rax
                                                                                        jmp   .Lx330_42
.Lx330_58:
                        cmp              eax, 72
                                                                                        jne   .Lx330_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx330_43
                        cmp              rax, r9
                                                                                        je    .Lx330_43
                        mov              r9, rax
                                                                                        jmp   .Lx330_42
.Lx330_43:
                        cmp              r8, r9
                                                                                        je    .Lx330_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx330_44
                        cmp              eax, 104
                                                                                        je    .Lx330_44
                        cmp              eax, 72
                                                                                        jne   .Lx330_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx330_44
                                                                                        jmp   .Lx330_45
.Lx330_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx330_53
                        cmp              eax, 104
                                                                                        je    .Lx330_53
                        cmp              eax, 72
                                                                                        jne   .Lx330_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx330_53
                                                                                        jmp   .Lx330_46
.Lx330_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx330_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx330_53
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
                                                                                        jmp   .Lx330_51
.Lx330_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx330_47
                        cmp              eax, 104
                                                                                        je    .Lx330_47
                        cmp              eax, 72
                                                                                        jne   .Lx330_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx330_47
                                                                                        jmp   .Lx330_48
.Lx330_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx330_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx330_53
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
                                                                                        jmp   .Lx330_51
.Lx330_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx330_49
                        cmp              edx, 80
                                                                                        je    .Lx330_53
                                                                                        jmp   .Lx330_52
.Lx330_49:
                        cmp              edx, 80
                                                                                        je    .Lx330_52
                        cmp              ecx, 5
                                                                                        je    .Lx330_53
                        cmp              edx, 5
                                                                                        je    .Lx330_53
                        cmp              ecx, 3
                                                                                        jne   .Lx330_50
                        cmp              edx, 3
                                                                                        jne   .Lx330_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx330_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx330_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx330_51
                                                                                        jmp   .Lx330_52
.Lx330_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx330_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx330_53
.Lx330_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx330_54
.Lx330_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx330_54
.Lx330_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx330_54:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 104
                                                                                        je    n232_call_builtin_prolog_α
                                                                                        jmp   n214_var_ref_α
n213_call_builtin_prolog_β:
                                                                                        jmp   n232_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n215_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        mov              qword ptr [rbp + 2224], 2                      # result
                        mov              dword ptr [rbp + 2228], 1
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n216_lit_string_α
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:
                        mov              qword ptr [rbp + 1776], 2                      # result
                        mov              dword ptr [rbp + 1780], 21
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n217_var_ref_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "prolog_current_choice"
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n218_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n218_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1752], rax
                        lea              rdi, [rbp + 1728]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n219_lit_string_α
n218_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rbp + 2128], 2                      # result
                        mov              dword ptr [rbp + 2132], 1
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n220_lit_string_α
.Lx338_0:
                        .quad            .Lx338_0_s
.Lx338_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:
                        mov              qword ptr [rbp + 1936], 2                      # result
                        mov              dword ptr [rbp + 1940], 7
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n221_lit_integer_α
.Lx339_0:
                        .quad            .Lx339_0_s
.Lx339_0_s:
                        .string          "between"
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_integer_α:
                        mov              qword ptr [rbp + 1792], 3                      # result
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n222_lit_integer_α
.Lx340_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_integer_α:
                        mov              qword ptr [rbp + 1808], 3                      # result
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n223_var_ref_α
.Lx341_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3488]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n224_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n224_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1912], rax
                        lea              rdi, [rbp + 1856]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n225_lit_string_α
n224_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:
                        mov              qword ptr [rbp + 2032], 2                      # result
                        mov              dword ptr [rbp + 2036], 13
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n226_var_ref_α
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          "prolog_cut_to"
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n227_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n227_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 2008], rax
                        lea              rdi, [rbp + 1984]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n228_call_builtin_prolog_α
n227_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n228_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 2104], rax
                        lea              rdi, [rbp + 2064]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n229_call_builtin_prolog_α
n228_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n229_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2160]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 104
                                                                                        je    n232_call_builtin_prolog_α
                                                                                        jmp   n230_call_builtin_prolog_α
n229_call_builtin_prolog_β:
                                                                                        jmp   n232_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n230_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 1672], rax
                        lea              rdi, [rbp + 1648]
                        lea              r8, [rbp + 1648]
.Lx351_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx351_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx351_41
                        cmp              esi, 1
                                                                                        jne   .Lx351_55
                        mov              r8, rax
                                                                                        jmp   .Lx351_40
.Lx351_55:
                        cmp              esi, 2
                                                                                        jne   .Lx351_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx351_41
                        mov              r8, rax
                                                                                        jmp   .Lx351_40
.Lx351_56:
                        cmp              eax, 72
                                                                                        jne   .Lx351_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx351_41
                        cmp              rax, r8
                                                                                        je    .Lx351_41
                        mov              r8, rax
                                                                                        jmp   .Lx351_40
.Lx351_41:
                        lea              r9, [rbp + 1664]
.Lx351_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx351_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx351_43
                        cmp              esi, 1
                                                                                        jne   .Lx351_57
                        mov              r9, rax
                                                                                        jmp   .Lx351_42
.Lx351_57:
                        cmp              esi, 2
                                                                                        jne   .Lx351_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx351_43
                        mov              r9, rax
                                                                                        jmp   .Lx351_42
.Lx351_58:
                        cmp              eax, 72
                                                                                        jne   .Lx351_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx351_43
                        cmp              rax, r9
                                                                                        je    .Lx351_43
                        mov              r9, rax
                                                                                        jmp   .Lx351_42
.Lx351_43:
                        cmp              r8, r9
                                                                                        je    .Lx351_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx351_44
                        cmp              eax, 104
                                                                                        je    .Lx351_44
                        cmp              eax, 72
                                                                                        jne   .Lx351_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx351_44
                                                                                        jmp   .Lx351_45
.Lx351_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx351_53
                        cmp              eax, 104
                                                                                        je    .Lx351_53
                        cmp              eax, 72
                                                                                        jne   .Lx351_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx351_53
                                                                                        jmp   .Lx351_46
.Lx351_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx351_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx351_53
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
                                                                                        jmp   .Lx351_51
.Lx351_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx351_47
                        cmp              eax, 104
                                                                                        je    .Lx351_47
                        cmp              eax, 72
                                                                                        jne   .Lx351_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx351_47
                                                                                        jmp   .Lx351_48
.Lx351_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx351_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx351_53
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
                                                                                        jmp   .Lx351_51
.Lx351_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx351_49
                        cmp              edx, 80
                                                                                        je    .Lx351_53
                                                                                        jmp   .Lx351_52
.Lx351_49:
                        cmp              edx, 80
                                                                                        je    .Lx351_52
                        cmp              ecx, 5
                                                                                        je    .Lx351_53
                        cmp              edx, 5
                                                                                        je    .Lx351_53
                        cmp              ecx, 3
                                                                                        jne   .Lx351_50
                        cmp              edx, 3
                                                                                        jne   .Lx351_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx351_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx351_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx351_51
                                                                                        jmp   .Lx351_52
.Lx351_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx351_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx351_53
.Lx351_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx351_54
.Lx351_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx351_54
.Lx351_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx351_54:
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 104
                                                                                        je    n232_call_builtin_prolog_α
                                                                                        jmp   n231_suspend_α
n230_call_builtin_prolog_β:
                                                                                        jmp   n232_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n231_suspend_α:
                        lea              rax, [rip + n231_suspend_β]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n231_suspend_β:
                                                                                        jmp   n232_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n233_var_ref_α
n232_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n234_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:
                        mov              qword ptr [rbp + 1568], 2                      # result
                        mov              dword ptr [rbp + 1572], 4
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n235_call_builtin_prolog_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          "misc"
#-----------------------------------------------------------------------------------------------------------------------
n235_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        mov              rsi, qword ptr [rip + .Lx358_2]
                                                                                        jmp   .Lx358_3
.Lx358_2:
                        .quad            .Lx358_2_s
.Lx358_2_s:
                        .string          "misc"
.Lx358_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 104
                                                                                        je    n275_call_builtin_prolog_α
                                                                                        jmp   n236_var_ref_α
n235_call_builtin_prolog_β:
                                                                                        jmp   n275_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n237_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:
                        mov              qword ptr [rbp + 1488], 2                      # result
                        mov              dword ptr [rbp + 1492], 14
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n238_call_builtin_prolog_α
.Lx361_0:
                        .quad            .Lx361_0_s
.Lx361_0_s:
                        .string          "cut_to_cleanup"
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1440]
                        mov              rsi, qword ptr [rip + .Lx362_2]
                                                                                        jmp   .Lx362_3
.Lx362_2:
                        .quad            .Lx362_2_s
.Lx362_2_s:
                        .string          "cut_to_cleanup"
.Lx362_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 104
                                                                                        je    n275_call_builtin_prolog_α
                                                                                        jmp   n239_var_ref_α
n238_call_builtin_prolog_β:
                                                                                        jmp   n275_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n240_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:
                        mov              qword ptr [rbp + 1408], 2                      # result
                        mov              dword ptr [rbp + 1412], 2
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n241_call_builtin_prolog_α
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n241_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1360]
                        mov              rsi, qword ptr [rip + .Lx366_2]
                                                                                        jmp   .Lx366_3
.Lx366_2:
                        .quad            .Lx366_2_s
.Lx366_2_s:
                        .string          "[]"
.Lx366_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 104
                                                                                        je    n275_call_builtin_prolog_α
                                                                                        jmp   n242_var_ref_α
n241_call_builtin_prolog_β:
                                                                                        jmp   n275_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n242_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n243_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:
                        mov              qword ptr [rbp + 1328], 2                      # result
                        mov              dword ptr [rbp + 1332], 1
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n244_lit_string_α
.Lx369_0:
                        .quad            .Lx369_0_s
.Lx369_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 10
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n245_lit_string_α
.Lx370_0:
                        .quad            .Lx370_0_s
.Lx370_0_s:
                        .string          "retractall"
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 2
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n246_call_builtin_prolog_α
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "cl"
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n247_lit_string_α
n246_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:
                        mov              qword ptr [rbp + 1232], 2                      # result
                        mov              dword ptr [rbp + 1236], 1
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n248_lit_string_α
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 21
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n249_var_ref_α
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          "prolog_current_choice"
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3488]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n250_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n250_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n251_lit_string_α
n250_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n252_lit_string_α
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 12
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n253_lit_string_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "call_cleanup"
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:
                        mov              qword ptr [rbp + 560], 2                       # result
                        mov              dword ptr [rbp + 564], 7
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n254_lit_integer_α
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "between"
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n255_lit_integer_α
.Lx381_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_integer_α:
                        mov              qword ptr [rbp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n256_var_ref_α
.Lx382_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n257_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n257_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n258_lit_string_α
n257_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:
                        mov              qword ptr [rbp + 656], 2                       # result
                        mov              dword ptr [rbp + 660], 6
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n259_lit_string_α
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:
                        mov              qword ptr [rbp + 576], 2                       # result
                        mov              dword ptr [rbp + 580], 2
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n260_call_builtin_prolog_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "cl"
#-----------------------------------------------------------------------------------------------------------------------
n260_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n261_call_builtin_prolog_α
n260_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n261_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n262_lit_string_α
n261_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:
                        mov              qword ptr [rbp + 1040], 2                      # result
                        mov              dword ptr [rbp + 1044], 1
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n263_lit_string_α
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:
                        mov              qword ptr [rbp + 848], 2                       # result
                        mov              dword ptr [rbp + 852], 13
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n264_var_ref_α
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          "prolog_cut_to"
#-----------------------------------------------------------------------------------------------------------------------
n264_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3488]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n265_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n265_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n266_lit_string_α
n265_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:
                        mov              qword ptr [rbp + 944], 2                       # result
                        mov              dword ptr [rbp + 948], 7
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n267_lit_string_α
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "retract"
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:
                        mov              qword ptr [rbp + 864], 2                       # result
                        mov              dword ptr [rbp + 868], 2
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n268_call_builtin_prolog_α
.Lx396_0:
                        .quad            .Lx396_0_s
.Lx396_0_s:
                        .string          "cl"
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n269_call_builtin_prolog_α
n268_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n269_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n270_call_builtin_prolog_α
n269_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n270_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n271_call_builtin_prolog_α
n270_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n271_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1168]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n272_call_builtin_prolog_α
n271_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n272_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rdi, [rbp + 1264]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 104
                                                                                        je    n275_call_builtin_prolog_α
                                                                                        jmp   n273_call_builtin_prolog_α
n272_call_builtin_prolog_β:
                                                                                        jmp   n275_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n273_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        lea              r8, [rbp + 176]
.Lx402_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx402_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx402_41
                        cmp              esi, 1
                                                                                        jne   .Lx402_55
                        mov              r8, rax
                                                                                        jmp   .Lx402_40
.Lx402_55:
                        cmp              esi, 2
                                                                                        jne   .Lx402_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx402_41
                        mov              r8, rax
                                                                                        jmp   .Lx402_40
.Lx402_56:
                        cmp              eax, 72
                                                                                        jne   .Lx402_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx402_41
                        cmp              rax, r8
                                                                                        je    .Lx402_41
                        mov              r8, rax
                                                                                        jmp   .Lx402_40
.Lx402_41:
                        lea              r9, [rbp + 192]
.Lx402_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx402_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx402_43
                        cmp              esi, 1
                                                                                        jne   .Lx402_57
                        mov              r9, rax
                                                                                        jmp   .Lx402_42
.Lx402_57:
                        cmp              esi, 2
                                                                                        jne   .Lx402_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx402_43
                        mov              r9, rax
                                                                                        jmp   .Lx402_42
.Lx402_58:
                        cmp              eax, 72
                                                                                        jne   .Lx402_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx402_43
                        cmp              rax, r9
                                                                                        je    .Lx402_43
                        mov              r9, rax
                                                                                        jmp   .Lx402_42
.Lx402_43:
                        cmp              r8, r9
                                                                                        je    .Lx402_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx402_44
                        cmp              eax, 104
                                                                                        je    .Lx402_44
                        cmp              eax, 72
                                                                                        jne   .Lx402_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx402_44
                                                                                        jmp   .Lx402_45
.Lx402_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx402_53
                        cmp              eax, 104
                                                                                        je    .Lx402_53
                        cmp              eax, 72
                                                                                        jne   .Lx402_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx402_53
                                                                                        jmp   .Lx402_46
.Lx402_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx402_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx402_53
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
                                                                                        jmp   .Lx402_51
.Lx402_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx402_47
                        cmp              eax, 104
                                                                                        je    .Lx402_47
                        cmp              eax, 72
                                                                                        jne   .Lx402_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx402_47
                                                                                        jmp   .Lx402_48
.Lx402_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx402_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx402_53
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
                                                                                        jmp   .Lx402_51
.Lx402_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx402_49
                        cmp              edx, 80
                                                                                        je    .Lx402_53
                                                                                        jmp   .Lx402_52
.Lx402_49:
                        cmp              edx, 80
                                                                                        je    .Lx402_52
                        cmp              ecx, 5
                                                                                        je    .Lx402_53
                        cmp              edx, 5
                                                                                        je    .Lx402_53
                        cmp              ecx, 3
                                                                                        jne   .Lx402_50
                        cmp              edx, 3
                                                                                        jne   .Lx402_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx402_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx402_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx402_51
                                                                                        jmp   .Lx402_52
.Lx402_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx402_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx402_53
.Lx402_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx402_54
.Lx402_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx402_54
.Lx402_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx402_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n275_call_builtin_prolog_α
                                                                                        jmp   n274_suspend_α
n273_call_builtin_prolog_β:
                                                                                        jmp   n275_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n274_suspend_α:
                        lea              rax, [rip + n274_suspend_β]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n274_suspend_β:
                                                                                        jmp   n275_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n275_call_builtin_prolog_α:
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
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   proc_pj_test$2F4_ω
n275_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   qword ptr [rbp + 3472]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_4$2F0_α
proc_pj_dir_4$2F0_α:
proc_pj_dir_4$2F0_α_body:
                        lea              rax, [rip + n409_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n406_call_builtin_prolog_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx411_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx411_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx411_101
.Lx411_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx411_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx411_240
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_4$2F0_ω
.Lx411_240:
                                                                                        jmp   n407_lit_string_α
n406_call_builtin_prolog_β:
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 4
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n408_call_proc_staged_α
.Lx412_0:
                        .quad            .Lx412_0_s
.Lx412_0_s:
                        .string          "misc"
#-----------------------------------------------------------------------------------------------------------------------
n408_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx414_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx414_21
.Lx414_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 128]                     # v
                        mov              rdx, qword ptr [rbp + 136]                     # v
                        call             rt_arg_stage@PLT
.Lx414_21:
                        mov              rdi, qword ptr [rip + .Lx414_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx414_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx414_3]
                        lea              rdx, [rip + .Lx414_4]
                                                                                        jmp   rax
.Lx414_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx414_2
.Lx414_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx414_2
.Lx414_1:
                        call             rt_faildescr@PLT
.Lx414_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx414_240
                        add              rsp, 16
                                                                                        jmp   n410_call_builtin_prolog_α
.Lx414_240:
                                                                                        jmp   n409_suspend_α
n408_call_proc_staged_β:
                                                                                        jmp   n410_call_builtin_prolog_α
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n409_suspend_α:
                        lea              rax, [rip + n409_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n409_suspend_β:
                                                                                        jmp   n408_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n410_call_builtin_prolog_α:
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
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   proc_pj_dir_4$2F0_ω
n410_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_2$2F0_α
proc_pj_dir_2$2F0_α:
proc_pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n421_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n418_call_builtin_prolog_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx423_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx423_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx423_101
.Lx423_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx423_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx423_240
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_2$2F0_ω
.Lx423_240:
                                                                                        jmp   n419_lit_string_α
n418_call_builtin_prolog_β:
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 4
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n420_call_proc_staged_α
.Lx424_0:
                        .quad            .Lx424_0_s
.Lx424_0_s:
                        .string          "misc"
#-----------------------------------------------------------------------------------------------------------------------
n420_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx426_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx426_21
.Lx426_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 128]                     # v
                        mov              rdx, qword ptr [rbp + 136]                     # v
                        call             rt_arg_stage@PLT
.Lx426_21:
                        mov              rdi, qword ptr [rip + .Lx426_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx426_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx426_3]
                        lea              rdx, [rip + .Lx426_4]
                                                                                        jmp   rax
.Lx426_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx426_2
.Lx426_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx426_2
.Lx426_1:
                        call             rt_faildescr@PLT
.Lx426_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx426_240
                        add              rsp, 16
                                                                                        jmp   n422_call_builtin_prolog_α
.Lx426_240:
                                                                                        jmp   n421_suspend_α
n420_call_proc_staged_β:
                                                                                        jmp   n422_call_builtin_prolog_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n421_suspend_α:
                        lea              rax, [rip + n421_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n421_suspend_β:
                                                                                        jmp   n420_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n422_call_builtin_prolog_α:
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
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   proc_pj_dir_2$2F0_ω
n422_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_0$2F0_α
proc_pj_dir_0$2F0_α:
proc_pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n440_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n430_call_builtin_prolog_α:
                        sub              rsp, 256
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx442_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx442_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx442_101
.Lx442_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx442_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx442_240
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_ω
.Lx442_240:
                                                                                        jmp   n431_lit_string_α
n430_call_builtin_prolog_β:
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 9
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n432_lit_string_α
.Lx443_0:
                        .quad            .Lx443_0_s
.Lx443_0_s:
                        .string          "test_misc"
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_string_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 1
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n433_lit_string_α
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n434_lit_string_α
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 9
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n435_lit_integer_α
.Lx446_0:
                        .quad            .Lx446_0_s
.Lx446_0_s:
                        .string          "test_misc"
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n436_call_builtin_prolog_α
.Lx447_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n436_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx448_240
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_ω
.Lx448_240:
                                                                                        jmp   n437_lit_string_α
n436_call_builtin_prolog_β:
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:
                        mov              qword ptr [rbp + 160], 2                       # result
                        mov              dword ptr [rbp + 164], 2
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n438_call_builtin_prolog_α
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n438_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx450_240
                        add              rsp, 256
                                                                                        jmp   n441_call_builtin_prolog_α
.Lx450_240:
                                                                                        jmp   n439_call_proc_staged_α
n438_call_builtin_prolog_β:
                        add              rsp, 256
                                                                                        jmp   n441_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n439_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx452_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx452_21
.Lx452_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 144]                     # v
                        mov              rdx, qword ptr [rbp + 152]                     # v
                        call             rt_arg_stage@PLT
.Lx452_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx452_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx452_23
.Lx452_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 304]                     # v
                        mov              rdx, qword ptr [rbp + 312]                     # v
                        call             rt_arg_stage@PLT
.Lx452_23:
                        mov              rdi, qword ptr [rip + .Lx452_0]                # name
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx452_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx452_3]
                        lea              rdx, [rip + .Lx452_4]
                                                                                        jmp   rax
.Lx452_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx452_2
.Lx452_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx452_2
.Lx452_1:
                        call             rt_faildescr@PLT
.Lx452_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx452_240
                        add              rsp, 256
                                                                                        jmp   n441_call_builtin_prolog_α
.Lx452_240:
                                                                                        jmp   n440_suspend_α
n439_call_proc_staged_β:
                                                                                        jmp   n441_call_builtin_prolog_α
.Lx452_0:
                        .quad            .Lx452_0_s
.Lx452_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n440_suspend_α:
                        lea              rax, [rip + n440_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n440_suspend_β:
                                                                                        jmp   n439_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n441_call_builtin_prolog_α:
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
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   proc_pj_dir_0$2F0_ω
n441_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 400]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p$2F1_α
proc_p$2F1_α:
proc_p$2F1_α_body:
                        lea              rax, [rip + n460_suspend_β]
                        mov              qword ptr [rbp + 368], rax
#-----------------------------------------------------------------------------------------------------------------------
n456_call_builtin_prolog_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx469_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx469_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx469_101
.Lx469_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx469_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx469_240
                        add              rsp, 32
                                                                                        jmp   proc_p$2F1_ω
.Lx469_240:
                                                                                        jmp   n457_var_ref_α
n456_call_builtin_prolog_β:
                        add              rsp, 32
                                                                                        jmp   proc_p$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n458_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n458_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n459_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n459_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx474_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx474_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx474_41
                        cmp              esi, 1
                                                                                        jne   .Lx474_55
                        mov              r8, rax
                                                                                        jmp   .Lx474_40
.Lx474_55:
                        cmp              esi, 2
                                                                                        jne   .Lx474_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx474_41
                        mov              r8, rax
                                                                                        jmp   .Lx474_40
.Lx474_56:
                        cmp              eax, 72
                                                                                        jne   .Lx474_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx474_41
                        cmp              rax, r8
                                                                                        je    .Lx474_41
                        mov              r8, rax
                                                                                        jmp   .Lx474_40
.Lx474_41:
                        lea              r9, [rbp + 320]
.Lx474_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx474_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx474_43
                        cmp              esi, 1
                                                                                        jne   .Lx474_57
                        mov              r9, rax
                                                                                        jmp   .Lx474_42
.Lx474_57:
                        cmp              esi, 2
                                                                                        jne   .Lx474_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx474_43
                        mov              r9, rax
                                                                                        jmp   .Lx474_42
.Lx474_58:
                        cmp              eax, 72
                                                                                        jne   .Lx474_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx474_43
                        cmp              rax, r9
                                                                                        je    .Lx474_43
                        mov              r9, rax
                                                                                        jmp   .Lx474_42
.Lx474_43:
                        cmp              r8, r9
                                                                                        je    .Lx474_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx474_44
                        cmp              eax, 104
                                                                                        je    .Lx474_44
                        cmp              eax, 72
                                                                                        jne   .Lx474_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx474_44
                                                                                        jmp   .Lx474_45
.Lx474_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx474_53
                        cmp              eax, 104
                                                                                        je    .Lx474_53
                        cmp              eax, 72
                                                                                        jne   .Lx474_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx474_53
                                                                                        jmp   .Lx474_46
.Lx474_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx474_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx474_53
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
                                                                                        jmp   .Lx474_51
.Lx474_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx474_47
                        cmp              eax, 104
                                                                                        je    .Lx474_47
                        cmp              eax, 72
                                                                                        jne   .Lx474_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx474_47
                                                                                        jmp   .Lx474_48
.Lx474_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx474_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx474_53
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
                                                                                        jmp   .Lx474_51
.Lx474_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx474_49
                        cmp              edx, 80
                                                                                        je    .Lx474_53
                                                                                        jmp   .Lx474_52
.Lx474_49:
                        cmp              edx, 80
                                                                                        je    .Lx474_52
                        cmp              ecx, 5
                                                                                        je    .Lx474_53
                        cmp              edx, 5
                                                                                        je    .Lx474_53
                        cmp              ecx, 3
                                                                                        jne   .Lx474_50
                        cmp              edx, 3
                                                                                        jne   .Lx474_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx474_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx474_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx474_51
                                                                                        jmp   .Lx474_52
.Lx474_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx474_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx474_53
.Lx474_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx474_54
.Lx474_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx474_54
.Lx474_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx474_54:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n461_call_builtin_prolog_α
                                                                                        jmp   n460_suspend_α
n459_call_builtin_prolog_β:
                                                                                        jmp   n461_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n460_suspend_α:
                        lea              rax, [rip + n460_suspend_β]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 32
                                                                                        jmp   proc_p$2F1_γ
n460_suspend_β:
                                                                                        jmp   n461_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n461_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    proc_p$2F1_ω
                                                                                        jmp   n462_var_ref_α
n461_call_builtin_prolog_β:
                                                                                        jmp   proc_p$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n462_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n463_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n463_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 384]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n464_call_builtin_prolog_α:
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
.Lx482_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx482_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx482_41
                        cmp              esi, 1
                                                                                        jne   .Lx482_55
                        mov              r8, rax
                                                                                        jmp   .Lx482_40
.Lx482_55:
                        cmp              esi, 2
                                                                                        jne   .Lx482_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx482_41
                        mov              r8, rax
                                                                                        jmp   .Lx482_40
.Lx482_56:
                        cmp              eax, 72
                                                                                        jne   .Lx482_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx482_41
                        cmp              rax, r8
                                                                                        je    .Lx482_41
                        mov              r8, rax
                                                                                        jmp   .Lx482_40
.Lx482_41:
                        lea              r9, [rbp + 192]
.Lx482_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx482_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx482_43
                        cmp              esi, 1
                                                                                        jne   .Lx482_57
                        mov              r9, rax
                                                                                        jmp   .Lx482_42
.Lx482_57:
                        cmp              esi, 2
                                                                                        jne   .Lx482_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx482_43
                        mov              r9, rax
                                                                                        jmp   .Lx482_42
.Lx482_58:
                        cmp              eax, 72
                                                                                        jne   .Lx482_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx482_43
                        cmp              rax, r9
                                                                                        je    .Lx482_43
                        mov              r9, rax
                                                                                        jmp   .Lx482_42
.Lx482_43:
                        cmp              r8, r9
                                                                                        je    .Lx482_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx482_44
                        cmp              eax, 104
                                                                                        je    .Lx482_44
                        cmp              eax, 72
                                                                                        jne   .Lx482_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx482_44
                                                                                        jmp   .Lx482_45
.Lx482_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx482_53
                        cmp              eax, 104
                                                                                        je    .Lx482_53
                        cmp              eax, 72
                                                                                        jne   .Lx482_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx482_53
                                                                                        jmp   .Lx482_46
.Lx482_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx482_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx482_53
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
                                                                                        jmp   .Lx482_51
.Lx482_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx482_47
                        cmp              eax, 104
                                                                                        je    .Lx482_47
                        cmp              eax, 72
                                                                                        jne   .Lx482_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx482_47
                                                                                        jmp   .Lx482_48
.Lx482_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx482_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx482_53
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
                                                                                        jmp   .Lx482_51
.Lx482_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx482_49
                        cmp              edx, 80
                                                                                        je    .Lx482_53
                                                                                        jmp   .Lx482_52
.Lx482_49:
                        cmp              edx, 80
                                                                                        je    .Lx482_52
                        cmp              ecx, 5
                                                                                        je    .Lx482_53
                        cmp              edx, 5
                                                                                        je    .Lx482_53
                        cmp              ecx, 3
                                                                                        jne   .Lx482_50
                        cmp              edx, 3
                                                                                        jne   .Lx482_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx482_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx482_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx482_51
                                                                                        jmp   .Lx482_52
.Lx482_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx482_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx482_53
.Lx482_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx482_54
.Lx482_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx482_54
.Lx482_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx482_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n468_call_builtin_prolog_α
                                                                                        jmp   n465_var_ref_α
n464_call_builtin_prolog_β:
                                                                                        jmp   n468_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n465_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 384]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n466_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n466_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx486_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx486_21
.Lx486_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 144]                     # v
                        mov              rdx, qword ptr [rbp + 152]                     # v
                        call             rt_arg_stage@PLT
.Lx486_21:
                        mov              rdi, qword ptr [rip + .Lx486_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx486_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx486_3]
                        lea              rdx, [rip + .Lx486_4]
                                                                                        jmp   rax
.Lx486_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx486_2
.Lx486_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx486_2
.Lx486_1:
                        call             rt_faildescr@PLT
.Lx486_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n468_call_builtin_prolog_α
                                                                                        jmp   n467_suspend_α
n466_call_proc_staged_β:
                                                                                        jmp   n468_call_builtin_prolog_α
.Lx486_0:
                        .quad            .Lx486_0_s
.Lx486_0_s:
                        .string          "prolog_cut_to/1"
#-----------------------------------------------------------------------------------------------------------------------
n467_suspend_α:
                        lea              rax, [rip + n467_suspend_β]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_p$2F1_γ
n467_suspend_β:
                                                                                        jmp   n466_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n468_call_builtin_prolog_α:
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
                                                                                        je    proc_p$2F1_ω
                                                                                        jmp   proc_p$2F1_ω
n468_call_builtin_prolog_β:
                                                                                        jmp   proc_p$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_p$2F1_β:
                                                                                        jmp   qword ptr [rbp + 368]
#-----------------------------------------------------------------------------------------------------------------------
proc_p$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_p$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_3$2F0_α
proc_pj_dir_3$2F0_α:
proc_pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n496_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n490_call_builtin_prolog_α:
                        sub              rsp, 128
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx498_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx498_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx498_101
.Lx498_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx498_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx498_240
                        add              rsp, 128
                                                                                        jmp   proc_pj_dir_3$2F0_ω
.Lx498_240:
                                                                                        jmp   n491_lit_string_α
n490_call_builtin_prolog_β:
                        add              rsp, 128
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_string_α:
                        mov              qword ptr [rbp + 240], 2                       # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n492_lit_string_α
.Lx499_0:
                        .quad            .Lx499_0_s
.Lx499_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 2
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n493_lit_integer_α
.Lx500_0:
                        .quad            .Lx500_0_s
.Lx500_0_s:
                        .string          "cl"
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_integer_α:
                        mov              qword ptr [rbp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx501_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n494_call_builtin_prolog_α
.Lx501_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n494_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx502_240
                        add              rsp, 128
                                                                                        jmp   n497_call_builtin_prolog_α
.Lx502_240:
                                                                                        jmp   n495_call_proc_staged_α
n494_call_builtin_prolog_β:
                        add              rsp, 128
                                                                                        jmp   n497_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n495_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx504_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx504_21
.Lx504_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 160]                     # v
                        mov              rdx, qword ptr [rbp + 168]                     # v
                        call             rt_arg_stage@PLT
.Lx504_21:
                        mov              rdi, qword ptr [rip + .Lx504_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx504_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx504_3]
                        lea              rdx, [rip + .Lx504_4]
                                                                                        jmp   rax
.Lx504_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx504_2
.Lx504_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx504_2
.Lx504_1:
                        call             rt_faildescr@PLT
.Lx504_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx504_240
                        add              rsp, 128
                                                                                        jmp   n497_call_builtin_prolog_α
.Lx504_240:
                                                                                        jmp   n496_suspend_α
n495_call_proc_staged_β:
                                                                                        jmp   n497_call_builtin_prolog_α
.Lx504_0:
                        .quad            .Lx504_0_s
.Lx504_0_s:
                        .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
n496_suspend_α:
                        lea              rax, [rip + n496_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 128
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n496_suspend_β:
                                                                                        jmp   n495_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n497_call_builtin_prolog_α:
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
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   proc_pj_dir_3$2F0_ω
n497_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_1$2F0_α
proc_pj_dir_1$2F0_α:
proc_pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n513_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n508_call_builtin_prolog_α:
                        sub              rsp, 96
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx515_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx515_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx515_101
.Lx515_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx515_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx515_240
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_1$2F0_ω
.Lx515_240:
                                                                                        jmp   n509_lit_string_α
n508_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n509_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 7
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n510_lit_string_α
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n510_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 6
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n511_call_builtin_prolog_α
.Lx517_0:
                        .quad            .Lx517_0_s
.Lx517_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n511_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx518_240
                        add              rsp, 96
                                                                                        jmp   n514_call_builtin_prolog_α
.Lx518_240:
                                                                                        jmp   n512_call_proc_staged_α
n511_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   n514_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n512_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx520_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx520_21
.Lx520_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 144]                     # v
                        mov              rdx, qword ptr [rbp + 152]                     # v
                        call             rt_arg_stage@PLT
.Lx520_21:
                        mov              rdi, qword ptr [rip + .Lx520_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx520_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx520_3]
                        lea              rdx, [rip + .Lx520_4]
                                                                                        jmp   rax
.Lx520_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx520_2
.Lx520_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx520_2
.Lx520_1:
                        call             rt_faildescr@PLT
.Lx520_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx520_240
                        add              rsp, 96
                                                                                        jmp   n514_call_builtin_prolog_α
.Lx520_240:
                                                                                        jmp   n513_suspend_α
n512_call_proc_staged_β:
                                                                                        jmp   n514_call_builtin_prolog_α
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n513_suspend_α:
                        lea              rax, [rip + n513_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n513_suspend_β:
                                                                                        jmp   n512_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n514_call_builtin_prolog_α:
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
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   proc_pj_dir_1$2F0_ω
n514_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_misc$2F0_α
proc_test_misc$2F0_α:
proc_test_misc$2F0_α_body:
                        lea              rax, [rip + n530_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n524_call_builtin_prolog_α:
                        sub              rsp, 128
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx532_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx532_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx532_101
.Lx532_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx532_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx532_240
                        add              rsp, 128
                                                                                        jmp   proc_test_misc$2F0_ω
.Lx532_240:
                                                                                        jmp   n525_lit_string_α
n524_call_builtin_prolog_β:
                        add              rsp, 128
                                                                                        jmp   proc_test_misc$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_string_α:
                        mov              qword ptr [rbp + 240], 2                       # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n526_lit_string_α
.Lx533_0:
                        .quad            .Lx533_0_s
.Lx533_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n526_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 4
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n527_lit_string_α
.Lx534_0:
                        .quad            .Lx534_0_s
.Lx534_0_s:
                        .string          "misc"
#-----------------------------------------------------------------------------------------------------------------------
n527_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 2
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n528_call_builtin_prolog_α
.Lx535_0:
                        .quad            .Lx535_0_s
.Lx535_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n528_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx536_240
                        add              rsp, 128
                                                                                        jmp   n531_call_builtin_prolog_α
.Lx536_240:
                                                                                        jmp   n529_call_proc_staged_α
n528_call_builtin_prolog_β:
                        add              rsp, 128
                                                                                        jmp   n531_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n529_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx538_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx538_21
.Lx538_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 160]                     # v
                        mov              rdx, qword ptr [rbp + 168]                     # v
                        call             rt_arg_stage@PLT
.Lx538_21:
                        mov              rdi, qword ptr [rip + .Lx538_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx538_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx538_3]
                        lea              rdx, [rip + .Lx538_4]
                                                                                        jmp   rax
.Lx538_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx538_2
.Lx538_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx538_2
.Lx538_1:
                        call             rt_faildescr@PLT
.Lx538_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx538_240
                        add              rsp, 128
                                                                                        jmp   n531_call_builtin_prolog_α
.Lx538_240:
                                                                                        jmp   n530_suspend_α
n529_call_proc_staged_β:
                                                                                        jmp   n531_call_builtin_prolog_α
.Lx538_0:
                        .quad            .Lx538_0_s
.Lx538_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n530_suspend_α:
                        lea              rax, [rip + n530_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 128
                                                                                        jmp   proc_test_misc$2F0_γ
n530_suspend_β:
                                                                                        jmp   n529_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n531_call_builtin_prolog_α:
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
                                                                                        je    proc_test_misc$2F0_ω
                                                                                        jmp   proc_test_misc$2F0_ω
n531_call_builtin_prolog_β:
                                                                                        jmp   proc_test_misc$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_test_misc$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_misc$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_misc$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_test_misc$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_cl$2F0_α
proc_cl$2F0_α:
proc_cl$2F0_α_body:
                        lea              rax, [rip + n544_suspend_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n542_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rbp + 64], 2                        # result
                        mov              dword ptr [rbp + 68], 2
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n543_call_builtin_gen_α
.Lx545_0:
                        .quad            .Lx545_0_s
.Lx545_0_s:
                        .string          "cl"
#-----------------------------------------------------------------------------------------------------------------------
n543_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        mov              qword ptr [rbp + 48], 0
.Lx546_60:
                        .section         .rodata
.Lbynamegenfn233:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn233]                  # fn
                        lea              rsi, [rbp + 32]                                # args
                        mov              edx, 1                                         # nargs
                        lea              rcx, [rbp + 48]                                # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx546_240
                        add              rsp, 16
                                                                                        jmp   proc_cl$2F0_ω
.Lx546_240:
                                                                                        jmp   n544_suspend_α
n543_call_builtin_gen_β:
                                                                                        jmp   .Lx546_60
#-----------------------------------------------------------------------------------------------------------------------
n544_suspend_α:
                        lea              rax, [rip + n544_suspend_β]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 16
                                                                                        jmp   proc_cl$2F0_γ
n544_suspend_β:
                                                                                        jmp   n543_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_cl$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_cl$2F0_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_cl$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_cl$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "test/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_test$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 768
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "between/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_between$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "test/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_test$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1424
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "pj_test/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_pj_test$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 3552
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "pj_dir_4/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_pj_dir_4$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "p/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_p$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "test_misc/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_test_misc$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "cl/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_cl$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
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
n549_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n550_call_proc_staged_α
.Lx551_0:
                        .quad            .Lx551_0_s
.Lx551_0_s:
                        .string          "misc"
#-----------------------------------------------------------------------------------------------------------------------
n550_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx553_20
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx553_21
.Lx553_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 0]                       # v
                        mov              rdx, qword ptr [rsp + 8]                       # v
                        call             rt_arg_stage@PLT
.Lx553_21:
                        mov              rdi, qword ptr [rip + .Lx553_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx553_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx553_3]
                        lea              rdx, [rip + .Lx553_4]
                                                                                        jmp   rax
.Lx553_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx553_2
.Lx553_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx553_2
.Lx553_1:
                        call             rt_faildescr@PLT
.Lx553_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx553_240
                        add              rsp, 16
                                                                                        jmp   main_ω
.Lx553_240:
                        add              rsp, 16
                                                                                        jmp   main_γ
n550_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx553_0:
                        .quad            .Lx553_0_s
.Lx553_0_s:
                        .string          "end_tests/1"
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
