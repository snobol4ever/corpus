                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F1_α
proc_test$2F1_α:
                        .global          proc_test$2F1_α
                        .global          proc_test$2F1_β
                        .global          proc_test$2F1_γ
                        .global          proc_test$2F1_ω
                        sub              rsp, 2320
                        mov              [rsp + 2296], rcx
                        mov              [rsp + 2304], rdx
                        mov              [rsp + 2312], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2176
                        mov              edx, 2288
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F1_α_body:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rbp + 2176], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx68_101
.Lx68_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx68_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n3_op11_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "serialize"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2120], rax
                        lea              rdi, [rbp + 2112]
                        mov              rsi, qword ptr [rip + .Lx72_2]
                                                                                        jmp   .Lx72_3
.Lx72_2:
                        .quad            .Lx72_2_s
.Lx72_2_s:
                        .string          "serialize"
.Lx72_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rdi, [rbp + 1584]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   n7_var_ref_α
n5_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2272]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n8_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_proc_staged_α:
                        mov              qword ptr [rbp + 2032], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx81_20
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx81_21
.Lx81_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        call             rt_arg_stage@PLT
.Lx81_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx81_22
                        mov              rax, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx81_23
.Lx81_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        call             rt_arg_stage@PLT
.Lx81_23:
                        mov              edi, 5
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx81_1
                        lea              rcx, [rip + .Lx81_3]
                        lea              rdx, [rip + .Lx81_4]
                                                                                        jmp   rax
.Lx81_3:
                        mov              qword ptr [rbp + 2040], rsp
                        mov              rax, qword ptr [rbp + 2032]
                        test             rax, rax
                                                                                        jne   .Lx81_5
                        mov              qword ptr [rbp + 2032], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx81_2
.Lx81_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx81_2
.Lx81_4:
                        mov              rax, qword ptr [rbp + 2032]
                        test             rax, rax
                                                                                        jne   .Lx81_6
                        mov              qword ptr [rbp + 2032], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx81_2
.Lx81_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx81_2
.Lx81_1:
                        call             rt_faildescr@PLT
.Lx81_2:
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    n11_suspend_α
                                                                                        jmp   n10_var_ref_α
n8_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2040]
                                                                                        jmp   qword ptr [rsp]
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "term/2"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n12_op11_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "fastrw"
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2272]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F1_γ
n11_suspend_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1504]
                        mov              rsi, qword ptr [rip + .Lx87_2]
                                                                                        jmp   .Lx87_3
.Lx87_2:
                        .quad            .Lx87_2_s
.Lx87_2_s:
                        .string          "fastrw"
.Lx87_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n14_op11_α
n12_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n16_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        .section         .rodata
.Lrkfn91:               .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n17_var_ref_α
n14_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   proc_test$2F1_ω
n15_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx94_20
                        mov              rax, qword ptr [rbp + 1952]
                        mov              rdx, qword ptr [rbp + 1960]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx94_21
.Lx94_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1952]
                        mov              rdx, qword ptr [rbp + 1960]
                        call             rt_arg_stage@PLT
.Lx94_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx94_22
                        mov              rax, qword ptr [rbp + 1968]
                        mov              rdx, qword ptr [rbp + 1976]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx94_23
.Lx94_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1968]
                        mov              rdx, qword ptr [rbp + 1976]
                        call             rt_arg_stage@PLT
.Lx94_23:
                        mov              rdi, qword ptr [rip + .Lx94_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx94_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx94_3]
                        lea              rdx, [rip + .Lx94_4]
                                                                                        jmp   rax
.Lx94_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx94_2
.Lx94_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx94_2
.Lx94_1:
                        call             rt_faildescr@PLT
.Lx94_2:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n18_var_ref_α
n16_call_proc_staged_β:
                                                                                        jmp   n5_op11_α
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "fast_term_serialized/2"
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2272]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n19_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2192]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n20_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n21_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n22_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_proc_staged_α:
                        mov              qword ptr [rbp + 1424], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx104_20
                        mov              rax, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx104_21
.Lx104_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        call             rt_arg_stage@PLT
.Lx104_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx104_22
                        mov              rax, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx104_23
.Lx104_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        call             rt_arg_stage@PLT
.Lx104_23:
                        mov              edi, 5
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx104_1
                        lea              rcx, [rip + .Lx104_3]
                        lea              rdx, [rip + .Lx104_4]
                                                                                        jmp   rax
.Lx104_3:
                        mov              qword ptr [rbp + 1432], rsp
                        mov              rax, qword ptr [rbp + 1424]
                        test             rax, rax
                                                                                        jne   .Lx104_5
                        mov              qword ptr [rbp + 1424], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx104_2
.Lx104_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx104_2
.Lx104_4:
                        mov              rax, qword ptr [rbp + 1424]
                        test             rax, rax
                                                                                        jne   .Lx104_6
                        mov              qword ptr [rbp + 1424], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx104_2
.Lx104_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx104_2
.Lx104_1:
                        call             rt_faildescr@PLT
.Lx104_2:
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n24_op11_α
                                                                                        jmp   n23_var_α
n21_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1432]
                                                                                        jmp   qword ptr [rsp]
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "term/2"
#-----------------------------------------------------------------------------------------------------------------------
n22_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx106_20
                        mov              rax, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx106_21
.Lx106_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        call             rt_arg_stage@PLT
.Lx106_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx106_22
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx106_23
.Lx106_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        call             rt_arg_stage@PLT
.Lx106_23:
                        mov              rdi, qword ptr [rip + .Lx106_0]
                        mov              esi, 2
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
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    n16_call_proc_staged_β
                                                                                        jmp   n25_lit_string_α
n22_call_proc_staged_β:
                                                                                        jmp   n16_call_proc_staged_β
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "fast_term_serialized/2"
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn110:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n27_var_ref_α
n24_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 1776], 1
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n28_var_ref_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "=@="
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lrkfn113:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn113]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n21_call_proc_staged_β
n26_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n29_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2272]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1264]
                        lea              r8, [rbp + 1264]
.Lx118_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx118_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx118_41
                        cmp              esi, 1
                                                                                        jne   .Lx118_55
                        mov              r8, rax
                                                                                        jmp   .Lx118_40
.Lx118_55:
                        cmp              esi, 2
                                                                                        jne   .Lx118_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx118_41
                        mov              r8, rax
                                                                                        jmp   .Lx118_40
.Lx118_56:
                        cmp              eax, 13
                                                                                        jne   .Lx118_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx118_41
                        cmp              rax, r8
                                                                                        je    .Lx118_41
                        mov              r8, rax
                                                                                        jmp   .Lx118_40
.Lx118_41:
                        lea              r9, [rbp + 1280]
.Lx118_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx118_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx118_43
                        cmp              esi, 1
                                                                                        jne   .Lx118_57
                        mov              r9, rax
                                                                                        jmp   .Lx118_42
.Lx118_57:
                        cmp              esi, 2
                                                                                        jne   .Lx118_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx118_43
                        mov              r9, rax
                                                                                        jmp   .Lx118_42
.Lx118_58:
                        cmp              eax, 13
                                                                                        jne   .Lx118_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx118_43
                        cmp              rax, r9
                                                                                        je    .Lx118_43
                        mov              r9, rax
                                                                                        jmp   .Lx118_42
.Lx118_43:
                        cmp              r8, r9
                                                                                        je    .Lx118_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx118_44
                        cmp              eax, 99
                                                                                        je    .Lx118_44
                        cmp              eax, 13
                                                                                        jne   .Lx118_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx118_44
                                                                                        jmp   .Lx118_45
.Lx118_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx118_53
                        cmp              eax, 99
                                                                                        je    .Lx118_53
                        cmp              eax, 13
                                                                                        jne   .Lx118_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx118_53
                                                                                        jmp   .Lx118_46
.Lx118_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx118_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx118_53
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
                                                                                        jmp   .Lx118_51
.Lx118_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx118_47
                        cmp              eax, 99
                                                                                        je    .Lx118_47
                        cmp              eax, 13
                                                                                        jne   .Lx118_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx118_47
                                                                                        jmp   .Lx118_48
.Lx118_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx118_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx118_53
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
                                                                                        jmp   .Lx118_51
.Lx118_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx118_49
                        cmp              edx, 14
                                                                                        je    .Lx118_53
                                                                                        jmp   .Lx118_52
.Lx118_49:
                        cmp              edx, 14
                                                                                        je    .Lx118_52
                        cmp              ecx, 7
                                                                                        je    .Lx118_53
                        cmp              edx, 7
                                                                                        je    .Lx118_53
                        cmp              ecx, 6
                                                                                        jne   .Lx118_50
                        cmp              edx, 6
                                                                                        jne   .Lx118_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx118_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx118_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx118_51
                                                                                        jmp   .Lx118_52
.Lx118_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx118_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx118_53
.Lx118_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx118_54
.Lx118_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx118_54
.Lx118_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx118_54:
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n31_lit_string_α
n29_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2192]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n33_var_ref_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "binary"
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1752], rax
                        lea              rdi, [rbp + 1712]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n34_call_proc_staged_α
n32_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2192]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n35_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx126_20
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx126_21
.Lx126_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        call             rt_arg_stage@PLT
.Lx126_21:
                        mov              rdi, qword ptr [rip + .Lx126_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx126_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx126_3]
                        lea              rdx, [rip + .Lx126_4]
                                                                                        jmp   rax
.Lx126_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx126_2
.Lx126_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx126_2
.Lx126_1:
                        call             rt_faildescr@PLT
.Lx126_2:
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n22_call_proc_staged_β
                                                                                        jmp   n8_call_proc_staged_β
n34_call_proc_staged_β:
                                                                                        jmp   n22_call_proc_staged_β
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "assertion/1"
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n36_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx130_20
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx130_21
.Lx130_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        call             rt_arg_stage@PLT
.Lx130_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx130_22
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx130_23
.Lx130_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        call             rt_arg_stage@PLT
.Lx130_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx130_24
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx130_25
.Lx130_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        call             rt_arg_stage@PLT
.Lx130_25:
                        mov              rdi, qword ptr [rip + .Lx130_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx130_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx130_3]
                        lea              rdx, [rip + .Lx130_4]
                                                                                        jmp   rax
.Lx130_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx130_2
.Lx130_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx130_2
.Lx130_1:
                        call             rt_faildescr@PLT
.Lx130_2:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n37_lit_string_α
n36_call_proc_staged_β:
                                                                                        jmp   n15_op11_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "tmp_file_stream/3"
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n38_var_ref_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "fast_write"
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n39_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 960]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n41_var_ref_α
                                                                                        jmp   n40_var_ref_α
n39_op11_β:
                                                                                        jmp   n41_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n42_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n43_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx140_20
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx140_21
.Lx140_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        call             rt_arg_stage@PLT
.Lx140_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx140_22
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx140_23
.Lx140_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        call             rt_arg_stage@PLT
.Lx140_23:
                        mov              rdi, qword ptr [rip + .Lx140_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx140_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx140_3]
                        lea              rdx, [rip + .Lx140_4]
                                                                                        jmp   rax
.Lx140_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx140_2
.Lx140_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx140_2
.Lx140_1:
                        call             rt_faildescr@PLT
.Lx140_2:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n41_var_ref_α
                                                                                        jmp   n44_var_ref_α
n42_call_proc_staged_β:
                                                                                        jmp   n41_var_ref_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "maplist/2"
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn142:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rbp + 832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n15_op11_α
n43_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n45_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn146:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn146]
                        lea              rsi, [rbp + 784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n46_var_ref_α
n45_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2192]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n48_var_ref_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n50_lit_string_α
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n51_lit_string_α
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          "type"
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n52_op11_α
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "binary"
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   n53_lit_string_α
n52_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n54_op11_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n55_op11_α
n54_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n55_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn159:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rbp + 448]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n56_lit_string_α
n55_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n57_var_ref_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "read_and_check"
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n58_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n60_var_ref_α
                                                                                        jmp   n59_var_ref_α
n58_op11_β:
                                                                                        jmp   n60_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n61_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n62_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx169_20
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx169_21
.Lx169_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             rt_arg_stage@PLT
.Lx169_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx169_22
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx169_23
.Lx169_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        call             rt_arg_stage@PLT
.Lx169_23:
                        mov              rdi, qword ptr [rip + .Lx169_0]
                        mov              esi, 2
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
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n60_var_ref_α
                                                                                        jmp   n63_var_ref_α
n61_call_proc_staged_β:
                                                                                        jmp   n60_var_ref_α
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "maplist/2"
#-----------------------------------------------------------------------------------------------------------------------
n62_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn171:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n15_op11_α
n62_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n64_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn175:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n65_var_ref_α
n64_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2192]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n66_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx179_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx179_21
.Lx179_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx179_21:
                        mov              rdi, qword ptr [rip + .Lx179_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx179_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx179_3]
                        lea              rdx, [rip + .Lx179_4]
                                                                                        jmp   rax
.Lx179_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx179_2
.Lx179_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx179_2
.Lx179_1:
                        call             rt_faildescr@PLT
.Lx179_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n67_suspend_α
n66_call_proc_staged_β:
                                                                                        jmp   n15_op11_α
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "delete_file/1"
#-----------------------------------------------------------------------------------------------------------------------
n67_suspend_α:
                        lea              rax, [rip + n67_suspend_β]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F1_γ
n67_suspend_β:
                                                                                        jmp   n66_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_β:
                                                                                        jmp   qword ptr [rbp + 2176]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F1_res]
                        push             rax
                        mov              rax, [rbp + 2296]
                        mov              rbp, [rbp + 2312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_ω:
                        mov              rax, [rbp + 2304]
                        lea              rsp, [rbp + 2320]
                        mov              rbp, [rbp + 2312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F2_α
proc_test$2F2_α:
                        .global          proc_test$2F2_α
                        .global          proc_test$2F2_β
                        .global          proc_test$2F2_γ
                        .global          proc_test$2F2_ω
                        sub              rsp, 1168
                        mov              [rsp + 1144], rcx
                        mov              [rsp + 1152], rdx
                        mov              [rsp + 1160], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1088
                        mov              edx, 1136
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F2_α_body:
                        lea              rax, [rip + n214_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
#-----------------------------------------------------------------------------------------------------------------------
n182_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx215_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx215_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx215_101
.Lx215_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx215_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n183_var_ref_α
n182_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n185_op11_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n185_op11_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              rsi, qword ptr [rip + .Lx219_2]
                                                                                        jmp   .Lx219_3
.Lx219_2:
                        .quad            .Lx219_2_s
.Lx219_2_s:
                        .string          "error"
.Lx219_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n187_op11_α
                                                                                        jmp   n186_var_ref_α
n185_op11_β:
                                                                                        jmp   n187_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n188_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n187_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   proc_test$2F2_ω
n187_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n189_lit_string_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n190_lit_string_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "permission_error"
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n191_lit_string_α
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          "fast_serialize"
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n192_var_ref_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "blob"
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n193_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n193_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n194_op11_α
n193_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n194_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n187_op11_α
                                                                                        jmp   n195_op11_α
n194_op11_β:
                                                                                        jmp   n187_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n195_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 720]
                        lea              r8, [rbp + 720]
.Lx231_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx231_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx231_41
                        cmp              esi, 1
                                                                                        jne   .Lx231_55
                        mov              r8, rax
                                                                                        jmp   .Lx231_40
.Lx231_55:
                        cmp              esi, 2
                                                                                        jne   .Lx231_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx231_41
                        mov              r8, rax
                                                                                        jmp   .Lx231_40
.Lx231_56:
                        cmp              eax, 13
                                                                                        jne   .Lx231_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx231_41
                        cmp              rax, r8
                                                                                        je    .Lx231_41
                        mov              r8, rax
                                                                                        jmp   .Lx231_40
.Lx231_41:
                        lea              r9, [rbp + 736]
.Lx231_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx231_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx231_43
                        cmp              esi, 1
                                                                                        jne   .Lx231_57
                        mov              r9, rax
                                                                                        jmp   .Lx231_42
.Lx231_57:
                        cmp              esi, 2
                                                                                        jne   .Lx231_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx231_43
                        mov              r9, rax
                                                                                        jmp   .Lx231_42
.Lx231_58:
                        cmp              eax, 13
                                                                                        jne   .Lx231_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx231_43
                        cmp              rax, r9
                                                                                        je    .Lx231_43
                        mov              r9, rax
                                                                                        jmp   .Lx231_42
.Lx231_43:
                        cmp              r8, r9
                                                                                        je    .Lx231_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx231_44
                        cmp              eax, 99
                                                                                        je    .Lx231_44
                        cmp              eax, 13
                                                                                        jne   .Lx231_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx231_44
                                                                                        jmp   .Lx231_45
.Lx231_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx231_53
                        cmp              eax, 99
                                                                                        je    .Lx231_53
                        cmp              eax, 13
                                                                                        jne   .Lx231_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx231_53
                                                                                        jmp   .Lx231_46
.Lx231_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx231_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx231_53
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
                                                                                        jmp   .Lx231_51
.Lx231_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx231_47
                        cmp              eax, 99
                                                                                        je    .Lx231_47
                        cmp              eax, 13
                                                                                        jne   .Lx231_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx231_47
                                                                                        jmp   .Lx231_48
.Lx231_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx231_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx231_53
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
                                                                                        jmp   .Lx231_51
.Lx231_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx231_49
                        cmp              edx, 14
                                                                                        je    .Lx231_53
                                                                                        jmp   .Lx231_52
.Lx231_49:
                        cmp              edx, 14
                                                                                        je    .Lx231_52
                        cmp              ecx, 7
                                                                                        je    .Lx231_53
                        cmp              edx, 7
                                                                                        je    .Lx231_53
                        cmp              ecx, 6
                                                                                        jne   .Lx231_50
                        cmp              edx, 6
                                                                                        jne   .Lx231_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx231_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx231_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx231_51
                                                                                        jmp   .Lx231_52
.Lx231_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx231_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx231_53
.Lx231_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx231_54
.Lx231_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx231_54
.Lx231_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx231_54:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n187_op11_α
                                                                                        jmp   n196_var_ref_α
n195_op11_β:
                                                                                        jmp   n187_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n197_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n197_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_20
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx235_21
.Lx235_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        call             rt_arg_stage@PLT
.Lx235_21:
                        mov              rdi, qword ptr [rip + .Lx235_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx235_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx235_3]
                        lea              rdx, [rip + .Lx235_4]
                                                                                        jmp   rax
.Lx235_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx235_2
.Lx235_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx235_2
.Lx235_1:
                        call             rt_faildescr@PLT
.Lx235_2:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n187_op11_α
                                                                                        jmp   n198_var_ref_α
n197_call_proc_staged_β:
                                                                                        jmp   n187_op11_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "open_null_stream/1"
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n199_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n200_lit_string_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "encoding"
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n201_op11_α
.Lx239_0:
                        .quad            .Lx239_0_s
.Lx239_0_s:
                        .string          "octet"
#-----------------------------------------------------------------------------------------------------------------------
n201_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n187_op11_α
                                                                                        jmp   n202_call_proc_staged_α
n201_op11_β:
                                                                                        jmp   n187_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n202_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx242_20
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx242_21
.Lx242_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        call             rt_arg_stage@PLT
.Lx242_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx242_22
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx242_23
.Lx242_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        call             rt_arg_stage@PLT
.Lx242_23:
                        mov              rdi, qword ptr [rip + .Lx242_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx242_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx242_3]
                        lea              rdx, [rip + .Lx242_4]
                                                                                        jmp   rax
.Lx242_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx242_2
.Lx242_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx242_2
.Lx242_1:
                        call             rt_faildescr@PLT
.Lx242_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n197_call_proc_staged_β
                                                                                        jmp   n203_var_ref_α
n202_call_proc_staged_β:
                                                                                        jmp   n197_call_proc_staged_β
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "set_stream/2"
#-----------------------------------------------------------------------------------------------------------------------
n203_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n204_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n205_var_ref_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n206_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n207_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n208_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n208_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n210_var_ref_α
                                                                                        jmp   n209_call_proc_staged_α
n208_op11_β:
                                                                                        jmp   n210_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx254_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx254_21
.Lx254_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx254_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx254_22
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx254_23
.Lx254_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx254_23:
                        mov              rdi, qword ptr [rip + .Lx254_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx254_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx254_3]
                        lea              rdx, [rip + .Lx254_4]
                                                                                        jmp   rax
.Lx254_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx254_2
.Lx254_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx254_2
.Lx254_1:
                        call             rt_faildescr@PLT
.Lx254_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n210_var_ref_α
                                                                                        jmp   n211_var_ref_α
n209_call_proc_staged_β:
                                                                                        jmp   n210_var_ref_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "fast_write/2"
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n212_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n213_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n212_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn260:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n187_op11_α
                                                                                        jmp   n187_op11_α
n212_op11_β:
                                                                                        jmp   n187_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n213_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn262:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn262]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n187_op11_α
                                                                                        jmp   n214_suspend_α
n213_op11_β:
                                                                                        jmp   n187_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n214_suspend_α:
                        lea              rax, [rip + n214_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n214_suspend_β:
                                                                                        jmp   n187_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1088]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1144]
                        mov              rbp, [rbp + 1160]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_ω:
                        mov              rax, [rbp + 1152]
                        lea              rsp, [rbp + 1168]
                        mov              rbp, [rbp + 1160]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_fastrw$2F0_α
proc_test_fastrw$2F0_α:
                        .global          proc_test_fastrw$2F0_α
                        .global          proc_test_fastrw$2F0_β
                        .global          proc_test_fastrw$2F0_γ
                        .global          proc_test_fastrw$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_fastrw$2F0_α_body:
                        lea              rax, [rip + n272_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n265_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx273_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx273_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx273_101
.Lx273_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx273_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_fastrw$2F0_ω
                                                                                        jmp   n266_lit_string_α
n265_op11_β:
                                                                                        jmp   proc_test_fastrw$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n267_lit_string_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n268_lit_string_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "fastrw"
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n269_op11_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n269_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n271_op11_α
                                                                                        jmp   n270_call_proc_staged_α
n269_op11_β:
                                                                                        jmp   n271_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n270_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx279_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx279_21
.Lx279_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx279_21:
                        mov              rdi, qword ptr [rip + .Lx279_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx279_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx279_3]
                        lea              rdx, [rip + .Lx279_4]
                                                                                        jmp   rax
.Lx279_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx279_2
.Lx279_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx279_2
.Lx279_1:
                        call             rt_faildescr@PLT
.Lx279_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n271_op11_α
                                                                                        jmp   n272_suspend_α
n270_call_proc_staged_β:
                                                                                        jmp   n271_op11_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n271_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_fastrw$2F0_ω
                                                                                        jmp   proc_test_fastrw$2F0_ω
n271_op11_β:
                                                                                        jmp   proc_test_fastrw$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n272_suspend_α:
                        lea              rax, [rip + n272_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_fastrw$2F0_γ
n272_suspend_β:
                                                                                        jmp   n270_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_fastrw$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_fastrw$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_fastrw$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_fastrw$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_fastrw$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_read_and_check$2F2_α
proc_read_and_check$2F2_α:
                        .global          proc_read_and_check$2F2_α
                        .global          proc_read_and_check$2F2_β
                        .global          proc_read_and_check$2F2_γ
                        .global          proc_read_and_check$2F2_ω
                        sub              rsp, 640
                        mov              [rsp + 616], rcx
                        mov              [rsp + 624], rdx
                        mov              [rsp + 632], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 544
                        mov              edx, 608
                        call             rt_jmp_frame_lexprep2@PLT
proc_read_and_check$2F2_α_body:
                        lea              rax, [rip + n299_suspend_β]
                        mov              qword ptr [rbp + 544], rax
#-----------------------------------------------------------------------------------------------------------------------
n283_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx300_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx300_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx300_101
.Lx300_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx300_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_read_and_check$2F2_ω
                                                                                        jmp   n284_var_ref_α
n283_op11_β:
                                                                                        jmp   proc_read_and_check$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n284_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n285_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n285_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n286_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n286_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 480]
                        lea              r8, [rbp + 480]
.Lx305_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx305_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx305_41
                        cmp              esi, 1
                                                                                        jne   .Lx305_55
                        mov              r8, rax
                                                                                        jmp   .Lx305_40
.Lx305_55:
                        cmp              esi, 2
                                                                                        jne   .Lx305_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx305_41
                        mov              r8, rax
                                                                                        jmp   .Lx305_40
.Lx305_56:
                        cmp              eax, 13
                                                                                        jne   .Lx305_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx305_41
                        cmp              rax, r8
                                                                                        je    .Lx305_41
                        mov              r8, rax
                                                                                        jmp   .Lx305_40
.Lx305_41:
                        lea              r9, [rbp + 496]
.Lx305_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx305_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx305_43
                        cmp              esi, 1
                                                                                        jne   .Lx305_57
                        mov              r9, rax
                                                                                        jmp   .Lx305_42
.Lx305_57:
                        cmp              esi, 2
                                                                                        jne   .Lx305_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx305_43
                        mov              r9, rax
                                                                                        jmp   .Lx305_42
.Lx305_58:
                        cmp              eax, 13
                                                                                        jne   .Lx305_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx305_43
                        cmp              rax, r9
                                                                                        je    .Lx305_43
                        mov              r9, rax
                                                                                        jmp   .Lx305_42
.Lx305_43:
                        cmp              r8, r9
                                                                                        je    .Lx305_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx305_44
                        cmp              eax, 99
                                                                                        je    .Lx305_44
                        cmp              eax, 13
                                                                                        jne   .Lx305_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx305_44
                                                                                        jmp   .Lx305_45
.Lx305_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx305_53
                        cmp              eax, 99
                                                                                        je    .Lx305_53
                        cmp              eax, 13
                                                                                        jne   .Lx305_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx305_53
                                                                                        jmp   .Lx305_46
.Lx305_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx305_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx305_53
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
                                                                                        jmp   .Lx305_51
.Lx305_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx305_47
                        cmp              eax, 99
                                                                                        je    .Lx305_47
                        cmp              eax, 13
                                                                                        jne   .Lx305_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx305_47
                                                                                        jmp   .Lx305_48
.Lx305_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx305_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx305_53
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
                                                                                        jmp   .Lx305_51
.Lx305_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx305_49
                        cmp              edx, 14
                                                                                        je    .Lx305_53
                                                                                        jmp   .Lx305_52
.Lx305_49:
                        cmp              edx, 14
                                                                                        je    .Lx305_52
                        cmp              ecx, 7
                                                                                        je    .Lx305_53
                        cmp              edx, 7
                                                                                        je    .Lx305_53
                        cmp              ecx, 6
                                                                                        jne   .Lx305_50
                        cmp              edx, 6
                                                                                        jne   .Lx305_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx305_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx305_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx305_51
                                                                                        jmp   .Lx305_52
.Lx305_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx305_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx305_53
.Lx305_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx305_54
.Lx305_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx305_54
.Lx305_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx305_54:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n288_op11_α
                                                                                        jmp   n287_var_ref_α
n286_op11_β:
                                                                                        jmp   n288_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n289_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n288_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_read_and_check$2F2_ω
                                                                                        jmp   proc_read_and_check$2F2_ω
n288_op11_β:
                                                                                        jmp   proc_read_and_check$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n289_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n290_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n290_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        lea              r8, [rbp + 400]
.Lx311_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx311_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx311_41
                        cmp              esi, 1
                                                                                        jne   .Lx311_55
                        mov              r8, rax
                                                                                        jmp   .Lx311_40
.Lx311_55:
                        cmp              esi, 2
                                                                                        jne   .Lx311_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx311_41
                        mov              r8, rax
                                                                                        jmp   .Lx311_40
.Lx311_56:
                        cmp              eax, 13
                                                                                        jne   .Lx311_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx311_41
                        cmp              rax, r8
                                                                                        je    .Lx311_41
                        mov              r8, rax
                                                                                        jmp   .Lx311_40
.Lx311_41:
                        lea              r9, [rbp + 416]
.Lx311_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx311_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx311_43
                        cmp              esi, 1
                                                                                        jne   .Lx311_57
                        mov              r9, rax
                                                                                        jmp   .Lx311_42
.Lx311_57:
                        cmp              esi, 2
                                                                                        jne   .Lx311_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx311_43
                        mov              r9, rax
                                                                                        jmp   .Lx311_42
.Lx311_58:
                        cmp              eax, 13
                                                                                        jne   .Lx311_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx311_43
                        cmp              rax, r9
                                                                                        je    .Lx311_43
                        mov              r9, rax
                                                                                        jmp   .Lx311_42
.Lx311_43:
                        cmp              r8, r9
                                                                                        je    .Lx311_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx311_44
                        cmp              eax, 99
                                                                                        je    .Lx311_44
                        cmp              eax, 13
                                                                                        jne   .Lx311_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx311_44
                                                                                        jmp   .Lx311_45
.Lx311_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx311_53
                        cmp              eax, 99
                                                                                        je    .Lx311_53
                        cmp              eax, 13
                                                                                        jne   .Lx311_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx311_53
                                                                                        jmp   .Lx311_46
.Lx311_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx311_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx311_53
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
                                                                                        jmp   .Lx311_51
.Lx311_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx311_47
                        cmp              eax, 99
                                                                                        je    .Lx311_47
                        cmp              eax, 13
                                                                                        jne   .Lx311_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx311_47
                                                                                        jmp   .Lx311_48
.Lx311_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx311_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx311_53
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
                                                                                        jmp   .Lx311_51
.Lx311_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx311_49
                        cmp              edx, 14
                                                                                        je    .Lx311_53
                                                                                        jmp   .Lx311_52
.Lx311_49:
                        cmp              edx, 14
                                                                                        je    .Lx311_52
                        cmp              ecx, 7
                                                                                        je    .Lx311_53
                        cmp              edx, 7
                                                                                        je    .Lx311_53
                        cmp              ecx, 6
                                                                                        jne   .Lx311_50
                        cmp              edx, 6
                                                                                        jne   .Lx311_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx311_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx311_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx311_51
                                                                                        jmp   .Lx311_52
.Lx311_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx311_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx311_53
.Lx311_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx311_54
.Lx311_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx311_54
.Lx311_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx311_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n288_op11_α
                                                                                        jmp   n291_var_ref_α
n290_op11_β:
                                                                                        jmp   n288_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n291_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n292_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n293_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n293_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx317_20
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx317_21
.Lx317_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx317_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx317_22
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx317_23
.Lx317_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx317_23:
                        mov              rdi, qword ptr [rip + .Lx317_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx317_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx317_3]
                        lea              rdx, [rip + .Lx317_4]
                                                                                        jmp   rax
.Lx317_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx317_2
.Lx317_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx317_2
.Lx317_1:
                        call             rt_faildescr@PLT
.Lx317_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n288_op11_α
                                                                                        jmp   n294_lit_string_α
n293_call_proc_staged_β:
                                                                                        jmp   n288_op11_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "fast_read/2"
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n295_var_ref_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "=@="
#-----------------------------------------------------------------------------------------------------------------------
n295_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n296_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n297_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n297_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n288_op11_α
                                                                                        jmp   n298_call_proc_staged_α
n297_op11_β:
                                                                                        jmp   n288_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n298_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx325_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx325_21
.Lx325_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx325_21:
                        mov              rdi, qword ptr [rip + .Lx325_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx325_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx325_3]
                        lea              rdx, [rip + .Lx325_4]
                                                                                        jmp   rax
.Lx325_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx325_2
.Lx325_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx325_2
.Lx325_1:
                        call             rt_faildescr@PLT
.Lx325_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n293_call_proc_staged_β
                                                                                        jmp   n299_suspend_α
n298_call_proc_staged_β:
                                                                                        jmp   n293_call_proc_staged_β
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "assertion/1"
#-----------------------------------------------------------------------------------------------------------------------
n299_suspend_α:
                        lea              rax, [rip + n299_suspend_β]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_read_and_check$2F2_γ
n299_suspend_β:
                                                                                        jmp   n298_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_read_and_check$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_read_and_check$2F2_β:
                                                                                        jmp   qword ptr [rbp + 544]
#-----------------------------------------------------------------------------------------------------------------------
proc_read_and_check$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_read_and_check$2F2_res]
                        push             rax
                        mov              rax, [rbp + 616]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_read_and_check$2F2_ω:
                        mov              rax, [rbp + 624]
                        lea              rsp, [rbp + 640]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
                        .global          proc_pj_test$2F4_α
                        .global          proc_pj_test$2F4_β
                        .global          proc_pj_test$2F4_γ
                        .global          proc_pj_test$2F4_ω
                        sub              rsp, 5328
                        mov              [rsp + 5304], rcx
                        mov              [rsp + 5312], rdx
                        mov              [rsp + 5320], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 5184
                        mov              edx, 5296
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_test$2F4_α_body:
                        lea              rax, [rip + n425_suspend_β]
                        mov              qword ptr [rbp + 5184], rax
#-----------------------------------------------------------------------------------------------------------------------
n328_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx477_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx477_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx477_101
.Lx477_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx477_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n329_var_ref_α
n328_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                                                                                        jmp   n330_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_string_α:
                        mov              qword ptr [rbp + 5168], 1
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rbp + 5176], rax
                                                                                        jmp   n331_op11_α
.Lx480_0:
                        .quad            .Lx480_0_s
.Lx480_0_s:
                        .string          "fastrw"
#-----------------------------------------------------------------------------------------------------------------------
n331_op11_α:
                        mov              rax, qword ptr [rbp + 5152]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 5160]
                        mov              qword ptr [rbp + 5128], rax
                        lea              rdi, [rbp + 5120]
                        mov              rsi, qword ptr [rip + .Lx481_2]
                                                                                        jmp   .Lx481_3
.Lx481_2:
                        .quad            .Lx481_2_s
.Lx481_2_s:
                        .string          "fastrw"
.Lx481_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                        cmp              eax, 99
                                                                                        je    n333_op11_α
                                                                                        jmp   n332_var_ref_α
n331_op11_β:
                                                                                        jmp   n333_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                                                                                        jmp   n334_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n333_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3976], rax
                        lea              rdi, [rbp + 3968]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n335_var_ref_α
n333_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_string_α:
                        mov              qword ptr [rbp + 5088], 1
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rbp + 5096], rax
                                                                                        jmp   n336_op11_α
.Lx485_0:
                        .quad            .Lx485_0_s
.Lx485_0_s:
                        .string          "serialize"
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                                                                                        jmp   n337_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n336_op11_α:
                        mov              rax, qword ptr [rbp + 5072]
                        mov              qword ptr [rbp + 5040], rax
                        mov              rax, qword ptr [rbp + 5080]
                        mov              qword ptr [rbp + 5048], rax
                        lea              rdi, [rbp + 5040]
                        mov              rsi, qword ptr [rip + .Lx488_2]
                                                                                        jmp   .Lx488_3
.Lx488_2:
                        .quad            .Lx488_2_s
.Lx488_2_s:
                        .string          "serialize"
.Lx488_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx
                        cmp              eax, 99
                                                                                        je    n333_op11_α
                                                                                        jmp   n338_var_ref_α
n336_op11_β:
                                                                                        jmp   n333_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_string_α:
                        mov              qword ptr [rbp + 3936], 1
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n339_op11_α
.Lx489_0:
                        .quad            .Lx489_0_s
.Lx489_0_s:
                        .string          "fastrw"
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                                                                                        jmp   n340_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n339_op11_α:
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3896], rax
                        lea              rdi, [rbp + 3888]
                        mov              rsi, qword ptr [rip + .Lx492_2]
                                                                                        jmp   .Lx492_3
.Lx492_2:
                        .quad            .Lx492_2_s
.Lx492_2_s:
                        .string          "fastrw"
.Lx492_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        cmp              eax, 99
                                                                                        je    n342_op11_α
                                                                                        jmp   n341_var_ref_α
n339_op11_β:
                                                                                        jmp   n342_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:
                        mov              qword ptr [rbp + 5008], 1
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rbp + 5016], rax
                                                                                        jmp   n343_op11_α
.Lx493_0:
                        .quad            .Lx493_0_s
.Lx493_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                                                                                        jmp   n344_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n342_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rdi, [rbp + 1584]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n345_var_ref_α
n342_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n343_op11_α:
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 4968], rax
                        lea              rdi, [rbp + 4960]
                        mov              rsi, qword ptr [rip + .Lx497_2]
                                                                                        jmp   .Lx497_3
.Lx497_2:
                        .quad            .Lx497_2_s
.Lx497_2_s:
                        .string          "[]"
.Lx497_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                        cmp              eax, 99
                                                                                        je    n333_op11_α
                                                                                        jmp   n346_var_ref_α
n343_op11_β:
                                                                                        jmp   n333_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_string_α:
                        mov              qword ptr [rbp + 3856], 1
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rbp + 3864], rax
                                                                                        jmp   n347_op11_α
.Lx498_0:
                        .quad            .Lx498_0_s
.Lx498_0_s:
                        .string          "fastrw"
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n348_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                                                                                        jmp   n349_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n347_op11_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3816], rax
                        lea              rdi, [rbp + 3808]
                        mov              rsi, qword ptr [rip + .Lx503_2]
                                                                                        jmp   .Lx503_3
.Lx503_2:
                        .quad            .Lx503_2_s
.Lx503_2_s:
                        .string          "fastrw"
.Lx503_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              eax, 99
                                                                                        je    n342_op11_α
                                                                                        jmp   n350_var_ref_α
n347_op11_β:
                                                                                        jmp   n342_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n351_op11_α
.Lx504_0:
                        .quad            .Lx504_0_s
.Lx504_0_s:
                        .string          "fastrw"
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:
                        mov              qword ptr [rbp + 4928], 1
                        mov              rax, qword ptr [rip + .Lx505_0]
                        mov              qword ptr [rbp + 4936], rax
                                                                                        jmp   n352_lit_string_α
.Lx505_0:
                        .quad            .Lx505_0_s
.Lx505_0_s:
                        .string          "forall"
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                                                                                        jmp   n353_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n351_op11_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1504]
                        mov              rsi, qword ptr [rip + .Lx508_2]
                                                                                        jmp   .Lx508_3
.Lx508_2:
                        .quad            .Lx508_2_s
.Lx508_2_s:
                        .string          "fastrw"
.Lx508_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n355_op11_α
                                                                                        jmp   n354_var_ref_α
n351_op11_β:
                                                                                        jmp   n355_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:
                        mov              qword ptr [rbp + 4176], 1
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rbp + 4184], rax
                                                                                        jmp   n356_var_ref_α
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:
                        mov              qword ptr [rbp + 3776], 1
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rbp + 3784], rax
                                                                                        jmp   n357_op11_α
.Lx510_0:
                        .quad            .Lx510_0_s
.Lx510_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n358_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n355_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   proc_pj_test$2F4_ω
n355_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5200]
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                                                                                        jmp   n359_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n357_op11_α:
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3736], rax
                        lea              rdi, [rbp + 3728]
                        mov              rsi, qword ptr [rip + .Lx516_2]
                                                                                        jmp   .Lx516_3
.Lx516_2:
                        .quad            .Lx516_2_s
.Lx516_2_s:
                        .string          "[]"
.Lx516_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                        cmp              eax, 99
                                                                                        je    n342_op11_α
                                                                                        jmp   n360_var_ref_α
n357_op11_β:
                                                                                        jmp   n342_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n361_op11_α
.Lx517_0:
                        .quad            .Lx517_0_s
.Lx517_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5216]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n362_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n360_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n363_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n361_op11_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1424]
                        mov              rsi, qword ptr [rip + .Lx522_2]
                                                                                        jmp   .Lx522_3
.Lx522_2:
                        .quad            .Lx522_2_s
.Lx522_2_s:
                        .string          "error"
.Lx522_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n355_op11_α
                                                                                        jmp   n364_var_ref_α
n361_op11_β:
                                                                                        jmp   n355_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n362_op11_α:
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4120], rax
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4128], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4136], rax
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 4152], rax
                        lea              rdi, [rbp + 4112]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n365_lit_string_α
n362_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:
                        mov              qword ptr [rbp + 3696], 1
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n366_lit_string_α
.Lx524_0:
                        .quad            .Lx524_0_s
.Lx524_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n367_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:
                        mov              qword ptr [rbp + 4832], 1
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rbp + 4840], rax
                                                                                        jmp   n368_lit_string_α
.Lx527_0:
                        .quad            .Lx527_0_s
.Lx527_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n369_var_ref_α
.Lx528_0:
                        .quad            .Lx528_0_s
.Lx528_0_s:
                        .string          "findall"
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n370_lit_string_α
.Lx529_0:
                        .quad            .Lx529_0_s
.Lx529_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:
                        mov              qword ptr [rbp + 4304], 1
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rbp + 4312], rax
                                                                                        jmp   n371_var_ref_α
.Lx530_0:
                        .quad            .Lx530_0_s
.Lx530_0_s:
                        .string          "fast_term_serialized"
#-----------------------------------------------------------------------------------------------------------------------
n369_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5200]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n372_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n373_lit_string_α
.Lx533_0:
                        .quad            .Lx533_0_s
.Lx533_0_s:
                        .string          "permission_error"
#-----------------------------------------------------------------------------------------------------------------------
n371_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5216]
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                                                                                        jmp   n374_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_string_α:
                        mov              qword ptr [rbp + 1808], 1
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n375_var_ref_α
.Lx536_0:
                        .quad            .Lx536_0_s
.Lx536_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n376_lit_string_α
.Lx537_0:
                        .quad            .Lx537_0_s
.Lx537_0_s:
                        .string          "fast_serialize"
#-----------------------------------------------------------------------------------------------------------------------
n374_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5232]
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                                                                                        jmp   n377_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n375_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5216]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n378_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n379_var_ref_α
.Lx542_0:
                        .quad            .Lx542_0_s
.Lx542_0_s:
                        .string          "blob"
#-----------------------------------------------------------------------------------------------------------------------
n377_op11_α:
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 4240], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 4248], rax
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4264], rax
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 4272], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 4280], rax
                        lea              rdi, [rbp + 4240]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n380_lit_string_α
n377_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n378_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5200]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n381_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n379_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5200]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n382_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:
                        mov              qword ptr [rbp + 4736], 1
                        mov              rax, qword ptr [rip + .Lx548_0]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   n383_lit_string_α
.Lx548_0:
                        .quad            .Lx548_0_s
.Lx548_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n381_op11_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1784], rax
                        lea              rdi, [rbp + 1744]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n384_var_ref_α
n381_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n382_op11_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n385_op11_α
n382_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_string_α:
                        mov              qword ptr [rbp + 4432], 1
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n386_var_ref_α
.Lx551_0:
                        .quad            .Lx551_0_s
.Lx551_0_s:
                        .string          "fast_term_serialized"
#-----------------------------------------------------------------------------------------------------------------------
n384_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5232]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n387_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n385_op11_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n355_op11_α
                                                                                        jmp   n388_op11_α
n385_op11_β:
                                                                                        jmp   n355_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5248]
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                                                                                        jmp   n389_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n387_op11_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1736]
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n390_lit_string_α
n387_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n388_op11_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1120]
                        lea              r8, [rbp + 1120]
.Lx558_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx558_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx558_41
                        cmp              esi, 1
                                                                                        jne   .Lx558_55
                        mov              r8, rax
                                                                                        jmp   .Lx558_40
.Lx558_55:
                        cmp              esi, 2
                                                                                        jne   .Lx558_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx558_41
                        mov              r8, rax
                                                                                        jmp   .Lx558_40
.Lx558_56:
                        cmp              eax, 13
                                                                                        jne   .Lx558_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx558_41
                        cmp              rax, r8
                                                                                        je    .Lx558_41
                        mov              r8, rax
                                                                                        jmp   .Lx558_40
.Lx558_41:
                        lea              r9, [rbp + 1136]
.Lx558_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx558_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx558_43
                        cmp              esi, 1
                                                                                        jne   .Lx558_57
                        mov              r9, rax
                                                                                        jmp   .Lx558_42
.Lx558_57:
                        cmp              esi, 2
                                                                                        jne   .Lx558_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx558_43
                        mov              r9, rax
                                                                                        jmp   .Lx558_42
.Lx558_58:
                        cmp              eax, 13
                                                                                        jne   .Lx558_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx558_43
                        cmp              rax, r9
                                                                                        je    .Lx558_43
                        mov              r9, rax
                                                                                        jmp   .Lx558_42
.Lx558_43:
                        cmp              r8, r9
                                                                                        je    .Lx558_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx558_44
                        cmp              eax, 99
                                                                                        je    .Lx558_44
                        cmp              eax, 13
                                                                                        jne   .Lx558_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx558_44
                                                                                        jmp   .Lx558_45
.Lx558_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx558_53
                        cmp              eax, 99
                                                                                        je    .Lx558_53
                        cmp              eax, 13
                                                                                        jne   .Lx558_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx558_53
                                                                                        jmp   .Lx558_46
.Lx558_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx558_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx558_53
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
                                                                                        jmp   .Lx558_51
.Lx558_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx558_47
                        cmp              eax, 99
                                                                                        je    .Lx558_47
                        cmp              eax, 13
                                                                                        jne   .Lx558_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx558_47
                                                                                        jmp   .Lx558_48
.Lx558_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx558_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx558_53
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
                                                                                        jmp   .Lx558_51
.Lx558_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx558_49
                        cmp              edx, 14
                                                                                        je    .Lx558_53
                                                                                        jmp   .Lx558_52
.Lx558_49:
                        cmp              edx, 14
                                                                                        je    .Lx558_52
                        cmp              ecx, 7
                                                                                        je    .Lx558_53
                        cmp              edx, 7
                                                                                        je    .Lx558_53
                        cmp              ecx, 6
                                                                                        jne   .Lx558_50
                        cmp              edx, 6
                                                                                        jne   .Lx558_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx558_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx558_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx558_51
                                                                                        jmp   .Lx558_52
.Lx558_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx558_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx558_53
.Lx558_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx558_54
.Lx558_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx558_54
.Lx558_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx558_54:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n355_op11_α
                                                                                        jmp   n391_var_ref_α
n388_op11_β:
                                                                                        jmp   n355_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n389_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5232]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                                                                                        jmp   n392_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n393_lit_string_α
.Lx561_0:
                        .quad            .Lx561_0_s
.Lx561_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n391_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n394_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n392_op11_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 4376], rax
                        mov              rax, qword ptr [rbp + 4320]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4328]
                        mov              qword ptr [rbp + 4392], rax
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4408], rax
                        lea              rdi, [rbp + 4368]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n395_lit_string_α
n392_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_string_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n396_lit_string_α
.Lx565_0:
                        .quad            .Lx565_0_s
.Lx565_0_s:
                        .string          "setup_call_cleanup"
#-----------------------------------------------------------------------------------------------------------------------
n394_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n397_lit_string_α
.Lx566_0:
                        .quad            .Lx566_0_s
.Lx566_0_s:
                        .string          "setup_call_cleanup"
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_string_α:
                        mov              qword ptr [rbp + 4640], 1
                        mov              rax, qword ptr [rip + .Lx567_0]
                        mov              qword ptr [rbp + 4648], rax
                                                                                        jmp   n398_lit_string_α
.Lx567_0:
                        .quad            .Lx567_0_s
.Lx567_0_s:
                        .string          "assertion"
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:
                        mov              qword ptr [rbp + 2096], 1
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n399_lit_string_α
.Lx568_0:
                        .quad            .Lx568_0_s
.Lx568_0_s:
                        .string          "tmp_file_stream"
#-----------------------------------------------------------------------------------------------------------------------
n397_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n400_lit_string_α
.Lx569_0:
                        .quad            .Lx569_0_s
.Lx569_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_string_α:
                        mov              qword ptr [rbp + 4560], 1
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rbp + 4568], rax
                                                                                        jmp   n401_var_ref_α
.Lx570_0:
                        .quad            .Lx570_0_s
.Lx570_0_s:
                        .string          "=@="
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:
                        mov              qword ptr [rbp + 1952], 1
                        mov              rax, qword ptr [rip + .Lx571_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n402_var_ref_α
.Lx571_0:
                        .quad            .Lx571_0_s
.Lx571_0_s:
                        .string          "binary"
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n403_var_ref_α
.Lx572_0:
                        .quad            .Lx572_0_s
.Lx572_0_s:
                        .string          "open_null_stream"
#-----------------------------------------------------------------------------------------------------------------------
n401_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5216]
                        mov              qword ptr [rbp + 4448], rax
                        mov              qword ptr [rbp + 4456], rdx
                                                                                        jmp   n404_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n402_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5248]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n405_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n403_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5200]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n406_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n404_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5248]
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                                                                                        jmp   n407_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n405_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5264]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n408_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n406_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n409_lit_string_α
n406_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n407_op11_α:
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4504], rax
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 4520], rax
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4536], rax
                        lea              rdi, [rbp + 4496]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n410_op11_α
n407_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n408_op11_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 2072], rax
                        lea              rdi, [rbp + 2016]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n411_lit_string_α
n408_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n412_var_ref_α
.Lx586_0:
                        .quad            .Lx586_0_s
.Lx586_0_s:
                        .string          "set_stream"
#-----------------------------------------------------------------------------------------------------------------------
n410_op11_α:
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 4600], rax
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 4616], rax
                        lea              rdi, [rbp + 4592]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n413_op11_α
n410_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_string_α:
                        mov              qword ptr [rbp + 2304], 1
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n414_lit_string_α
.Lx588_0:
                        .quad            .Lx588_0_s
.Lx588_0_s:
                        .string          "maplist"
#-----------------------------------------------------------------------------------------------------------------------
n412_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5200]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n415_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n413_op11_α:
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4672], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4680], rax
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4696], rax
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 4712], rax
                        lea              rdi, [rbp + 4672]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4656], rax
                        mov              qword ptr [rbp + 4664], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n416_op11_α
n413_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n417_var_ref_α
.Lx592_0:
                        .quad            .Lx592_0_s
.Lx592_0_s:
                        .string          "fast_write"
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n418_lit_string_α
.Lx593_0:
                        .quad            .Lx593_0_s
.Lx593_0_s:
                        .string          "encoding"
#-----------------------------------------------------------------------------------------------------------------------
n416_op11_α:
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 4776], rax
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4792], rax
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4808], rax
                        lea              rdi, [rbp + 4768]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n419_op11_α
n416_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n417_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5264]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n420_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx597_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n421_op11_α
.Lx597_0:
                        .quad            .Lx597_0_s
.Lx597_0_s:
                        .string          "octet"
#-----------------------------------------------------------------------------------------------------------------------
n419_op11_α:
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 4872], rax
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 4880], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 4888], rax
                        mov              rax, qword ptr [rbp + 4752]
                        mov              qword ptr [rbp + 4896], rax
                        mov              rax, qword ptr [rbp + 4760]
                        mov              qword ptr [rbp + 4904], rax
                        lea              rdi, [rbp + 4864]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                        cmp              eax, 99
                                                                                        je    n333_op11_α
                                                                                        jmp   n422_op11_α
n419_op11_β:
                                                                                        jmp   n333_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n420_op11_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2168], rax
                        lea              rdi, [rbp + 2144]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n423_var_ref_α
n420_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n421_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n424_op11_α
n421_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n422_op11_α:
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4024], rax
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 4040], rax
                        lea              rdi, [rbp + 4016]
                        lea              r8, [rbp + 4016]
.Lx601_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx601_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx601_41
                        cmp              esi, 1
                                                                                        jne   .Lx601_55
                        mov              r8, rax
                                                                                        jmp   .Lx601_40
.Lx601_55:
                        cmp              esi, 2
                                                                                        jne   .Lx601_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx601_41
                        mov              r8, rax
                                                                                        jmp   .Lx601_40
.Lx601_56:
                        cmp              eax, 13
                                                                                        jne   .Lx601_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx601_41
                        cmp              rax, r8
                                                                                        je    .Lx601_41
                        mov              r8, rax
                                                                                        jmp   .Lx601_40
.Lx601_41:
                        lea              r9, [rbp + 4032]
.Lx601_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx601_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx601_43
                        cmp              esi, 1
                                                                                        jne   .Lx601_57
                        mov              r9, rax
                                                                                        jmp   .Lx601_42
.Lx601_57:
                        cmp              esi, 2
                                                                                        jne   .Lx601_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx601_43
                        mov              r9, rax
                                                                                        jmp   .Lx601_42
.Lx601_58:
                        cmp              eax, 13
                                                                                        jne   .Lx601_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx601_43
                        cmp              rax, r9
                                                                                        je    .Lx601_43
                        mov              r9, rax
                                                                                        jmp   .Lx601_42
.Lx601_43:
                        cmp              r8, r9
                                                                                        je    .Lx601_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx601_44
                        cmp              eax, 99
                                                                                        je    .Lx601_44
                        cmp              eax, 13
                                                                                        jne   .Lx601_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx601_44
                                                                                        jmp   .Lx601_45
.Lx601_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx601_53
                        cmp              eax, 99
                                                                                        je    .Lx601_53
                        cmp              eax, 13
                                                                                        jne   .Lx601_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx601_53
                                                                                        jmp   .Lx601_46
.Lx601_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx601_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx601_53
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
                                                                                        jmp   .Lx601_51
.Lx601_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx601_47
                        cmp              eax, 99
                                                                                        je    .Lx601_47
                        cmp              eax, 13
                                                                                        jne   .Lx601_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx601_47
                                                                                        jmp   .Lx601_48
.Lx601_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx601_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx601_53
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
                                                                                        jmp   .Lx601_51
.Lx601_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx601_49
                        cmp              edx, 14
                                                                                        je    .Lx601_53
                                                                                        jmp   .Lx601_52
.Lx601_49:
                        cmp              edx, 14
                                                                                        je    .Lx601_52
                        cmp              ecx, 7
                                                                                        je    .Lx601_53
                        cmp              edx, 7
                                                                                        je    .Lx601_53
                        cmp              ecx, 6
                                                                                        jne   .Lx601_50
                        cmp              edx, 6
                                                                                        jne   .Lx601_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx601_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx601_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx601_51
                                                                                        jmp   .Lx601_52
.Lx601_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx601_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx601_53
.Lx601_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx601_54
.Lx601_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx601_54
.Lx601_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx601_54:
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              eax, 99
                                                                                        je    n333_op11_α
                                                                                        jmp   n425_suspend_α
n422_op11_β:
                                                                                        jmp   n333_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n423_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5232]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n426_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n424_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n427_op11_α
n424_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n425_suspend_α:
                        lea              rax, [rip + n425_suspend_β]
                        mov              qword ptr [rbp + 5184], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n425_suspend_β:
                                                                                        jmp   n333_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n426_op11_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2240]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n428_lit_string_α
n426_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n427_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n429_lit_string_α
n427_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_string_α:
                        mov              qword ptr [rbp + 2400], 1
                        mov              rax, qword ptr [rip + .Lx609_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n430_var_ref_α
.Lx609_0:
                        .quad            .Lx609_0_s
.Lx609_0_s:
                        .string          "close"
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx610_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n431_var_ref_α
.Lx610_0:
                        .quad            .Lx610_0_s
.Lx610_0_s:
                        .string          "fast_write"
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5264]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n432_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n431_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5200]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n433_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n432_op11_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2376], rax
                        lea              rdi, [rbp + 2352]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n434_op11_α
n432_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n435_var_ref_α
.Lx616_0:
                        .quad            .Lx616_0_s
.Lx616_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n434_op11_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2488], rax
                        lea              rdi, [rbp + 2432]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n436_lit_string_α
n434_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n435_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5216]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n437_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:
                        mov              qword ptr [rbp + 3504], 1
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n438_lit_string_α
.Lx620_0:
                        .quad            .Lx620_0_s
.Lx620_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n437_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5216]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n439_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_string_α:
                        mov              qword ptr [rbp + 3312], 1
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n440_lit_string_α
.Lx623_0:
                        .quad            .Lx623_0_s
.Lx623_0_s:
                        .string          "setup_call_cleanup"
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5200]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n441_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n440_lit_string_α:
                        mov              qword ptr [rbp + 2896], 1
                        mov              rax, qword ptr [rip + .Lx626_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n442_var_ref_α
.Lx626_0:
                        .quad            .Lx626_0_s
.Lx626_0_s:
                        .string          "open"
#-----------------------------------------------------------------------------------------------------------------------
n441_op11_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n443_op11_α
n441_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5248]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n444_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n443_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n445_lit_string_α
n443_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              rax, qword ptr [rip + .Lx631_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n446_var_ref_α
.Lx631_0:
                        .quad            .Lx631_0_s
.Lx631_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n447_var_ref_α
.Lx632_0:
                        .quad            .Lx632_0_s
.Lx632_0_s:
                        .string          "close"
#-----------------------------------------------------------------------------------------------------------------------
n446_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5280]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n448_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n447_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5200]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n449_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_string_α:
                        mov              qword ptr [rbp + 2768], 1
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n450_lit_string_α
.Lx637_0:
                        .quad            .Lx637_0_s
.Lx637_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n449_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n451_op11_α
n449_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n450_lit_string_α:
                        mov              qword ptr [rbp + 2672], 1
                        mov              rax, qword ptr [rip + .Lx639_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n452_lit_string_α
.Lx639_0:
                        .quad            .Lx639_0_s
.Lx639_0_s:
                        .string          "type"
#-----------------------------------------------------------------------------------------------------------------------
n451_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n355_op11_α
                                                                                        jmp   n453_op11_α
n451_op11_β:
                                                                                        jmp   n355_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_string_α:
                        mov              qword ptr [rbp + 2592], 1
                        mov              rax, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n454_op11_α
.Lx641_0:
                        .quad            .Lx641_0_s
.Lx641_0_s:
                        .string          "binary"
#-----------------------------------------------------------------------------------------------------------------------
n453_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        lea              r8, [rbp + 176]
.Lx642_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx642_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx642_41
                        cmp              esi, 1
                                                                                        jne   .Lx642_55
                        mov              r8, rax
                                                                                        jmp   .Lx642_40
.Lx642_55:
                        cmp              esi, 2
                                                                                        jne   .Lx642_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx642_41
                        mov              r8, rax
                                                                                        jmp   .Lx642_40
.Lx642_56:
                        cmp              eax, 13
                                                                                        jne   .Lx642_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx642_41
                        cmp              rax, r8
                                                                                        je    .Lx642_41
                        mov              r8, rax
                                                                                        jmp   .Lx642_40
.Lx642_41:
                        lea              r9, [rbp + 192]
.Lx642_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx642_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx642_43
                        cmp              esi, 1
                                                                                        jne   .Lx642_57
                        mov              r9, rax
                                                                                        jmp   .Lx642_42
.Lx642_57:
                        cmp              esi, 2
                                                                                        jne   .Lx642_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx642_43
                        mov              r9, rax
                                                                                        jmp   .Lx642_42
.Lx642_58:
                        cmp              eax, 13
                                                                                        jne   .Lx642_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx642_43
                        cmp              rax, r9
                                                                                        je    .Lx642_43
                        mov              r9, rax
                                                                                        jmp   .Lx642_42
.Lx642_43:
                        cmp              r8, r9
                                                                                        je    .Lx642_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx642_44
                        cmp              eax, 99
                                                                                        je    .Lx642_44
                        cmp              eax, 13
                                                                                        jne   .Lx642_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx642_44
                                                                                        jmp   .Lx642_45
.Lx642_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx642_53
                        cmp              eax, 99
                                                                                        je    .Lx642_53
                        cmp              eax, 13
                                                                                        jne   .Lx642_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx642_53
                                                                                        jmp   .Lx642_46
.Lx642_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx642_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx642_53
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
                                                                                        jmp   .Lx642_51
.Lx642_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx642_47
                        cmp              eax, 99
                                                                                        je    .Lx642_47
                        cmp              eax, 13
                                                                                        jne   .Lx642_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx642_47
                                                                                        jmp   .Lx642_48
.Lx642_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx642_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx642_53
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
                                                                                        jmp   .Lx642_51
.Lx642_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx642_49
                        cmp              edx, 14
                                                                                        je    .Lx642_53
                                                                                        jmp   .Lx642_52
.Lx642_49:
                        cmp              edx, 14
                                                                                        je    .Lx642_52
                        cmp              ecx, 7
                                                                                        je    .Lx642_53
                        cmp              edx, 7
                                                                                        je    .Lx642_53
                        cmp              ecx, 6
                                                                                        jne   .Lx642_50
                        cmp              edx, 6
                                                                                        jne   .Lx642_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx642_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx642_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx642_51
                                                                                        jmp   .Lx642_52
.Lx642_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx642_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx642_53
.Lx642_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx642_54
.Lx642_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx642_54
.Lx642_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx642_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n355_op11_α
                                                                                        jmp   n455_suspend_α
n453_op11_β:
                                                                                        jmp   n355_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n454_op11_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2648], rax
                        lea              rdi, [rbp + 2624]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n456_lit_string_α
n454_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n455_suspend_α:
                        lea              rax, [rip + n455_suspend_β]
                        mov              qword ptr [rbp + 5184], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n455_suspend_β:
                                                                                        jmp   n355_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_string_α:
                        mov              qword ptr [rbp + 2576], 1
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n457_op11_α
.Lx646_0:
                        .quad            .Lx646_0_s
.Lx646_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n457_op11_α:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2728], rax
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rdi, [rbp + 2704]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n458_op11_α
n457_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n458_op11_α:
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2824], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2840], rax
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2856], rax
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2872], rax
                        lea              rdi, [rbp + 2800]
                        mov              esi, 5
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n459_lit_string_α
n458_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_string_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n460_lit_string_α
.Lx649_0:
                        .quad            .Lx649_0_s
.Lx649_0_s:
                        .string          "maplist"
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_string_α:
                        mov              qword ptr [rbp + 2992], 1
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n461_var_ref_α
.Lx650_0:
                        .quad            .Lx650_0_s
.Lx650_0_s:
                        .string          "read_and_check"
#-----------------------------------------------------------------------------------------------------------------------
n461_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5280]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n462_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n462_op11_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2952], rax
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2968], rax
                        lea              rdi, [rbp + 2944]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n463_var_ref_α
n462_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n463_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5232]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n464_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n464_op11_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3048], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 3064], rax
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 3080], rax
                        lea              rdi, [rbp + 3040]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n465_lit_string_α
n464_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_string_α:
                        mov              qword ptr [rbp + 3200], 1
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n466_var_ref_α
.Lx657_0:
                        .quad            .Lx657_0_s
.Lx657_0_s:
                        .string          "close"
#-----------------------------------------------------------------------------------------------------------------------
n466_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5280]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                                                                                        jmp   n467_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n467_op11_α:
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3160], rax
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3176], rax
                        lea              rdi, [rbp + 3152]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n468_op11_α
n467_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n468_op11_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 3272], rax
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3288], rax
                        lea              rdi, [rbp + 3232]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n469_lit_string_α
n468_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_string_α:
                        mov              qword ptr [rbp + 3408], 1
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rbp + 3416], rax
                                                                                        jmp   n470_var_ref_α
.Lx662_0:
                        .quad            .Lx662_0_s
.Lx662_0_s:
                        .string          "delete_file"
#-----------------------------------------------------------------------------------------------------------------------
n470_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5248]
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                                                                                        jmp   n471_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n471_op11_α:
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3384], rax
                        lea              rdi, [rbp + 3360]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n472_op11_α
n471_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n472_op11_α:
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3448], rax
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3464], rax
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3480], rax
                        lea              rdi, [rbp + 3440]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n473_op11_α
n472_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n473_op11_α:
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3544], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 3560], rax
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3576], rax
                        lea              rdi, [rbp + 3536]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n474_op11_α
n473_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n474_op11_α:
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3640], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 3656], rax
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3672], rax
                        lea              rdi, [rbp + 3632]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 99
                                                                                        je    n342_op11_α
                                                                                        jmp   n475_op11_α
n474_op11_β:
                                                                                        jmp   n342_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n475_op11_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 1656], rax
                        lea              rdi, [rbp + 1632]
                        lea              r8, [rbp + 1632]
.Lx669_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx669_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx669_41
                        cmp              esi, 1
                                                                                        jne   .Lx669_55
                        mov              r8, rax
                                                                                        jmp   .Lx669_40
.Lx669_55:
                        cmp              esi, 2
                                                                                        jne   .Lx669_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx669_41
                        mov              r8, rax
                                                                                        jmp   .Lx669_40
.Lx669_56:
                        cmp              eax, 13
                                                                                        jne   .Lx669_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx669_41
                        cmp              rax, r8
                                                                                        je    .Lx669_41
                        mov              r8, rax
                                                                                        jmp   .Lx669_40
.Lx669_41:
                        lea              r9, [rbp + 1648]
.Lx669_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx669_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx669_43
                        cmp              esi, 1
                                                                                        jne   .Lx669_57
                        mov              r9, rax
                                                                                        jmp   .Lx669_42
.Lx669_57:
                        cmp              esi, 2
                                                                                        jne   .Lx669_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx669_43
                        mov              r9, rax
                                                                                        jmp   .Lx669_42
.Lx669_58:
                        cmp              eax, 13
                                                                                        jne   .Lx669_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx669_43
                        cmp              rax, r9
                                                                                        je    .Lx669_43
                        mov              r9, rax
                                                                                        jmp   .Lx669_42
.Lx669_43:
                        cmp              r8, r9
                                                                                        je    .Lx669_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx669_44
                        cmp              eax, 99
                                                                                        je    .Lx669_44
                        cmp              eax, 13
                                                                                        jne   .Lx669_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx669_44
                                                                                        jmp   .Lx669_45
.Lx669_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx669_53
                        cmp              eax, 99
                                                                                        je    .Lx669_53
                        cmp              eax, 13
                                                                                        jne   .Lx669_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx669_53
                                                                                        jmp   .Lx669_46
.Lx669_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx669_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx669_53
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
                                                                                        jmp   .Lx669_51
.Lx669_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx669_47
                        cmp              eax, 99
                                                                                        je    .Lx669_47
                        cmp              eax, 13
                                                                                        jne   .Lx669_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx669_47
                                                                                        jmp   .Lx669_48
.Lx669_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx669_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx669_53
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
                                                                                        jmp   .Lx669_51
.Lx669_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx669_49
                        cmp              edx, 14
                                                                                        je    .Lx669_53
                                                                                        jmp   .Lx669_52
.Lx669_49:
                        cmp              edx, 14
                                                                                        je    .Lx669_52
                        cmp              ecx, 7
                                                                                        je    .Lx669_53
                        cmp              edx, 7
                                                                                        je    .Lx669_53
                        cmp              ecx, 6
                                                                                        jne   .Lx669_50
                        cmp              edx, 6
                                                                                        jne   .Lx669_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx669_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx669_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx669_51
                                                                                        jmp   .Lx669_52
.Lx669_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx669_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx669_53
.Lx669_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx669_54
.Lx669_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx669_54
.Lx669_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx669_54:
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n342_op11_α
                                                                                        jmp   n476_suspend_α
n475_op11_β:
                                                                                        jmp   n342_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n476_suspend_α:
                        lea              rax, [rip + n476_suspend_β]
                        mov              qword ptr [rbp + 5184], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n476_suspend_β:
                                                                                        jmp   n342_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   qword ptr [rbp + 5184]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_test$2F4_res]
                        push             rax
                        mov              rax, [rbp + 5304]
                        mov              rbp, [rbp + 5320]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rax, [rbp + 5312]
                        lea              rsp, [rbp + 5328]
                        mov              rbp, [rbp + 5320]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_term$2F2_α
proc_term$2F2_α:
                        .global          proc_term$2F2_α
                        .global          proc_term$2F2_β
                        .global          proc_term$2F2_γ
                        .global          proc_term$2F2_ω
                        sub              rsp, 4656
                        mov              [rsp + 4632], rcx
                        mov              [rsp + 4640], rdx
                        mov              [rsp + 4648], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 4576
                        mov              edx, 4624
                        call             rt_jmp_frame_lexprep2@PLT
proc_term$2F2_α_body:
                        lea              rax, [rip + n682_suspend_β]
                        mov              qword ptr [rbp + 4576], rax
#-----------------------------------------------------------------------------------------------------------------------
n672_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx838_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx838_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx838_101
.Lx838_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx838_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   n673_var_ref_α
n672_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n673_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4544], rax
                        mov              qword ptr [rbp + 4552], rdx
                                                                                        jmp   n674_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_string_α:
                        mov              qword ptr [rbp + 4560], 1
                        mov              rax, qword ptr [rip + .Lx841_0]
                        mov              qword ptr [rbp + 4568], rax
                                                                                        jmp   n675_op11_α
.Lx841_0:
                        .quad            .Lx841_0_s
.Lx841_0_s:
                        .string          "int"
#-----------------------------------------------------------------------------------------------------------------------
n675_op11_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4520], rax
                        lea              rdi, [rbp + 4512]
                        mov              rsi, qword ptr [rip + .Lx842_2]
                                                                                        jmp   .Lx842_3
.Lx842_2:
                        .quad            .Lx842_2_s
.Lx842_2_s:
                        .string          "int"
.Lx842_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                        cmp              eax, 99
                                                                                        je    n677_op11_α
                                                                                        jmp   n676_var_ref_α
n675_op11_β:
                                                                                        jmp   n677_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n676_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                                                                                        jmp   n678_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n677_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4392], rax
                        lea              rdi, [rbp + 4384]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   n679_var_ref_α
n677_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n678_lit_integer_α:
                        mov              qword ptr [rbp + 4480], 6
                        mov              rax, qword ptr [rip + .Lx846_0]
                        mov              qword ptr [rbp + 4488], rax
                                                                                        jmp   n680_op11_α
.Lx846_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n679_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                                                                                        jmp   n681_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n680_op11_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4440], rax
                        lea              rdi, [rbp + 4432]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                        cmp              eax, 99
                                                                                        je    n677_op11_α
                                                                                        jmp   n682_suspend_α
n680_op11_β:
                                                                                        jmp   n677_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n681_lit_string_α:
                        mov              qword ptr [rbp + 4352], 1
                        mov              rax, qword ptr [rip + .Lx850_0]
                        mov              qword ptr [rbp + 4360], rax
                                                                                        jmp   n683_op11_α
.Lx850_0:
                        .quad            .Lx850_0_s
.Lx850_0_s:
                        .string          "int"
#-----------------------------------------------------------------------------------------------------------------------
n682_suspend_α:
                        lea              rax, [rip + n682_suspend_β]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F2_γ
n682_suspend_β:
                                                                                        jmp   n677_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n683_op11_α:
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4312], rax
                        lea              rdi, [rbp + 4304]
                        mov              rsi, qword ptr [rip + .Lx853_2]
                                                                                        jmp   .Lx853_3
.Lx853_2:
                        .quad            .Lx853_2_s
.Lx853_2_s:
                        .string          "int"
.Lx853_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              eax, 99
                                                                                        je    n685_op11_α
                                                                                        jmp   n684_var_ref_α
n683_op11_β:
                                                                                        jmp   n685_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n684_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                                                                                        jmp   n686_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n685_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4184], rax
                        lea              rdi, [rbp + 4176]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   n687_var_ref_α
n685_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n686_lit_integer_α:
                        mov              qword ptr [rbp + 4272], 6
                        mov              rax, qword ptr [rip + .Lx857_0]
                        mov              qword ptr [rbp + 4280], rax
                                                                                        jmp   n688_op11_α
.Lx857_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n687_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n689_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n688_op11_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4232], rax
                        lea              rdi, [rbp + 4224]
                        movabs           rsi, 18446744073709551615
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                        cmp              eax, 99
                                                                                        je    n685_op11_α
                                                                                        jmp   n690_suspend_α
n688_op11_β:
                                                                                        jmp   n685_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n689_lit_string_α:
                        mov              qword ptr [rbp + 4144], 1
                        mov              rax, qword ptr [rip + .Lx861_0]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n691_op11_α
.Lx861_0:
                        .quad            .Lx861_0_s
.Lx861_0_s:
                        .string          "int"
#-----------------------------------------------------------------------------------------------------------------------
n690_suspend_α:
                        lea              rax, [rip + n690_suspend_β]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F2_γ
n690_suspend_β:
                                                                                        jmp   n685_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n691_op11_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4104], rax
                        lea              rdi, [rbp + 4096]
                        mov              rsi, qword ptr [rip + .Lx864_2]
                                                                                        jmp   .Lx864_3
.Lx864_2:
                        .quad            .Lx864_2_s
.Lx864_2_s:
                        .string          "int"
.Lx864_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        cmp              eax, 99
                                                                                        je    n693_op11_α
                                                                                        jmp   n692_var_ref_α
n691_op11_β:
                                                                                        jmp   n693_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n692_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                                                                                        jmp   n694_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n693_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3976], rax
                        lea              rdi, [rbp + 3968]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   n695_var_ref_α
n693_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_integer_α:
                        mov              qword ptr [rbp + 4064], 6
                        mov              rax, qword ptr [rip + .Lx868_0]
                        mov              qword ptr [rbp + 4072], rax
                                                                                        jmp   n696_op11_α
.Lx868_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n695_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                                                                                        jmp   n697_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n696_op11_α:
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4024], rax
                        lea              rdi, [rbp + 4016]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              eax, 99
                                                                                        je    n693_op11_α
                                                                                        jmp   n698_suspend_α
n696_op11_β:
                                                                                        jmp   n693_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n697_lit_string_α:
                        mov              qword ptr [rbp + 3936], 1
                        mov              rax, qword ptr [rip + .Lx872_0]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n699_op11_α
.Lx872_0:
                        .quad            .Lx872_0_s
.Lx872_0_s:
                        .string          "int"
#-----------------------------------------------------------------------------------------------------------------------
n698_suspend_α:
                        lea              rax, [rip + n698_suspend_β]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F2_γ
n698_suspend_β:
                                                                                        jmp   n693_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n699_op11_α:
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3896], rax
                        lea              rdi, [rbp + 3888]
                        mov              rsi, qword ptr [rip + .Lx875_2]
                                                                                        jmp   .Lx875_3
.Lx875_2:
                        .quad            .Lx875_2_s
.Lx875_2_s:
                        .string          "int"
.Lx875_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        cmp              eax, 99
                                                                                        je    n701_op11_α
                                                                                        jmp   n700_var_ref_α
n699_op11_β:
                                                                                        jmp   n701_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n700_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                                                                                        jmp   n702_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n701_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3608], rax
                        lea              rdi, [rbp + 3600]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   n703_var_ref_α
n701_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n702_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4592]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                                                                                        jmp   n704_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n703_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                                                                                        jmp   n705_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n704_op11_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3816], rax
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3832], rax
                        lea              rdi, [rbp + 3808]
                        lea              r8, [rbp + 3808]
.Lx883_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx883_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx883_41
                        cmp              esi, 1
                                                                                        jne   .Lx883_55
                        mov              r8, rax
                                                                                        jmp   .Lx883_40
.Lx883_55:
                        cmp              esi, 2
                                                                                        jne   .Lx883_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx883_41
                        mov              r8, rax
                                                                                        jmp   .Lx883_40
.Lx883_56:
                        cmp              eax, 13
                                                                                        jne   .Lx883_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx883_41
                        cmp              rax, r8
                                                                                        je    .Lx883_41
                        mov              r8, rax
                                                                                        jmp   .Lx883_40
.Lx883_41:
                        lea              r9, [rbp + 3824]
.Lx883_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx883_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx883_43
                        cmp              esi, 1
                                                                                        jne   .Lx883_57
                        mov              r9, rax
                                                                                        jmp   .Lx883_42
.Lx883_57:
                        cmp              esi, 2
                                                                                        jne   .Lx883_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx883_43
                        mov              r9, rax
                                                                                        jmp   .Lx883_42
.Lx883_58:
                        cmp              eax, 13
                                                                                        jne   .Lx883_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx883_43
                        cmp              rax, r9
                                                                                        je    .Lx883_43
                        mov              r9, rax
                                                                                        jmp   .Lx883_42
.Lx883_43:
                        cmp              r8, r9
                                                                                        je    .Lx883_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx883_44
                        cmp              eax, 99
                                                                                        je    .Lx883_44
                        cmp              eax, 13
                                                                                        jne   .Lx883_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx883_44
                                                                                        jmp   .Lx883_45
.Lx883_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx883_53
                        cmp              eax, 99
                                                                                        je    .Lx883_53
                        cmp              eax, 13
                                                                                        jne   .Lx883_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx883_53
                                                                                        jmp   .Lx883_46
.Lx883_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx883_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx883_53
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
                                                                                        jmp   .Lx883_51
.Lx883_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx883_47
                        cmp              eax, 99
                                                                                        je    .Lx883_47
                        cmp              eax, 13
                                                                                        jne   .Lx883_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx883_47
                                                                                        jmp   .Lx883_48
.Lx883_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx883_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx883_53
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
                                                                                        jmp   .Lx883_51
.Lx883_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx883_49
                        cmp              edx, 14
                                                                                        je    .Lx883_53
                                                                                        jmp   .Lx883_52
.Lx883_49:
                        cmp              edx, 14
                                                                                        je    .Lx883_52
                        cmp              ecx, 7
                                                                                        je    .Lx883_53
                        cmp              edx, 7
                                                                                        je    .Lx883_53
                        cmp              ecx, 6
                                                                                        jne   .Lx883_50
                        cmp              edx, 6
                                                                                        jne   .Lx883_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx883_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx883_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx883_51
                                                                                        jmp   .Lx883_52
.Lx883_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx883_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx883_53
.Lx883_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx883_54
.Lx883_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx883_54
.Lx883_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx883_54:
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              eax, 99
                                                                                        je    n701_op11_α
                                                                                        jmp   n706_var_ref_α
n704_op11_β:
                                                                                        jmp   n701_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n705_lit_string_α:
                        mov              qword ptr [rbp + 3568], 1
                        mov              rax, qword ptr [rip + .Lx884_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n707_op11_α
.Lx884_0:
                        .quad            .Lx884_0_s
.Lx884_0_s:
                        .string          "float"
#-----------------------------------------------------------------------------------------------------------------------
n706_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4592]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                                                                                        jmp   n708_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n707_op11_α:
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3528], rax
                        lea              rdi, [rbp + 3520]
                        mov              rsi, qword ptr [rip + .Lx887_2]
                                                                                        jmp   .Lx887_3
.Lx887_2:
                        .quad            .Lx887_2_s
.Lx887_2_s:
                        .string          "float"
.Lx887_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                        cmp              eax, 99
                                                                                        je    n710_op11_α
                                                                                        jmp   n709_var_ref_α
n707_op11_β:
                                                                                        jmp   n710_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_integer_α:
                        mov              qword ptr [rbp + 3760], 6
                        mov              rax, qword ptr [rip + .Lx888_0]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n711_lit_integer_α
.Lx888_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n709_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                                                                                        jmp   n712_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n710_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3400], rax
                        lea              rdi, [rbp + 3392]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   n713_var_ref_α
n710_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n711_lit_integer_α:
                        mov              qword ptr [rbp + 3776], 6
                        mov              rax, qword ptr [rip + .Lx892_0]
                        mov              qword ptr [rbp + 3784], rax
                                                                                        jmp   n714_op11_α
.Lx892_0:
                        .quad            62
#-----------------------------------------------------------------------------------------------------------------------
n712_lit_real_α:
                        mov              qword ptr [rbp + 3488], 7
                        mov              rax, qword ptr [rip + .Lx893_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n715_op11_α
.Lx893_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n713_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n716_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n714_op11_α:
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3720], rax
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3736], rax
                        .section         .rodata
.Lrkfn897:              .string          "$ax_shl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn897]
                        lea              rsi, [rbp + 3712]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              eax, 99
                                                                                        je    n701_op11_α
                                                                                        jmp   n717_op11_α
n714_op11_β:
                                                                                        jmp   n701_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n715_op11_α:
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3448], rax
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3464], rax
                        lea              rdi, [rbp + 3440]
                        lea              r8, [rbp + 3440]
.Lx898_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx898_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx898_41
                        cmp              esi, 1
                                                                                        jne   .Lx898_55
                        mov              r8, rax
                                                                                        jmp   .Lx898_40
.Lx898_55:
                        cmp              esi, 2
                                                                                        jne   .Lx898_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx898_41
                        mov              r8, rax
                                                                                        jmp   .Lx898_40
.Lx898_56:
                        cmp              eax, 13
                                                                                        jne   .Lx898_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx898_41
                        cmp              rax, r8
                                                                                        je    .Lx898_41
                        mov              r8, rax
                                                                                        jmp   .Lx898_40
.Lx898_41:
                        lea              r9, [rbp + 3456]
.Lx898_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx898_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx898_43
                        cmp              esi, 1
                                                                                        jne   .Lx898_57
                        mov              r9, rax
                                                                                        jmp   .Lx898_42
.Lx898_57:
                        cmp              esi, 2
                                                                                        jne   .Lx898_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx898_43
                        mov              r9, rax
                                                                                        jmp   .Lx898_42
.Lx898_58:
                        cmp              eax, 13
                                                                                        jne   .Lx898_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx898_43
                        cmp              rax, r9
                                                                                        je    .Lx898_43
                        mov              r9, rax
                                                                                        jmp   .Lx898_42
.Lx898_43:
                        cmp              r8, r9
                                                                                        je    .Lx898_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx898_44
                        cmp              eax, 99
                                                                                        je    .Lx898_44
                        cmp              eax, 13
                                                                                        jne   .Lx898_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx898_44
                                                                                        jmp   .Lx898_45
.Lx898_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx898_53
                        cmp              eax, 99
                                                                                        je    .Lx898_53
                        cmp              eax, 13
                                                                                        jne   .Lx898_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx898_53
                                                                                        jmp   .Lx898_46
.Lx898_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx898_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx898_53
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
                                                                                        jmp   .Lx898_51
.Lx898_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx898_47
                        cmp              eax, 99
                                                                                        je    .Lx898_47
                        cmp              eax, 13
                                                                                        jne   .Lx898_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx898_47
                                                                                        jmp   .Lx898_48
.Lx898_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx898_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx898_53
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
                                                                                        jmp   .Lx898_51
.Lx898_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx898_49
                        cmp              edx, 14
                                                                                        je    .Lx898_53
                                                                                        jmp   .Lx898_52
.Lx898_49:
                        cmp              edx, 14
                                                                                        je    .Lx898_52
                        cmp              ecx, 7
                                                                                        je    .Lx898_53
                        cmp              edx, 7
                                                                                        je    .Lx898_53
                        cmp              ecx, 6
                                                                                        jne   .Lx898_50
                        cmp              edx, 6
                                                                                        jne   .Lx898_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx898_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx898_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx898_51
                                                                                        jmp   .Lx898_52
.Lx898_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx898_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx898_53
.Lx898_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx898_54
.Lx898_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx898_54
.Lx898_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx898_54:
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                        cmp              eax, 99
                                                                                        je    n710_op11_α
                                                                                        jmp   n718_suspend_α
n715_op11_β:
                                                                                        jmp   n710_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_string_α:
                        mov              qword ptr [rbp + 3360], 1
                        mov              rax, qword ptr [rip + .Lx899_0]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n719_op11_α
.Lx899_0:
                        .quad            .Lx899_0_s
.Lx899_0_s:
                        .string          "float"
#-----------------------------------------------------------------------------------------------------------------------
n717_op11_α:
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3656], rax
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3672], rax
                        lea              rdi, [rbp + 3648]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                        cmp              eax, 99
                                                                                        je    n701_op11_α
                                                                                        jmp   n720_suspend_α
n717_op11_β:
                                                                                        jmp   n701_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n718_suspend_α:
                        lea              rax, [rip + n718_suspend_β]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F2_γ
n718_suspend_β:
                                                                                        jmp   n710_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n719_op11_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3320], rax
                        lea              rdi, [rbp + 3312]
                        mov              rsi, qword ptr [rip + .Lx903_2]
                                                                                        jmp   .Lx903_3
.Lx903_2:
                        .quad            .Lx903_2_s
.Lx903_2_s:
                        .string          "float"
.Lx903_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 99
                                                                                        je    n722_op11_α
                                                                                        jmp   n721_var_ref_α
n719_op11_β:
                                                                                        jmp   n722_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n720_suspend_α:
                        lea              rax, [rip + n720_suspend_β]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F2_γ
n720_suspend_β:
                                                                                        jmp   n701_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n721_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                                                                                        jmp   n723_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n722_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3096], rax
                        lea              rdi, [rbp + 3088]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   n724_var_ref_α
n722_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n723_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4592]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                                                                                        jmp   n725_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n724_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                                                                                        jmp   n726_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n725_op11_α:
                        mov              rax, qword ptr [rbp + 3264]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3256], rax
                        lea              rdi, [rbp + 3232]
                        lea              r8, [rbp + 3232]
.Lx913_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx913_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx913_41
                        cmp              esi, 1
                                                                                        jne   .Lx913_55
                        mov              r8, rax
                                                                                        jmp   .Lx913_40
.Lx913_55:
                        cmp              esi, 2
                                                                                        jne   .Lx913_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx913_41
                        mov              r8, rax
                                                                                        jmp   .Lx913_40
.Lx913_56:
                        cmp              eax, 13
                                                                                        jne   .Lx913_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx913_41
                        cmp              rax, r8
                                                                                        je    .Lx913_41
                        mov              r8, rax
                                                                                        jmp   .Lx913_40
.Lx913_41:
                        lea              r9, [rbp + 3248]
.Lx913_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx913_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx913_43
                        cmp              esi, 1
                                                                                        jne   .Lx913_57
                        mov              r9, rax
                                                                                        jmp   .Lx913_42
.Lx913_57:
                        cmp              esi, 2
                                                                                        jne   .Lx913_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx913_43
                        mov              r9, rax
                                                                                        jmp   .Lx913_42
.Lx913_58:
                        cmp              eax, 13
                                                                                        jne   .Lx913_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx913_43
                        cmp              rax, r9
                                                                                        je    .Lx913_43
                        mov              r9, rax
                                                                                        jmp   .Lx913_42
.Lx913_43:
                        cmp              r8, r9
                                                                                        je    .Lx913_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx913_44
                        cmp              eax, 99
                                                                                        je    .Lx913_44
                        cmp              eax, 13
                                                                                        jne   .Lx913_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx913_44
                                                                                        jmp   .Lx913_45
.Lx913_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx913_53
                        cmp              eax, 99
                                                                                        je    .Lx913_53
                        cmp              eax, 13
                                                                                        jne   .Lx913_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx913_53
                                                                                        jmp   .Lx913_46
.Lx913_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx913_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx913_53
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
                                                                                        jmp   .Lx913_51
.Lx913_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx913_47
                        cmp              eax, 99
                                                                                        je    .Lx913_47
                        cmp              eax, 13
                                                                                        jne   .Lx913_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx913_47
                                                                                        jmp   .Lx913_48
.Lx913_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx913_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx913_53
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
                                                                                        jmp   .Lx913_51
.Lx913_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx913_49
                        cmp              edx, 14
                                                                                        je    .Lx913_53
                                                                                        jmp   .Lx913_52
.Lx913_49:
                        cmp              edx, 14
                                                                                        je    .Lx913_52
                        cmp              ecx, 7
                                                                                        je    .Lx913_53
                        cmp              edx, 7
                                                                                        je    .Lx913_53
                        cmp              ecx, 6
                                                                                        jne   .Lx913_50
                        cmp              edx, 6
                                                                                        jne   .Lx913_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx913_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx913_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx913_51
                                                                                        jmp   .Lx913_52
.Lx913_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx913_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx913_53
.Lx913_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx913_54
.Lx913_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx913_54
.Lx913_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx913_54:
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              eax, 99
                                                                                        je    n722_op11_α
                                                                                        jmp   n727_var_ref_α
n725_op11_β:
                                                                                        jmp   n722_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_string_α:
                        mov              qword ptr [rbp + 3056], 1
                        mov              rax, qword ptr [rip + .Lx914_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n728_op11_α
.Lx914_0:
                        .quad            .Lx914_0_s
.Lx914_0_s:
                        .string          "atom"
#-----------------------------------------------------------------------------------------------------------------------
n727_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4592]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n729_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n728_op11_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3016], rax
                        lea              rdi, [rbp + 3008]
                        mov              rsi, qword ptr [rip + .Lx917_2]
                                                                                        jmp   .Lx917_3
.Lx917_2:
                        .quad            .Lx917_2_s
.Lx917_2_s:
                        .string          "atom"
.Lx917_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n731_op11_α
                                                                                        jmp   n730_var_ref_α
n728_op11_β:
                                                                                        jmp   n731_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n729_op11_α:
                        .section         .rodata
.Lrkfn919:              .string          "$ax_pi"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn919]
                        lea              rsi, [rbp + 3200]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        cmp              eax, 99
                                                                                        je    n722_op11_α
                                                                                        jmp   n732_op11_α
n729_op11_β:
                                                                                        jmp   n722_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n730_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n733_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n731_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2888], rax
                        lea              rdi, [rbp + 2880]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   n734_var_ref_α
n731_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n732_op11_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3144], rax
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3160], rax
                        lea              rdi, [rbp + 3136]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 99
                                                                                        je    n722_op11_α
                                                                                        jmp   n735_suspend_α
n732_op11_β:
                                                                                        jmp   n722_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n733_lit_string_α:
                        mov              qword ptr [rbp + 2976], 1
                        mov              rax, qword ptr [rip + .Lx924_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n736_op11_α
.Lx924_0:
                        .quad            .Lx924_0_s
.Lx924_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n734_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                                                                                        jmp   n737_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n735_suspend_α:
                        lea              rax, [rip + n735_suspend_β]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F2_γ
n735_suspend_β:
                                                                                        jmp   n722_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n736_op11_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2936], rax
                        lea              rdi, [rbp + 2928]
                        mov              rsi, qword ptr [rip + .Lx929_2]
                                                                                        jmp   .Lx929_3
.Lx929_2:
                        .quad            .Lx929_2_s
.Lx929_2_s:
                        .string          ""
.Lx929_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n731_op11_α
                                                                                        jmp   n738_suspend_α
n736_op11_β:
                                                                                        jmp   n731_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n737_lit_string_α:
                        mov              qword ptr [rbp + 2848], 1
                        mov              rax, qword ptr [rip + .Lx930_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n739_op11_α
.Lx930_0:
                        .quad            .Lx930_0_s
.Lx930_0_s:
                        .string          "atom"
#-----------------------------------------------------------------------------------------------------------------------
n738_suspend_α:
                        lea              rax, [rip + n738_suspend_β]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F2_γ
n738_suspend_β:
                                                                                        jmp   n731_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n739_op11_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2808], rax
                        lea              rdi, [rbp + 2800]
                        mov              rsi, qword ptr [rip + .Lx933_2]
                                                                                        jmp   .Lx933_3
.Lx933_2:
                        .quad            .Lx933_2_s
.Lx933_2_s:
                        .string          "atom"
.Lx933_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    n741_op11_α
                                                                                        jmp   n740_var_ref_α
n739_op11_β:
                                                                                        jmp   n741_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n740_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   n742_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n741_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2680], rax
                        lea              rdi, [rbp + 2672]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   n743_var_ref_α
n741_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n742_lit_string_α:
                        mov              qword ptr [rbp + 2768], 1
                        mov              rax, qword ptr [rip + .Lx937_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n744_op11_α
.Lx937_0:
                        .quad            .Lx937_0_s
.Lx937_0_s:
                        .string          "aap"
#-----------------------------------------------------------------------------------------------------------------------
n743_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n745_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n744_op11_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2728], rax
                        lea              rdi, [rbp + 2720]
                        mov              rsi, qword ptr [rip + .Lx940_2]
                                                                                        jmp   .Lx940_3
.Lx940_2:
                        .quad            .Lx940_2_s
.Lx940_2_s:
                        .string          "aap"
.Lx940_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 99
                                                                                        je    n741_op11_α
                                                                                        jmp   n746_suspend_α
n744_op11_β:
                                                                                        jmp   n741_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n745_lit_string_α:
                        mov              qword ptr [rbp + 2640], 1
                        mov              rax, qword ptr [rip + .Lx941_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n747_op11_α
.Lx941_0:
                        .quad            .Lx941_0_s
.Lx941_0_s:
                        .string          "atom"
#-----------------------------------------------------------------------------------------------------------------------
n746_suspend_α:
                        lea              rax, [rip + n746_suspend_β]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F2_γ
n746_suspend_β:
                                                                                        jmp   n741_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n747_op11_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rdi, [rbp + 2592]
                        mov              rsi, qword ptr [rip + .Lx944_2]
                                                                                        jmp   .Lx944_3
.Lx944_2:
                        .quad            .Lx944_2_s
.Lx944_2_s:
                        .string          "atom"
.Lx944_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 99
                                                                                        je    n749_op11_α
                                                                                        jmp   n748_var_ref_α
n747_op11_β:
                                                                                        jmp   n749_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n748_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n750_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n749_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2472], rax
                        lea              rdi, [rbp + 2464]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   n751_var_ref_α
n749_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_string_α:
                        mov              qword ptr [rbp + 2560], 1
                        mov              rax, qword ptr [rip + .Lx948_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n752_op11_α
.Lx948_0:
                        .quad            .Lx948_0_s
.Lx948_0_s:
                        .string          "noot"
#-----------------------------------------------------------------------------------------------------------------------
n751_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n753_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n752_op11_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2520], rax
                        lea              rdi, [rbp + 2512]
                        mov              rsi, qword ptr [rip + .Lx951_2]
                                                                                        jmp   .Lx951_3
.Lx951_2:
                        .quad            .Lx951_2_s
.Lx951_2_s:
                        .string          "noot"
.Lx951_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              eax, 99
                                                                                        je    n749_op11_α
                                                                                        jmp   n754_suspend_α
n752_op11_β:
                                                                                        jmp   n749_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n753_lit_string_α:
                        mov              qword ptr [rbp + 2432], 1
                        mov              rax, qword ptr [rip + .Lx952_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n755_op11_α
.Lx952_0:
                        .quad            .Lx952_0_s
.Lx952_0_s:
                        .string          "atom"
#-----------------------------------------------------------------------------------------------------------------------
n754_suspend_α:
                        lea              rax, [rip + n754_suspend_β]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F2_γ
n754_suspend_β:
                                                                                        jmp   n749_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n755_op11_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2384]
                        mov              rsi, qword ptr [rip + .Lx955_2]
                                                                                        jmp   .Lx955_3
.Lx955_2:
                        .quad            .Lx955_2_s
.Lx955_2_s:
                        .string          "atom"
.Lx955_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              eax, 99
                                                                                        je    n757_op11_α
                                                                                        jmp   n756_var_ref_α
n755_op11_β:
                                                                                        jmp   n757_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n756_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n758_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n757_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2072], rax
                        lea              rdi, [rbp + 2064]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   n759_var_ref_α
n757_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n758_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4592]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n760_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n759_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n761_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n760_op11_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2312], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2328], rax
                        lea              rdi, [rbp + 2304]
                        lea              r8, [rbp + 2304]
.Lx963_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx963_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx963_41
                        cmp              esi, 1
                                                                                        jne   .Lx963_55
                        mov              r8, rax
                                                                                        jmp   .Lx963_40
.Lx963_55:
                        cmp              esi, 2
                                                                                        jne   .Lx963_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx963_41
                        mov              r8, rax
                                                                                        jmp   .Lx963_40
.Lx963_56:
                        cmp              eax, 13
                                                                                        jne   .Lx963_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx963_41
                        cmp              rax, r8
                                                                                        je    .Lx963_41
                        mov              r8, rax
                                                                                        jmp   .Lx963_40
.Lx963_41:
                        lea              r9, [rbp + 2320]
.Lx963_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx963_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx963_43
                        cmp              esi, 1
                                                                                        jne   .Lx963_57
                        mov              r9, rax
                                                                                        jmp   .Lx963_42
.Lx963_57:
                        cmp              esi, 2
                                                                                        jne   .Lx963_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx963_43
                        mov              r9, rax
                                                                                        jmp   .Lx963_42
.Lx963_58:
                        cmp              eax, 13
                                                                                        jne   .Lx963_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx963_43
                        cmp              rax, r9
                                                                                        je    .Lx963_43
                        mov              r9, rax
                                                                                        jmp   .Lx963_42
.Lx963_43:
                        cmp              r8, r9
                                                                                        je    .Lx963_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx963_44
                        cmp              eax, 99
                                                                                        je    .Lx963_44
                        cmp              eax, 13
                                                                                        jne   .Lx963_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx963_44
                                                                                        jmp   .Lx963_45
.Lx963_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx963_53
                        cmp              eax, 99
                                                                                        je    .Lx963_53
                        cmp              eax, 13
                                                                                        jne   .Lx963_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx963_53
                                                                                        jmp   .Lx963_46
.Lx963_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx963_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx963_53
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
                                                                                        jmp   .Lx963_51
.Lx963_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx963_47
                        cmp              eax, 99
                                                                                        je    .Lx963_47
                        cmp              eax, 13
                                                                                        jne   .Lx963_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx963_47
                                                                                        jmp   .Lx963_48
.Lx963_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx963_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx963_53
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
                                                                                        jmp   .Lx963_51
.Lx963_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx963_49
                        cmp              edx, 14
                                                                                        je    .Lx963_53
                                                                                        jmp   .Lx963_52
.Lx963_49:
                        cmp              edx, 14
                                                                                        je    .Lx963_52
                        cmp              ecx, 7
                                                                                        je    .Lx963_53
                        cmp              edx, 7
                                                                                        je    .Lx963_53
                        cmp              ecx, 6
                                                                                        jne   .Lx963_50
                        cmp              edx, 6
                                                                                        jne   .Lx963_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx963_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx963_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx963_51
                                                                                        jmp   .Lx963_52
.Lx963_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx963_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx963_53
.Lx963_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx963_54
.Lx963_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx963_54
.Lx963_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx963_54:
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 99
                                                                                        je    n757_op11_α
                                                                                        jmp   n762_lit_integer_α
n760_op11_β:
                                                                                        jmp   n757_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n761_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx964_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n763_op11_α
.Lx964_0:
                        .quad            .Lx964_0_s
.Lx964_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n762_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 6
                        mov              rax, qword ptr [rip + .Lx965_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n764_lit_integer_α
.Lx965_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n763_op11_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rdi, [rbp + 1984]
                        mov              rsi, qword ptr [rip + .Lx966_2]
                                                                                        jmp   .Lx966_3
.Lx966_2:
                        .quad            .Lx966_2_s
.Lx966_2_s:
                        .string          "string"
.Lx966_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    n766_op11_α
                                                                                        jmp   n765_var_ref_α
n763_op11_β:
                                                                                        jmp   n766_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n764_lit_integer_α:
                        mov              qword ptr [rbp + 2256], 6
                        mov              rax, qword ptr [rip + .Lx967_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n767_var_ref_α
.Lx967_0:
                        .quad            1100
#-----------------------------------------------------------------------------------------------------------------------
n765_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n768_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n766_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1680]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   n769_var_ref_α
n766_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n767_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4608]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n770_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n768_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4592]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n771_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n769_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n772_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n770_call_proc_staged_α:
                        lea              rsi, [rbp + 2240]
                        lea              rdx, [rbp + 2256]
                        lea              rcx, [rbp + 2272]
                        call             proc_numlist$2F3_dcα
                                                                                        jmp   .Lx978_2
.Lx978_2:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n757_op11_α
                                                                                        jmp   n773_var_ref_α
n770_call_proc_staged_β:
                                                                                        jmp   n757_op11_α
.Lx978_0:
                        .quad            .Lx978_0_s
.Lx978_0_s:
                        .string          "numlist/3"
#-----------------------------------------------------------------------------------------------------------------------
n771_op11_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1904]
                        lea              r8, [rbp + 1904]
.Lx979_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx979_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx979_41
                        cmp              esi, 1
                                                                                        jne   .Lx979_55
                        mov              r8, rax
                                                                                        jmp   .Lx979_40
.Lx979_55:
                        cmp              esi, 2
                                                                                        jne   .Lx979_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx979_41
                        mov              r8, rax
                                                                                        jmp   .Lx979_40
.Lx979_56:
                        cmp              eax, 13
                                                                                        jne   .Lx979_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx979_41
                        cmp              rax, r8
                                                                                        je    .Lx979_41
                        mov              r8, rax
                                                                                        jmp   .Lx979_40
.Lx979_41:
                        lea              r9, [rbp + 1920]
.Lx979_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx979_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx979_43
                        cmp              esi, 1
                                                                                        jne   .Lx979_57
                        mov              r9, rax
                                                                                        jmp   .Lx979_42
.Lx979_57:
                        cmp              esi, 2
                                                                                        jne   .Lx979_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx979_43
                        mov              r9, rax
                                                                                        jmp   .Lx979_42
.Lx979_58:
                        cmp              eax, 13
                                                                                        jne   .Lx979_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx979_43
                        cmp              rax, r9
                                                                                        je    .Lx979_43
                        mov              r9, rax
                                                                                        jmp   .Lx979_42
.Lx979_43:
                        cmp              r8, r9
                                                                                        je    .Lx979_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx979_44
                        cmp              eax, 99
                                                                                        je    .Lx979_44
                        cmp              eax, 13
                                                                                        jne   .Lx979_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx979_44
                                                                                        jmp   .Lx979_45
.Lx979_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx979_53
                        cmp              eax, 99
                                                                                        je    .Lx979_53
                        cmp              eax, 13
                                                                                        jne   .Lx979_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx979_53
                                                                                        jmp   .Lx979_46
.Lx979_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx979_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx979_53
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
                                                                                        jmp   .Lx979_51
.Lx979_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx979_47
                        cmp              eax, 99
                                                                                        je    .Lx979_47
                        cmp              eax, 13
                                                                                        jne   .Lx979_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx979_47
                                                                                        jmp   .Lx979_48
.Lx979_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx979_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx979_53
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
                                                                                        jmp   .Lx979_51
.Lx979_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx979_49
                        cmp              edx, 14
                                                                                        je    .Lx979_53
                                                                                        jmp   .Lx979_52
.Lx979_49:
                        cmp              edx, 14
                                                                                        je    .Lx979_52
                        cmp              ecx, 7
                                                                                        je    .Lx979_53
                        cmp              edx, 7
                                                                                        je    .Lx979_53
                        cmp              ecx, 6
                                                                                        jne   .Lx979_50
                        cmp              edx, 6
                                                                                        jne   .Lx979_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx979_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx979_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx979_51
                                                                                        jmp   .Lx979_52
.Lx979_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx979_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx979_53
.Lx979_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx979_54
.Lx979_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx979_54
.Lx979_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx979_54:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n766_op11_α
                                                                                        jmp   n774_lit_string_α
n771_op11_β:
                                                                                        jmp   n766_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n772_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx980_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n775_op11_α
.Lx980_0:
                        .quad            .Lx980_0_s
.Lx980_0_s:
                        .string          "nil"
#-----------------------------------------------------------------------------------------------------------------------
n773_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4592]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n776_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n774_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx983_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n777_var_ref_α
.Lx983_0:
                        .quad            .Lx983_0_s
.Lx983_0_s:
                        .string          "atom"
#-----------------------------------------------------------------------------------------------------------------------
n775_op11_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        mov              rsi, qword ptr [rip + .Lx984_2]
                                                                                        jmp   .Lx984_3
.Lx984_2:
                        .quad            .Lx984_2_s
.Lx984_2_s:
                        .string          "nil"
.Lx984_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n779_op11_α
                                                                                        jmp   n778_var_ref_α
n775_op11_β:
                                                                                        jmp   n779_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n776_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4608]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n780_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n777_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4608]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n781_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n778_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n782_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n779_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1472]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   n783_var_ref_α
n779_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n780_op11_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2120], rax
                        .section         .rodata
.Lrkfn993:              .string          "$atom_codes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn993]
                        lea              rsi, [rbp + 2096]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    n770_call_proc_staged_β
                                                                                        jmp   n784_suspend_α
n780_op11_β:
                                                                                        jmp   n770_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n781_call_proc_staged_α:
                        mov              qword ptr [rbp + 1824], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx995_20
                        mov              rax, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx995_21
.Lx995_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        call             rt_arg_stage@PLT
.Lx995_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx995_22
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx995_23
.Lx995_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        call             rt_arg_stage@PLT
.Lx995_23:
                        mov              edi, 5
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx995_1
                        lea              rcx, [rip + .Lx995_3]
                        lea              rdx, [rip + .Lx995_4]
                                                                                        jmp   rax
.Lx995_3:
                        mov              qword ptr [rbp + 1832], rsp
                        mov              rax, qword ptr [rbp + 1824]
                        test             rax, rax
                                                                                        jne   .Lx995_5
                        mov              qword ptr [rbp + 1824], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx995_2
.Lx995_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx995_2
.Lx995_4:
                        mov              rax, qword ptr [rbp + 1824]
                        test             rax, rax
                                                                                        jne   .Lx995_6
                        mov              qword ptr [rbp + 1824], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx995_2
.Lx995_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx995_2
.Lx995_1:
                        call             rt_faildescr@PLT
.Lx995_2:
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 99
                                                                                        je    n766_op11_α
                                                                                        jmp   n785_var_ref_α
n781_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1832]
                                                                                        jmp   qword ptr [rsp]
.Lx995_0:
                        .quad            .Lx995_0_s
.Lx995_0_s:
                        .string          "term/2"
#-----------------------------------------------------------------------------------------------------------------------
n782_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx996_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n786_op11_α
.Lx996_0:
                        .quad            .Lx996_0_s
.Lx996_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n783_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n787_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n784_suspend_α:
                        lea              rax, [rip + n784_suspend_β]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F2_γ
n784_suspend_β:
                                                                                        jmp   n770_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n785_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4608]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n788_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n786_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        mov              rsi, qword ptr [rip + .Lx1003_2]
                                                                                        jmp   .Lx1003_3
.Lx1003_2:
                        .quad            .Lx1003_2_s
.Lx1003_2_s:
                        .string          "[]"
.Lx1003_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n779_op11_α
                                                                                        jmp   n789_suspend_α
n786_op11_β:
                                                                                        jmp   n779_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n787_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx1004_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n790_op11_α
.Lx1004_0:
                        .quad            .Lx1004_0_s
.Lx1004_0_s:
                        .string          "compound"
#-----------------------------------------------------------------------------------------------------------------------
n788_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4592]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n791_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n789_suspend_α:
                        lea              rax, [rip + n789_suspend_β]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F2_γ
n789_suspend_β:
                                                                                        jmp   n779_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n790_op11_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        mov              rsi, qword ptr [rip + .Lx1009_2]
                                                                                        jmp   .Lx1009_3
.Lx1009_2:
                        .quad            .Lx1009_2_s
.Lx1009_2_s:
                        .string          "compound"
.Lx1009_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n793_op11_α
                                                                                        jmp   n792_var_ref_α
n790_op11_β:
                                                                                        jmp   n793_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n791_op11_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lrkfn1011:             .string          "$aop_atom_string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1011]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n781_call_proc_staged_β
                                                                                        jmp   n794_suspend_α
n791_op11_β:
                                                                                        jmp   n781_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n792_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n795_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n793_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   n796_var_ref_α
n793_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n794_suspend_α:
                        lea              rax, [rip + n794_suspend_β]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F2_γ
n794_suspend_β:
                                                                                        jmp   n781_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n795_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              rax, qword ptr [rip + .Lx1017_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n797_lit_integer_α
.Lx1017_0:
                        .quad            .Lx1017_0_s
.Lx1017_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n796_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n798_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n797_lit_integer_α:
                        mov              qword ptr [rbp + 1280], 6
                        mov              rax, qword ptr [rip + .Lx1020_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n799_op11_α
.Lx1020_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n798_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx1021_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n800_op11_α
.Lx1021_0:
                        .quad            .Lx1021_0_s
.Lx1021_0_s:
                        .string          "compound"
#-----------------------------------------------------------------------------------------------------------------------
n799_op11_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n793_op11_α
                                                                                        jmp   n801_op11_α
n799_op11_β:
                                                                                        jmp   n793_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n800_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1104]
                        mov              rsi, qword ptr [rip + .Lx1023_2]
                                                                                        jmp   .Lx1023_3
.Lx1023_2:
                        .quad            .Lx1023_2_s
.Lx1023_2_s:
                        .string          "compound"
.Lx1023_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n803_op11_α
                                                                                        jmp   n802_var_ref_α
n800_op11_β:
                                                                                        jmp   n803_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n801_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1232]
                        lea              r8, [rbp + 1232]
.Lx1024_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1024_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1024_41
                        cmp              esi, 1
                                                                                        jne   .Lx1024_55
                        mov              r8, rax
                                                                                        jmp   .Lx1024_40
.Lx1024_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1024_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1024_41
                        mov              r8, rax
                                                                                        jmp   .Lx1024_40
.Lx1024_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1024_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1024_41
                        cmp              rax, r8
                                                                                        je    .Lx1024_41
                        mov              r8, rax
                                                                                        jmp   .Lx1024_40
.Lx1024_41:
                        lea              r9, [rbp + 1248]
.Lx1024_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1024_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1024_43
                        cmp              esi, 1
                                                                                        jne   .Lx1024_57
                        mov              r9, rax
                                                                                        jmp   .Lx1024_42
.Lx1024_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1024_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1024_43
                        mov              r9, rax
                                                                                        jmp   .Lx1024_42
.Lx1024_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1024_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1024_43
                        cmp              rax, r9
                                                                                        je    .Lx1024_43
                        mov              r9, rax
                                                                                        jmp   .Lx1024_42
.Lx1024_43:
                        cmp              r8, r9
                                                                                        je    .Lx1024_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1024_44
                        cmp              eax, 99
                                                                                        je    .Lx1024_44
                        cmp              eax, 13
                                                                                        jne   .Lx1024_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1024_44
                                                                                        jmp   .Lx1024_45
.Lx1024_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1024_53
                        cmp              eax, 99
                                                                                        je    .Lx1024_53
                        cmp              eax, 13
                                                                                        jne   .Lx1024_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1024_53
                                                                                        jmp   .Lx1024_46
.Lx1024_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1024_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1024_53
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
                                                                                        jmp   .Lx1024_51
.Lx1024_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1024_47
                        cmp              eax, 99
                                                                                        je    .Lx1024_47
                        cmp              eax, 13
                                                                                        jne   .Lx1024_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1024_47
                                                                                        jmp   .Lx1024_48
.Lx1024_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1024_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1024_53
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
                                                                                        jmp   .Lx1024_51
.Lx1024_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1024_49
                        cmp              edx, 14
                                                                                        je    .Lx1024_53
                                                                                        jmp   .Lx1024_52
.Lx1024_49:
                        cmp              edx, 14
                                                                                        je    .Lx1024_52
                        cmp              ecx, 7
                                                                                        je    .Lx1024_53
                        cmp              edx, 7
                                                                                        je    .Lx1024_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1024_50
                        cmp              edx, 6
                                                                                        jne   .Lx1024_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1024_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1024_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1024_51
                                                                                        jmp   .Lx1024_52
.Lx1024_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1024_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1024_53
.Lx1024_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1024_54
.Lx1024_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1024_54
.Lx1024_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1024_54:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n793_op11_α
                                                                                        jmp   n804_suspend_α
n801_op11_β:
                                                                                        jmp   n793_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n802_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n805_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n803_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   n806_var_ref_α
n803_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n804_suspend_α:
                        lea              rax, [rip + n804_suspend_β]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F2_γ
n804_suspend_β:
                                                                                        jmp   n793_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n805_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx1030_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n807_lit_integer_α
.Lx1030_0:
                        .quad            .Lx1030_0_s
.Lx1030_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n806_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n808_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n807_lit_integer_α:
                        mov              qword ptr [rbp + 880], 6
                        mov              rax, qword ptr [rip + .Lx1033_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n809_lit_string_α
.Lx1033_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n808_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx1034_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n810_op11_α
.Lx1034_0:
                        .quad            .Lx1034_0_s
.Lx1034_0_s:
                        .string          "cyclic"
#-----------------------------------------------------------------------------------------------------------------------
n809_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx1035_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n811_lit_integer_α
.Lx1035_0:
                        .quad            .Lx1035_0_s
.Lx1035_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n810_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              rsi, qword ptr [rip + .Lx1036_2]
                                                                                        jmp   .Lx1036_3
.Lx1036_2:
                        .quad            .Lx1036_2_s
.Lx1036_2_s:
                        .string          "cyclic"
.Lx1036_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n813_op11_α
                                                                                        jmp   n812_var_ref_α
n810_op11_β:
                                                                                        jmp   n813_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n811_lit_integer_α:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, qword ptr [rip + .Lx1037_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n814_op11_α
.Lx1037_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n812_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n815_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n813_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   n816_var_ref_α
n813_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n814_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   n817_op11_α
n814_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n815_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4592]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n818_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n816_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n819_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n817_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n803_op11_α
                                                                                        jmp   n820_op11_α
n817_op11_β:
                                                                                        jmp   n803_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n818_op11_α:
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
.Lx1047_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1047_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1047_41
                        cmp              esi, 1
                                                                                        jne   .Lx1047_55
                        mov              r8, rax
                                                                                        jmp   .Lx1047_40
.Lx1047_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1047_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1047_41
                        mov              r8, rax
                                                                                        jmp   .Lx1047_40
.Lx1047_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1047_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1047_41
                        cmp              rax, r8
                                                                                        je    .Lx1047_41
                        mov              r8, rax
                                                                                        jmp   .Lx1047_40
.Lx1047_41:
                        lea              r9, [rbp + 640]
.Lx1047_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1047_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1047_43
                        cmp              esi, 1
                                                                                        jne   .Lx1047_57
                        mov              r9, rax
                                                                                        jmp   .Lx1047_42
.Lx1047_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1047_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1047_43
                        mov              r9, rax
                                                                                        jmp   .Lx1047_42
.Lx1047_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1047_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1047_43
                        cmp              rax, r9
                                                                                        je    .Lx1047_43
                        mov              r9, rax
                                                                                        jmp   .Lx1047_42
.Lx1047_43:
                        cmp              r8, r9
                                                                                        je    .Lx1047_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1047_44
                        cmp              eax, 99
                                                                                        je    .Lx1047_44
                        cmp              eax, 13
                                                                                        jne   .Lx1047_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1047_44
                                                                                        jmp   .Lx1047_45
.Lx1047_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1047_53
                        cmp              eax, 99
                                                                                        je    .Lx1047_53
                        cmp              eax, 13
                                                                                        jne   .Lx1047_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1047_53
                                                                                        jmp   .Lx1047_46
.Lx1047_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1047_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1047_53
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
                                                                                        jmp   .Lx1047_51
.Lx1047_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1047_47
                        cmp              eax, 99
                                                                                        je    .Lx1047_47
                        cmp              eax, 13
                                                                                        jne   .Lx1047_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1047_47
                                                                                        jmp   .Lx1047_48
.Lx1047_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1047_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1047_53
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
                                                                                        jmp   .Lx1047_51
.Lx1047_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1047_49
                        cmp              edx, 14
                                                                                        je    .Lx1047_53
                                                                                        jmp   .Lx1047_52
.Lx1047_49:
                        cmp              edx, 14
                                                                                        je    .Lx1047_52
                        cmp              ecx, 7
                                                                                        je    .Lx1047_53
                        cmp              edx, 7
                                                                                        je    .Lx1047_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1047_50
                        cmp              edx, 6
                                                                                        jne   .Lx1047_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1047_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1047_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1047_51
                                                                                        jmp   .Lx1047_52
.Lx1047_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1047_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1047_53
.Lx1047_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1047_54
.Lx1047_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1047_54
.Lx1047_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1047_54:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n813_op11_α
                                                                                        jmp   n821_var_ref_α
n818_op11_β:
                                                                                        jmp   n813_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n819_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx1048_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n822_op11_α
.Lx1048_0:
                        .quad            .Lx1048_0_s
.Lx1048_0_s:
                        .string          "list"
#-----------------------------------------------------------------------------------------------------------------------
n820_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 832]
                        lea              r8, [rbp + 832]
.Lx1049_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1049_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1049_41
                        cmp              esi, 1
                                                                                        jne   .Lx1049_55
                        mov              r8, rax
                                                                                        jmp   .Lx1049_40
.Lx1049_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1049_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1049_41
                        mov              r8, rax
                                                                                        jmp   .Lx1049_40
.Lx1049_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1049_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1049_41
                        cmp              rax, r8
                                                                                        je    .Lx1049_41
                        mov              r8, rax
                                                                                        jmp   .Lx1049_40
.Lx1049_41:
                        lea              r9, [rbp + 848]
.Lx1049_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1049_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1049_43
                        cmp              esi, 1
                                                                                        jne   .Lx1049_57
                        mov              r9, rax
                                                                                        jmp   .Lx1049_42
.Lx1049_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1049_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1049_43
                        mov              r9, rax
                                                                                        jmp   .Lx1049_42
.Lx1049_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1049_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1049_43
                        cmp              rax, r9
                                                                                        je    .Lx1049_43
                        mov              r9, rax
                                                                                        jmp   .Lx1049_42
.Lx1049_43:
                        cmp              r8, r9
                                                                                        je    .Lx1049_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1049_44
                        cmp              eax, 99
                                                                                        je    .Lx1049_44
                        cmp              eax, 13
                                                                                        jne   .Lx1049_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1049_44
                                                                                        jmp   .Lx1049_45
.Lx1049_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1049_53
                        cmp              eax, 99
                                                                                        je    .Lx1049_53
                        cmp              eax, 13
                                                                                        jne   .Lx1049_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1049_53
                                                                                        jmp   .Lx1049_46
.Lx1049_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1049_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1049_53
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
                                                                                        jmp   .Lx1049_51
.Lx1049_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1049_47
                        cmp              eax, 99
                                                                                        je    .Lx1049_47
                        cmp              eax, 13
                                                                                        jne   .Lx1049_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1049_47
                                                                                        jmp   .Lx1049_48
.Lx1049_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1049_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1049_53
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
                                                                                        jmp   .Lx1049_51
.Lx1049_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1049_49
                        cmp              edx, 14
                                                                                        je    .Lx1049_53
                                                                                        jmp   .Lx1049_52
.Lx1049_49:
                        cmp              edx, 14
                                                                                        je    .Lx1049_52
                        cmp              ecx, 7
                                                                                        je    .Lx1049_53
                        cmp              edx, 7
                                                                                        je    .Lx1049_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1049_50
                        cmp              edx, 6
                                                                                        jne   .Lx1049_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1049_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1049_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1049_51
                                                                                        jmp   .Lx1049_52
.Lx1049_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1049_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1049_53
.Lx1049_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1049_54
.Lx1049_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1049_54
.Lx1049_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1049_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n803_op11_α
                                                                                        jmp   n823_suspend_α
n820_op11_β:
                                                                                        jmp   n803_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n821_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4592]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n824_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n822_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              rsi, qword ptr [rip + .Lx1052_2]
                                                                                        jmp   .Lx1052_3
.Lx1052_2:
                        .quad            .Lx1052_2_s
.Lx1052_2_s:
                        .string          "list"
.Lx1052_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n826_op11_α
                                                                                        jmp   n825_var_ref_α
n822_op11_β:
                                                                                        jmp   n826_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n823_suspend_α:
                        lea              rax, [rip + n823_suspend_β]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F2_γ
n823_suspend_β:
                                                                                        jmp   n803_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n824_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx1055_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n827_var_ref_α
.Lx1055_0:
                        .quad            .Lx1055_0_s
.Lx1055_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n825_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n828_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n826_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_term$2F2_ω
                                                                                        jmp   proc_term$2F2_ω
n826_op11_β:
                                                                                        jmp   proc_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n827_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4592]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n829_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n828_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4592]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n830_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n829_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n813_op11_α
                                                                                        jmp   n831_op11_α
n829_op11_β:
                                                                                        jmp   n813_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n830_op11_α:
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
.Lx1064_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1064_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1064_41
                        cmp              esi, 1
                                                                                        jne   .Lx1064_55
                        mov              r8, rax
                                                                                        jmp   .Lx1064_40
.Lx1064_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1064_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1064_41
                        mov              r8, rax
                                                                                        jmp   .Lx1064_40
.Lx1064_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1064_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1064_41
                        cmp              rax, r8
                                                                                        je    .Lx1064_41
                        mov              r8, rax
                                                                                        jmp   .Lx1064_40
.Lx1064_41:
                        lea              r9, [rbp + 272]
.Lx1064_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1064_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1064_43
                        cmp              esi, 1
                                                                                        jne   .Lx1064_57
                        mov              r9, rax
                                                                                        jmp   .Lx1064_42
.Lx1064_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1064_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1064_43
                        mov              r9, rax
                                                                                        jmp   .Lx1064_42
.Lx1064_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1064_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1064_43
                        cmp              rax, r9
                                                                                        je    .Lx1064_43
                        mov              r9, rax
                                                                                        jmp   .Lx1064_42
.Lx1064_43:
                        cmp              r8, r9
                                                                                        je    .Lx1064_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1064_44
                        cmp              eax, 99
                                                                                        je    .Lx1064_44
                        cmp              eax, 13
                                                                                        jne   .Lx1064_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1064_44
                                                                                        jmp   .Lx1064_45
.Lx1064_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1064_53
                        cmp              eax, 99
                                                                                        je    .Lx1064_53
                        cmp              eax, 13
                                                                                        jne   .Lx1064_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1064_53
                                                                                        jmp   .Lx1064_46
.Lx1064_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1064_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1064_53
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
                                                                                        jmp   .Lx1064_51
.Lx1064_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1064_47
                        cmp              eax, 99
                                                                                        je    .Lx1064_47
                        cmp              eax, 13
                                                                                        jne   .Lx1064_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1064_47
                                                                                        jmp   .Lx1064_48
.Lx1064_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1064_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1064_53
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
                                                                                        jmp   .Lx1064_51
.Lx1064_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1064_49
                        cmp              edx, 14
                                                                                        je    .Lx1064_53
                                                                                        jmp   .Lx1064_52
.Lx1064_49:
                        cmp              edx, 14
                                                                                        je    .Lx1064_52
                        cmp              ecx, 7
                                                                                        je    .Lx1064_53
                        cmp              edx, 7
                                                                                        je    .Lx1064_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1064_50
                        cmp              edx, 6
                                                                                        jne   .Lx1064_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1064_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1064_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1064_51
                                                                                        jmp   .Lx1064_52
.Lx1064_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1064_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1064_53
.Lx1064_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1064_54
.Lx1064_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1064_54
.Lx1064_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1064_54:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n826_op11_α
                                                                                        jmp   n832_lit_integer_α
n830_op11_β:
                                                                                        jmp   n826_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n831_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 464]
                        lea              r8, [rbp + 464]
.Lx1065_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1065_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1065_41
                        cmp              esi, 1
                                                                                        jne   .Lx1065_55
                        mov              r8, rax
                                                                                        jmp   .Lx1065_40
.Lx1065_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1065_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1065_41
                        mov              r8, rax
                                                                                        jmp   .Lx1065_40
.Lx1065_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1065_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1065_41
                        cmp              rax, r8
                                                                                        je    .Lx1065_41
                        mov              r8, rax
                                                                                        jmp   .Lx1065_40
.Lx1065_41:
                        lea              r9, [rbp + 480]
.Lx1065_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1065_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1065_43
                        cmp              esi, 1
                                                                                        jne   .Lx1065_57
                        mov              r9, rax
                                                                                        jmp   .Lx1065_42
.Lx1065_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1065_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1065_43
                        mov              r9, rax
                                                                                        jmp   .Lx1065_42
.Lx1065_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1065_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1065_43
                        cmp              rax, r9
                                                                                        je    .Lx1065_43
                        mov              r9, rax
                                                                                        jmp   .Lx1065_42
.Lx1065_43:
                        cmp              r8, r9
                                                                                        je    .Lx1065_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1065_44
                        cmp              eax, 99
                                                                                        je    .Lx1065_44
                        cmp              eax, 13
                                                                                        jne   .Lx1065_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1065_44
                                                                                        jmp   .Lx1065_45
.Lx1065_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1065_53
                        cmp              eax, 99
                                                                                        je    .Lx1065_53
                        cmp              eax, 13
                                                                                        jne   .Lx1065_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1065_53
                                                                                        jmp   .Lx1065_46
.Lx1065_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1065_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1065_53
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
                                                                                        jmp   .Lx1065_51
.Lx1065_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1065_47
                        cmp              eax, 99
                                                                                        je    .Lx1065_47
                        cmp              eax, 13
                                                                                        jne   .Lx1065_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1065_47
                                                                                        jmp   .Lx1065_48
.Lx1065_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1065_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1065_53
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
                                                                                        jmp   .Lx1065_51
.Lx1065_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1065_49
                        cmp              edx, 14
                                                                                        je    .Lx1065_53
                                                                                        jmp   .Lx1065_52
.Lx1065_49:
                        cmp              edx, 14
                                                                                        je    .Lx1065_52
                        cmp              ecx, 7
                                                                                        je    .Lx1065_53
                        cmp              edx, 7
                                                                                        je    .Lx1065_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1065_50
                        cmp              edx, 6
                                                                                        jne   .Lx1065_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1065_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1065_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1065_51
                                                                                        jmp   .Lx1065_52
.Lx1065_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1065_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1065_53
.Lx1065_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1065_54
.Lx1065_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1065_54
.Lx1065_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1065_54:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n813_op11_α
                                                                                        jmp   n833_suspend_α
n831_op11_β:
                                                                                        jmp   n813_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n832_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx1066_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n834_lit_integer_α
.Lx1066_0:
                        .quad            18446744073709550616
#-----------------------------------------------------------------------------------------------------------------------
n833_suspend_α:
                        lea              rax, [rip + n833_suspend_β]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F2_γ
n833_suspend_β:
                                                                                        jmp   n813_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n834_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx1069_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n835_var_ref_α
.Lx1069_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n835_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4592]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n836_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n836_call_proc_staged_α:
                        lea              rsi, [rbp + 192]
                        lea              rdx, [rbp + 208]
                        lea              rcx, [rbp + 224]
                        call             proc_numlist$2F3_dcα
                                                                                        jmp   .Lx1073_2
.Lx1073_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n826_op11_α
                                                                                        jmp   n837_suspend_α
n836_call_proc_staged_β:
                                                                                        jmp   n826_op11_α
.Lx1073_0:
                        .quad            .Lx1073_0_s
.Lx1073_0_s:
                        .string          "numlist/3"
#-----------------------------------------------------------------------------------------------------------------------
n837_suspend_α:
                        lea              rax, [rip + n837_suspend_β]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_term$2F2_γ
n837_suspend_β:
                                                                                        jmp   n836_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_term$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_term$2F2_β:
                                                                                        jmp   qword ptr [rbp + 4576]
#-----------------------------------------------------------------------------------------------------------------------
proc_term$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_term$2F2_res]
                        push             rax
                        mov              rax, [rbp + 4632]
                        mov              rbp, [rbp + 4648]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_term$2F2_ω:
                        mov              rax, [rbp + 4640]
                        lea              rsp, [rbp + 4656]
                        mov              rbp, [rbp + 4648]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_4$2F0_α
proc_pj_dir_4$2F0_α:
                        .global          proc_pj_dir_4$2F0_α
                        .global          proc_pj_dir_4$2F0_β
                        .global          proc_pj_dir_4$2F0_γ
                        .global          proc_pj_dir_4$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_4$2F0_α_body:
                        lea              rax, [rip + n1079_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n1076_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1081_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1081_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1081_101
.Lx1081_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1081_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n1077_lit_string_α
n1076_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1077_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1082_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1078_call_proc_staged_α
.Lx1082_0:
                        .quad            .Lx1082_0_s
.Lx1082_0_s:
                        .string          "fastrw"
#-----------------------------------------------------------------------------------------------------------------------
n1078_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1084_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1084_21
.Lx1084_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx1084_21:
                        mov              rdi, qword ptr [rip + .Lx1084_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1084_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1084_3]
                        lea              rdx, [rip + .Lx1084_4]
                                                                                        jmp   rax
.Lx1084_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1084_2
.Lx1084_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1084_2
.Lx1084_1:
                        call             rt_faildescr@PLT
.Lx1084_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1080_op11_α
                                                                                        jmp   n1079_suspend_α
n1078_call_proc_staged_β:
                                                                                        jmp   n1080_op11_α
.Lx1084_0:
                        .quad            .Lx1084_0_s
.Lx1084_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n1079_suspend_α:
                        lea              rax, [rip + n1079_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n1079_suspend_β:
                                                                                        jmp   n1078_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1080_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   proc_pj_dir_4$2F0_ω
n1080_op11_β:
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_4$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_2$2F0_α
proc_pj_dir_2$2F0_α:
                        .global          proc_pj_dir_2$2F0_α
                        .global          proc_pj_dir_2$2F0_β
                        .global          proc_pj_dir_2$2F0_γ
                        .global          proc_pj_dir_2$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n1094_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n1088_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1095_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1095_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1095_101
.Lx1095_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1095_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n1089_lit_string_α
n1088_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1089_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx1096_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1090_lit_string_α
.Lx1096_0:
                        .quad            .Lx1096_0_s
.Lx1096_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n1090_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1097_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1091_op11_α
.Lx1097_0:
                        .quad            .Lx1097_0_s
.Lx1097_0_s:
                        .string          "debug"
#-----------------------------------------------------------------------------------------------------------------------
n1091_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n1093_op11_α
                                                                                        jmp   n1092_call_proc_staged_α
n1091_op11_β:
                                                                                        jmp   n1093_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1092_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1100_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1100_21
.Lx1100_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx1100_21:
                        mov              rdi, qword ptr [rip + .Lx1100_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1100_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1100_3]
                        lea              rdx, [rip + .Lx1100_4]
                                                                                        jmp   rax
.Lx1100_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1100_2
.Lx1100_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1100_2
.Lx1100_1:
                        call             rt_faildescr@PLT
.Lx1100_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1093_op11_α
                                                                                        jmp   n1094_suspend_α
n1092_call_proc_staged_β:
                                                                                        jmp   n1093_op11_α
.Lx1100_0:
                        .quad            .Lx1100_0_s
.Lx1100_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n1093_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   proc_pj_dir_2$2F0_ω
n1093_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1094_suspend_α:
                        lea              rax, [rip + n1094_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n1094_suspend_β:
                                                                                        jmp   n1092_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_2$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_0$2F0_α
proc_pj_dir_0$2F0_α:
                        .global          proc_pj_dir_0$2F0_α
                        .global          proc_pj_dir_0$2F0_β
                        .global          proc_pj_dir_0$2F0_γ
                        .global          proc_pj_dir_0$2F0_ω
                        sub              rsp, 448
                        mov              [rsp + 424], rcx
                        mov              [rsp + 432], rdx
                        mov              [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 416
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n1115_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n1104_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1116_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1116_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1116_101
.Lx1116_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1116_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n1105_lit_string_α
n1104_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1105_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx1117_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1106_lit_string_α
.Lx1117_0:
                        .quad            .Lx1117_0_s
.Lx1117_0_s:
                        .string          "test_fastrw"
#-----------------------------------------------------------------------------------------------------------------------
n1106_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx1118_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n1107_lit_string_α
.Lx1118_0:
                        .quad            .Lx1118_0_s
.Lx1118_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1107_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx1119_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n1108_lit_string_α
.Lx1119_0:
                        .quad            .Lx1119_0_s
.Lx1119_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1108_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx1120_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1109_lit_integer_α
.Lx1120_0:
                        .quad            .Lx1120_0_s
.Lx1120_0_s:
                        .string          "test_fastrw"
#-----------------------------------------------------------------------------------------------------------------------
n1109_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx1121_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1110_op11_α
.Lx1121_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1110_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n1111_lit_string_α
n1110_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1111_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx1123_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n1112_op11_α
.Lx1123_0:
                        .quad            .Lx1123_0_s
.Lx1123_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n1112_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n1114_op11_α
                                                                                        jmp   n1113_call_proc_staged_α
n1112_op11_β:
                                                                                        jmp   n1114_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1113_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1126_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1126_21
.Lx1126_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx1126_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1126_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx1126_23
.Lx1126_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx1126_23:
                        mov              rdi, qword ptr [rip + .Lx1126_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1126_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1126_3]
                        lea              rdx, [rip + .Lx1126_4]
                                                                                        jmp   rax
.Lx1126_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1126_2
.Lx1126_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1126_2
.Lx1126_1:
                        call             rt_faildescr@PLT
.Lx1126_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1114_op11_α
                                                                                        jmp   n1115_suspend_α
n1113_call_proc_staged_β:
                                                                                        jmp   n1114_op11_α
.Lx1126_0:
                        .quad            .Lx1126_0_s
.Lx1126_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n1114_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   proc_pj_dir_0$2F0_ω
n1114_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1115_suspend_α:
                        lea              rax, [rip + n1115_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n1115_suspend_β:
                                                                                        jmp   n1113_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 400]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_0$2F0_res]
                        push             rax
                        mov              rax, [rbp + 424]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_ω:
                        mov              rax, [rbp + 432]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$numlist_$2F3_α
proc_$numlist_$2F3_α:
                        .global          proc_$numlist_$2F3_α
                        .global          proc_$numlist_$2F3_β
                        .global          proc_$numlist_$2F3_γ
                        .global          proc_$numlist_$2F3_ω
                        sub              rsp, 1248
                        mov              [rsp + 1224], rcx
                        mov              [rsp + 1232], rdx
                        mov              [rsp + 1240], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1152
                        mov              edx, 1216
                        call             rt_jmp_frame_lexprep2@PLT
proc_$numlist_$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1130_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1171_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1171_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1171_101
.Lx1171_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1171_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_$numlist_$2F3_ω
                                                                                        jmp   n1131_var_ref_α
n1130_op11_β:
                                                                                        jmp   proc_$numlist_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1131_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n1132_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1132_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n1133_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1133_op11_α:
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
.Lx1176_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1176_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1176_41
                        cmp              esi, 1
                                                                                        jne   .Lx1176_55
                        mov              r8, rax
                                                                                        jmp   .Lx1176_40
.Lx1176_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1176_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1176_41
                        mov              r8, rax
                                                                                        jmp   .Lx1176_40
.Lx1176_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1176_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1176_41
                        cmp              rax, r8
                                                                                        je    .Lx1176_41
                        mov              r8, rax
                                                                                        jmp   .Lx1176_40
.Lx1176_41:
                        lea              r9, [rbp + 1104]
.Lx1176_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1176_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1176_43
                        cmp              esi, 1
                                                                                        jne   .Lx1176_57
                        mov              r9, rax
                                                                                        jmp   .Lx1176_42
.Lx1176_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1176_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1176_43
                        mov              r9, rax
                                                                                        jmp   .Lx1176_42
.Lx1176_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1176_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1176_43
                        cmp              rax, r9
                                                                                        je    .Lx1176_43
                        mov              r9, rax
                                                                                        jmp   .Lx1176_42
.Lx1176_43:
                        cmp              r8, r9
                                                                                        je    .Lx1176_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1176_44
                        cmp              eax, 99
                                                                                        je    .Lx1176_44
                        cmp              eax, 13
                                                                                        jne   .Lx1176_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1176_44
                                                                                        jmp   .Lx1176_45
.Lx1176_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1176_53
                        cmp              eax, 99
                                                                                        je    .Lx1176_53
                        cmp              eax, 13
                                                                                        jne   .Lx1176_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1176_53
                                                                                        jmp   .Lx1176_46
.Lx1176_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1176_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1176_53
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
                                                                                        jmp   .Lx1176_51
.Lx1176_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1176_47
                        cmp              eax, 99
                                                                                        je    .Lx1176_47
                        cmp              eax, 13
                                                                                        jne   .Lx1176_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1176_47
                                                                                        jmp   .Lx1176_48
.Lx1176_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1176_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1176_53
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
                                                                                        jmp   .Lx1176_51
.Lx1176_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1176_49
                        cmp              edx, 14
                                                                                        je    .Lx1176_53
                                                                                        jmp   .Lx1176_52
.Lx1176_49:
                        cmp              edx, 14
                                                                                        je    .Lx1176_52
                        cmp              ecx, 7
                                                                                        je    .Lx1176_53
                        cmp              edx, 7
                                                                                        je    .Lx1176_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1176_50
                        cmp              edx, 6
                                                                                        jne   .Lx1176_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1176_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1176_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1176_51
                                                                                        jmp   .Lx1176_52
.Lx1176_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1176_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1176_53
.Lx1176_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1176_54
.Lx1176_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1176_54
.Lx1176_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1176_54:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n1135_op11_α
                                                                                        jmp   n1134_var_ref_α
n1133_op11_β:
                                                                                        jmp   n1135_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1134_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n1136_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1135_op11_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    proc_$numlist_$2F3_ω
                                                                                        jmp   n1137_var_ref_α
n1135_op11_β:
                                                                                        jmp   proc_$numlist_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1136_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n1138_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1137_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n1139_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1138_op11_α:
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
.Lx1184_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1184_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1184_41
                        cmp              esi, 1
                                                                                        jne   .Lx1184_55
                        mov              r8, rax
                                                                                        jmp   .Lx1184_40
.Lx1184_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1184_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1184_41
                        mov              r8, rax
                                                                                        jmp   .Lx1184_40
.Lx1184_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1184_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1184_41
                        cmp              rax, r8
                                                                                        je    .Lx1184_41
                        mov              r8, rax
                                                                                        jmp   .Lx1184_40
.Lx1184_41:
                        lea              r9, [rbp + 1024]
.Lx1184_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1184_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1184_43
                        cmp              esi, 1
                                                                                        jne   .Lx1184_57
                        mov              r9, rax
                                                                                        jmp   .Lx1184_42
.Lx1184_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1184_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1184_43
                        mov              r9, rax
                                                                                        jmp   .Lx1184_42
.Lx1184_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1184_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1184_43
                        cmp              rax, r9
                                                                                        je    .Lx1184_43
                        mov              r9, rax
                                                                                        jmp   .Lx1184_42
.Lx1184_43:
                        cmp              r8, r9
                                                                                        je    .Lx1184_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1184_44
                        cmp              eax, 99
                                                                                        je    .Lx1184_44
                        cmp              eax, 13
                                                                                        jne   .Lx1184_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1184_44
                                                                                        jmp   .Lx1184_45
.Lx1184_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1184_53
                        cmp              eax, 99
                                                                                        je    .Lx1184_53
                        cmp              eax, 13
                                                                                        jne   .Lx1184_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1184_53
                                                                                        jmp   .Lx1184_46
.Lx1184_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1184_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1184_53
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
                                                                                        jmp   .Lx1184_51
.Lx1184_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1184_47
                        cmp              eax, 99
                                                                                        je    .Lx1184_47
                        cmp              eax, 13
                                                                                        jne   .Lx1184_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1184_47
                                                                                        jmp   .Lx1184_48
.Lx1184_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1184_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1184_53
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
                                                                                        jmp   .Lx1184_51
.Lx1184_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1184_49
                        cmp              edx, 14
                                                                                        je    .Lx1184_53
                                                                                        jmp   .Lx1184_52
.Lx1184_49:
                        cmp              edx, 14
                                                                                        je    .Lx1184_52
                        cmp              ecx, 7
                                                                                        je    .Lx1184_53
                        cmp              edx, 7
                                                                                        je    .Lx1184_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1184_50
                        cmp              edx, 6
                                                                                        jne   .Lx1184_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1184_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1184_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1184_51
                                                                                        jmp   .Lx1184_52
.Lx1184_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1184_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1184_53
.Lx1184_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1184_54
.Lx1184_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1184_54
.Lx1184_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1184_54:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n1135_op11_α
                                                                                        jmp   n1140_var_ref_α
n1138_op11_β:
                                                                                        jmp   n1135_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1139_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n1141_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1140_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n1142_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1141_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 736]
                        lea              r8, [rbp + 736]
.Lx1189_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1189_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1189_41
                        cmp              esi, 1
                                                                                        jne   .Lx1189_55
                        mov              r8, rax
                                                                                        jmp   .Lx1189_40
.Lx1189_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1189_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1189_41
                        mov              r8, rax
                                                                                        jmp   .Lx1189_40
.Lx1189_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1189_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1189_41
                        cmp              rax, r8
                                                                                        je    .Lx1189_41
                        mov              r8, rax
                                                                                        jmp   .Lx1189_40
.Lx1189_41:
                        lea              r9, [rbp + 752]
.Lx1189_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1189_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1189_43
                        cmp              esi, 1
                                                                                        jne   .Lx1189_57
                        mov              r9, rax
                                                                                        jmp   .Lx1189_42
.Lx1189_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1189_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1189_43
                        mov              r9, rax
                                                                                        jmp   .Lx1189_42
.Lx1189_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1189_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1189_43
                        cmp              rax, r9
                                                                                        je    .Lx1189_43
                        mov              r9, rax
                                                                                        jmp   .Lx1189_42
.Lx1189_43:
                        cmp              r8, r9
                                                                                        je    .Lx1189_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1189_44
                        cmp              eax, 99
                                                                                        je    .Lx1189_44
                        cmp              eax, 13
                                                                                        jne   .Lx1189_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1189_44
                                                                                        jmp   .Lx1189_45
.Lx1189_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1189_53
                        cmp              eax, 99
                                                                                        je    .Lx1189_53
                        cmp              eax, 13
                                                                                        jne   .Lx1189_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1189_53
                                                                                        jmp   .Lx1189_46
.Lx1189_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1189_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1189_53
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
                                                                                        jmp   .Lx1189_51
.Lx1189_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1189_47
                        cmp              eax, 99
                                                                                        je    .Lx1189_47
                        cmp              eax, 13
                                                                                        jne   .Lx1189_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1189_47
                                                                                        jmp   .Lx1189_48
.Lx1189_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1189_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1189_53
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
                                                                                        jmp   .Lx1189_51
.Lx1189_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1189_49
                        cmp              edx, 14
                                                                                        je    .Lx1189_53
                                                                                        jmp   .Lx1189_52
.Lx1189_49:
                        cmp              edx, 14
                                                                                        je    .Lx1189_52
                        cmp              ecx, 7
                                                                                        je    .Lx1189_53
                        cmp              edx, 7
                                                                                        je    .Lx1189_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1189_50
                        cmp              edx, 6
                                                                                        jne   .Lx1189_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1189_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1189_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1189_51
                                                                                        jmp   .Lx1189_52
.Lx1189_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1189_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1189_53
.Lx1189_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1189_54
.Lx1189_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1189_54
.Lx1189_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1189_54:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n1144_op11_α
                                                                                        jmp   n1143_var_ref_α
n1141_op11_β:
                                                                                        jmp   n1144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1142_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx1190_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n1145_op11_α
.Lx1190_0:
                        .quad            .Lx1190_0_s
.Lx1190_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n1143_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n1146_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1144_op11_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    proc_$numlist_$2F3_ω
                                                                                        jmp   proc_$numlist_$2F3_ω
n1144_op11_β:
                                                                                        jmp   proc_$numlist_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1145_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              rsi, qword ptr [rip + .Lx1194_2]
                                                                                        jmp   .Lx1194_3
.Lx1194_2:
                        .quad            .Lx1194_2_s
.Lx1194_2_s:
                        .string          "[]"
.Lx1194_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n1135_op11_α
                                                                                        jmp   n1147_var_α
n1145_op11_β:
                                                                                        jmp   n1135_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1146_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n1148_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1147_var_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n1149_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1148_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 656]
                        lea              r8, [rbp + 656]
.Lx1199_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1199_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1199_41
                        cmp              esi, 1
                                                                                        jne   .Lx1199_55
                        mov              r8, rax
                                                                                        jmp   .Lx1199_40
.Lx1199_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1199_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1199_41
                        mov              r8, rax
                                                                                        jmp   .Lx1199_40
.Lx1199_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1199_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1199_41
                        cmp              rax, r8
                                                                                        je    .Lx1199_41
                        mov              r8, rax
                                                                                        jmp   .Lx1199_40
.Lx1199_41:
                        lea              r9, [rbp + 672]
.Lx1199_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1199_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1199_43
                        cmp              esi, 1
                                                                                        jne   .Lx1199_57
                        mov              r9, rax
                                                                                        jmp   .Lx1199_42
.Lx1199_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1199_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1199_43
                        mov              r9, rax
                                                                                        jmp   .Lx1199_42
.Lx1199_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1199_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1199_43
                        cmp              rax, r9
                                                                                        je    .Lx1199_43
                        mov              r9, rax
                                                                                        jmp   .Lx1199_42
.Lx1199_43:
                        cmp              r8, r9
                                                                                        je    .Lx1199_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1199_44
                        cmp              eax, 99
                                                                                        je    .Lx1199_44
                        cmp              eax, 13
                                                                                        jne   .Lx1199_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1199_44
                                                                                        jmp   .Lx1199_45
.Lx1199_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1199_53
                        cmp              eax, 99
                                                                                        je    .Lx1199_53
                        cmp              eax, 13
                                                                                        jne   .Lx1199_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1199_53
                                                                                        jmp   .Lx1199_46
.Lx1199_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1199_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1199_53
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
                                                                                        jmp   .Lx1199_51
.Lx1199_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1199_47
                        cmp              eax, 99
                                                                                        je    .Lx1199_47
                        cmp              eax, 13
                                                                                        jne   .Lx1199_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1199_47
                                                                                        jmp   .Lx1199_48
.Lx1199_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1199_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1199_53
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
                                                                                        jmp   .Lx1199_51
.Lx1199_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1199_49
                        cmp              edx, 14
                                                                                        je    .Lx1199_53
                                                                                        jmp   .Lx1199_52
.Lx1199_49:
                        cmp              edx, 14
                                                                                        je    .Lx1199_52
                        cmp              ecx, 7
                                                                                        je    .Lx1199_53
                        cmp              edx, 7
                                                                                        je    .Lx1199_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1199_50
                        cmp              edx, 6
                                                                                        jne   .Lx1199_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1199_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1199_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1199_51
                                                                                        jmp   .Lx1199_52
.Lx1199_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1199_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1199_53
.Lx1199_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1199_54
.Lx1199_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1199_54
.Lx1199_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1199_54:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n1144_op11_α
                                                                                        jmp   n1150_var_ref_α
n1148_op11_β:
                                                                                        jmp   n1144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1149_var_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n1151_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1150_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n1152_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1151_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n1135_op11_α
                                                                                        jmp   n1153_op19_α
n1151_op11_β:
                                                                                        jmp   n1135_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1152_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n1154_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1153_op19_α:
                                                                                        jmp   n1155_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n1154_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n1156_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1155_move_label_α:
                        lea              rax, [rip + n1135_op11_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_$numlist_$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n1156_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 560]
                        lea              r8, [rbp + 560]
.Lx1212_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1212_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1212_61
                        cmp              esi, 1
                                                                                        jne   .Lx1212_62
                        mov              r8, rax
                                                                                        jmp   .Lx1212_60
.Lx1212_62:
                        cmp              esi, 2
                                                                                        jne   .Lx1212_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1212_61
                        mov              r8, rax
                                                                                        jmp   .Lx1212_60
.Lx1212_63:
                        cmp              eax, 13
                                                                                        jne   .Lx1212_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1212_61
                        cmp              rax, r8
                                                                                        je    .Lx1212_61
                        mov              r8, rax
                                                                                        jmp   .Lx1212_60
.Lx1212_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1212_80
                        cmp              eax, 99
                                                                                        je    .Lx1212_80
                        cmp              eax, 13
                                                                                        jne   .Lx1212_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1212_80
                                                                                        jmp   .Lx1212_74
.Lx1212_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1212_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx1212_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx1212_73
                        lea              r9, [rbp + 576]
.Lx1212_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1212_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1212_65
                        cmp              esi, 1
                                                                                        jne   .Lx1212_66
                        mov              r9, rax
                                                                                        jmp   .Lx1212_64
.Lx1212_66:
                        cmp              esi, 2
                                                                                        jne   .Lx1212_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1212_65
                        mov              r9, rax
                                                                                        jmp   .Lx1212_64
.Lx1212_67:
                        cmp              eax, 13
                                                                                        jne   .Lx1212_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1212_65
                        cmp              rax, r9
                                                                                        je    .Lx1212_65
                        mov              r9, rax
                                                                                        jmp   .Lx1212_64
.Lx1212_65:
                        lea              rcx, [rbp + 592]
.Lx1212_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1212_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx1212_69
                        cmp              esi, 1
                                                                                        jne   .Lx1212_70
                        mov              rcx, rax
                                                                                        jmp   .Lx1212_68
.Lx1212_70:
                        cmp              esi, 2
                                                                                        jne   .Lx1212_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1212_69
                        mov              rcx, rax
                                                                                        jmp   .Lx1212_68
.Lx1212_71:
                        cmp              eax, 13
                                                                                        jne   .Lx1212_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx1212_69
                        cmp              rax, rcx
                                                                                        je    .Lx1212_69
                        mov              rcx, rax
                                                                                        jmp   .Lx1212_68
.Lx1212_69:
                        cmp              r9, rcx
                                                                                        je    .Lx1212_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1212_75
                        cmp              eax, 99
                                                                                        je    .Lx1212_75
                        cmp              eax, 13
                                                                                        jne   .Lx1212_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1212_75
                                                                                        jmp   .Lx1212_72
.Lx1212_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1212_76
                        cmp              eax, 99
                                                                                        je    .Lx1212_76
                        cmp              eax, 13
                                                                                        jne   .Lx1212_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx1212_76
                                                                                        jmp   .Lx1212_72
.Lx1212_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1212_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx1212_72
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              qword ptr [r11 + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 40], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 2
                        mov              dword ptr [r10 + 32], eax
                        mov              r10, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1212_77
.Lx1212_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx1212_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx1212_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx1212_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1212_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx1212_72
                        lea              r10, [rip + g_hp_fr]
                        mov              r11, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, r11
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rbp + 576]
.Lx1212_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1212_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1212_82
                        cmp              esi, 1
                                                                                        jne   .Lx1212_83
                        mov              r9, rax
                                                                                        jmp   .Lx1212_81
.Lx1212_83:
                        cmp              esi, 2
                                                                                        jne   .Lx1212_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1212_82
                        mov              r9, rax
                                                                                        jmp   .Lx1212_81
.Lx1212_84:
                        cmp              eax, 13
                                                                                        jne   .Lx1212_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1212_82
                        cmp              rax, r9
                                                                                        je    .Lx1212_82
                        mov              r9, rax
                                                                                        jmp   .Lx1212_81
.Lx1212_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1212_85
                        cmp              eax, 99
                                                                                        je    .Lx1212_85
                        cmp              eax, 13
                                                                                        jne   .Lx1212_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1212_85
                                                                                        jmp   .Lx1212_86
.Lx1212_85:
                        mov              qword ptr [rdx + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [r9 + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx1212_87
.Lx1212_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx1212_87:
                        lea              rcx, [rbp + 592]
.Lx1212_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1212_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx1212_89
                        cmp              esi, 1
                                                                                        jne   .Lx1212_90
                        mov              rcx, rax
                                                                                        jmp   .Lx1212_88
.Lx1212_90:
                        cmp              esi, 2
                                                                                        jne   .Lx1212_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1212_89
                        mov              rcx, rax
                                                                                        jmp   .Lx1212_88
.Lx1212_91:
                        cmp              eax, 13
                                                                                        jne   .Lx1212_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx1212_89
                        cmp              rax, rcx
                                                                                        je    .Lx1212_89
                        mov              rcx, rax
                                                                                        jmp   .Lx1212_88
.Lx1212_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1212_92
                        cmp              eax, 99
                                                                                        je    .Lx1212_92
                        cmp              eax, 13
                                                                                        jne   .Lx1212_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx1212_92
                                                                                        jmp   .Lx1212_93
.Lx1212_92:
                        mov              qword ptr [rdx + 16], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [rcx + 0], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx1212_94
.Lx1212_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx1212_94:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 14
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx1212_77
.Lx1212_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1212_77
.Lx1212_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx1212_77:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n1144_op11_α
                                                                                        jmp   n1158_var_α
n1156_op11_β:
                                                                                        jmp   n1144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1157_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 80]
n1157_disjunction_β:
                                                                                        jmp   proc_$numlist_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1158_var_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n1159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1159_var_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n1160_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1160_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_le@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n1144_op11_α
                                                                                        jmp   n1161_var_ref_α
n1160_op11_β:
                                                                                        jmp   n1144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1161_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n1162_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1162_var_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n1163_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1163_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx1224_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n1164_op11_α
.Lx1224_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1164_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n1144_op11_α
                                                                                        jmp   n1165_op11_α
n1164_op11_β:
                                                                                        jmp   n1144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1165_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n1144_op11_α
                                                                                        jmp   n1166_var_ref_α
n1165_op11_β:
                                                                                        jmp   n1144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1166_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n1167_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1167_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n1168_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1168_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n1169_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1169_call_proc_staged_α:
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 256]
                        lea              rcx, [rbp + 272]
                        call             proc_$numlist_$2F3_dcα
                                                                                        jmp   .Lx1234_2
.Lx1234_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n1144_op11_α
                                                                                        jmp   n1170_move_label_α
n1169_call_proc_staged_β:
                                                                                        jmp   n1144_op11_α
.Lx1234_0:
                        .quad            .Lx1234_0_s
.Lx1234_0_s:
                        .string          "$numlist_/3"
#-----------------------------------------------------------------------------------------------------------------------
n1170_move_label_α:
                        lea              rax, [rip + n1169_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_$numlist_$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_$numlist_$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$numlist_$2F3_β:
                                                                                        jmp   n1157_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$numlist_$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1224]
                        lea              rsp, [rbp + 1248]
                        mov              rbp, [rbp + 1240]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$numlist_$2F3_ω:
                        mov              rax, [rbp + 1232]
                        lea              rsp, [rbp + 1248]
                        mov              rbp, [rbp + 1240]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$numlist_$2F3_dcα:
                        pop              r11
                        sub              rsp, 1264
                        mov              qword ptr [rsp + 1240], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1216], r11
                        lea              rax, [rip + .Lx1237_2]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rax, [rip + .Lx1237_3]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 1152
                        mov              edx, 1216
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_$numlist_$2F3_α_body
.Lx1237_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1248
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1237_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1248
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_3$2F0_α
proc_pj_dir_3$2F0_α:
                        .global          proc_pj_dir_3$2F0_α
                        .global          proc_pj_dir_3$2F0_β
                        .global          proc_pj_dir_3$2F0_γ
                        .global          proc_pj_dir_3$2F0_ω
                        sub              rsp, 416
                        mov              [rsp + 392], rcx
                        mov              [rsp + 400], rdx
                        mov              [rsp + 408], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 384
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n1248_suspend_β]
                        mov              qword ptr [rbp + 368], rax
#-----------------------------------------------------------------------------------------------------------------------
n1238_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1249_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1249_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1249_101
.Lx1249_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1249_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n1239_lit_string_α
n1238_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1239_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx1250_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1240_lit_string_α
.Lx1250_0:
                        .quad            .Lx1250_0_s
.Lx1250_0_s:
                        .string          "fastrw"
#-----------------------------------------------------------------------------------------------------------------------
n1240_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx1251_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n1241_lit_string_α
.Lx1251_0:
                        .quad            .Lx1251_0_s
.Lx1251_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1241_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx1252_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n1242_lit_string_α
.Lx1252_0:
                        .quad            .Lx1252_0_s
.Lx1252_0_s:
                        .string          "sto"
#-----------------------------------------------------------------------------------------------------------------------
n1242_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx1253_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1243_op11_α
.Lx1253_0:
                        .quad            .Lx1253_0_s
.Lx1253_0_s:
                        .string          "rational_trees"
#-----------------------------------------------------------------------------------------------------------------------
n1243_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n1244_lit_string_α
n1243_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1244_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx1255_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n1245_op11_α
.Lx1255_0:
                        .quad            .Lx1255_0_s
.Lx1255_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n1245_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n1247_op11_α
                                                                                        jmp   n1246_call_proc_staged_α
n1245_op11_β:
                                                                                        jmp   n1247_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1246_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1258_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1258_21
.Lx1258_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx1258_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1258_22
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx1258_23
.Lx1258_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx1258_23:
                        mov              rdi, qword ptr [rip + .Lx1258_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1258_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1258_3]
                        lea              rdx, [rip + .Lx1258_4]
                                                                                        jmp   rax
.Lx1258_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1258_2
.Lx1258_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1258_2
.Lx1258_1:
                        call             rt_faildescr@PLT
.Lx1258_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1247_op11_α
                                                                                        jmp   n1248_suspend_α
n1246_call_proc_staged_β:
                                                                                        jmp   n1247_op11_α
.Lx1258_0:
                        .quad            .Lx1258_0_s
.Lx1258_0_s:
                        .string          "begin_tests/2"
#-----------------------------------------------------------------------------------------------------------------------
n1247_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   proc_pj_dir_3$2F0_ω
n1247_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1248_suspend_α:
                        lea              rax, [rip + n1248_suspend_β]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n1248_suspend_β:
                                                                                        jmp   n1246_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_β:
                                                                                        jmp   qword ptr [rbp + 368]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_3$2F0_res]
                        push             rax
                        mov              rax, [rbp + 392]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_ω:
                        mov              rax, [rbp + 400]
                        lea              rsp, [rbp + 416]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_1$2F0_α
proc_pj_dir_1$2F0_α:
                        .global          proc_pj_dir_1$2F0_α
                        .global          proc_pj_dir_1$2F0_β
                        .global          proc_pj_dir_1$2F0_γ
                        .global          proc_pj_dir_1$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n1268_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n1262_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1269_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1269_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1269_101
.Lx1269_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1269_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n1263_lit_string_α
n1262_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1263_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx1270_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1264_lit_string_α
.Lx1270_0:
                        .quad            .Lx1270_0_s
.Lx1270_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n1264_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1271_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1265_op11_α
.Lx1271_0:
                        .quad            .Lx1271_0_s
.Lx1271_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n1265_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n1267_op11_α
                                                                                        jmp   n1266_call_proc_staged_α
n1265_op11_β:
                                                                                        jmp   n1267_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1266_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1274_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1274_21
.Lx1274_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx1274_21:
                        mov              rdi, qword ptr [rip + .Lx1274_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1274_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1274_3]
                        lea              rdx, [rip + .Lx1274_4]
                                                                                        jmp   rax
.Lx1274_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1274_2
.Lx1274_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1274_2
.Lx1274_1:
                        call             rt_faildescr@PLT
.Lx1274_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n1267_op11_α
                                                                                        jmp   n1268_suspend_α
n1266_call_proc_staged_β:
                                                                                        jmp   n1267_op11_α
.Lx1274_0:
                        .quad            .Lx1274_0_s
.Lx1274_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n1267_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   proc_pj_dir_1$2F0_ω
n1267_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1268_suspend_α:
                        lea              rax, [rip + n1268_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n1268_suspend_β:
                                                                                        jmp   n1266_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_numlist$2F3_α
proc_numlist$2F3_α:
                        .global          proc_numlist$2F3_α
                        .global          proc_numlist$2F3_β
                        .global          proc_numlist$2F3_γ
                        .global          proc_numlist$2F3_ω
                        sub              rsp, 608
                        mov              [rsp + 584], rcx
                        mov              [rsp + 592], rdx
                        mov              [rsp + 600], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 528
                        mov              edx, 576
                        call             rt_jmp_frame_lexprep2@PLT
proc_numlist$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1278_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1295_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1295_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx1295_101
.Lx1295_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1295_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_numlist$2F3_ω
                                                                                        jmp   n1279_var_ref_α
n1278_op11_β:
                                                                                        jmp   proc_numlist$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1279_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n1280_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1280_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n1281_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1281_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 464]
                        lea              r8, [rbp + 464]
.Lx1300_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1300_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1300_41
                        cmp              esi, 1
                                                                                        jne   .Lx1300_55
                        mov              r8, rax
                                                                                        jmp   .Lx1300_40
.Lx1300_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1300_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1300_41
                        mov              r8, rax
                                                                                        jmp   .Lx1300_40
.Lx1300_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1300_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1300_41
                        cmp              rax, r8
                                                                                        je    .Lx1300_41
                        mov              r8, rax
                                                                                        jmp   .Lx1300_40
.Lx1300_41:
                        lea              r9, [rbp + 480]
.Lx1300_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1300_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1300_43
                        cmp              esi, 1
                                                                                        jne   .Lx1300_57
                        mov              r9, rax
                                                                                        jmp   .Lx1300_42
.Lx1300_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1300_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1300_43
                        mov              r9, rax
                                                                                        jmp   .Lx1300_42
.Lx1300_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1300_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1300_43
                        cmp              rax, r9
                                                                                        je    .Lx1300_43
                        mov              r9, rax
                                                                                        jmp   .Lx1300_42
.Lx1300_43:
                        cmp              r8, r9
                                                                                        je    .Lx1300_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1300_44
                        cmp              eax, 99
                                                                                        je    .Lx1300_44
                        cmp              eax, 13
                                                                                        jne   .Lx1300_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1300_44
                                                                                        jmp   .Lx1300_45
.Lx1300_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1300_53
                        cmp              eax, 99
                                                                                        je    .Lx1300_53
                        cmp              eax, 13
                                                                                        jne   .Lx1300_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1300_53
                                                                                        jmp   .Lx1300_46
.Lx1300_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1300_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1300_53
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
                                                                                        jmp   .Lx1300_51
.Lx1300_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1300_47
                        cmp              eax, 99
                                                                                        je    .Lx1300_47
                        cmp              eax, 13
                                                                                        jne   .Lx1300_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1300_47
                                                                                        jmp   .Lx1300_48
.Lx1300_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1300_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1300_53
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
                                                                                        jmp   .Lx1300_51
.Lx1300_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1300_49
                        cmp              edx, 14
                                                                                        je    .Lx1300_53
                                                                                        jmp   .Lx1300_52
.Lx1300_49:
                        cmp              edx, 14
                                                                                        je    .Lx1300_52
                        cmp              ecx, 7
                                                                                        je    .Lx1300_53
                        cmp              edx, 7
                                                                                        je    .Lx1300_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1300_50
                        cmp              edx, 6
                                                                                        jne   .Lx1300_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1300_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1300_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1300_51
                                                                                        jmp   .Lx1300_52
.Lx1300_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1300_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1300_53
.Lx1300_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1300_54
.Lx1300_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1300_54
.Lx1300_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1300_54:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n1283_op11_α
                                                                                        jmp   n1282_var_ref_α
n1281_op11_β:
                                                                                        jmp   n1283_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1282_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n1284_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1283_op11_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    proc_numlist$2F3_ω
                                                                                        jmp   proc_numlist$2F3_ω
n1283_op11_β:
                                                                                        jmp   proc_numlist$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1284_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n1285_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1285_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 384]
                        lea              r8, [rbp + 384]
.Lx1306_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1306_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1306_41
                        cmp              esi, 1
                                                                                        jne   .Lx1306_55
                        mov              r8, rax
                                                                                        jmp   .Lx1306_40
.Lx1306_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1306_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1306_41
                        mov              r8, rax
                                                                                        jmp   .Lx1306_40
.Lx1306_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1306_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1306_41
                        cmp              rax, r8
                                                                                        je    .Lx1306_41
                        mov              r8, rax
                                                                                        jmp   .Lx1306_40
.Lx1306_41:
                        lea              r9, [rbp + 400]
.Lx1306_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1306_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1306_43
                        cmp              esi, 1
                                                                                        jne   .Lx1306_57
                        mov              r9, rax
                                                                                        jmp   .Lx1306_42
.Lx1306_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1306_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1306_43
                        mov              r9, rax
                                                                                        jmp   .Lx1306_42
.Lx1306_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1306_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1306_43
                        cmp              rax, r9
                                                                                        je    .Lx1306_43
                        mov              r9, rax
                                                                                        jmp   .Lx1306_42
.Lx1306_43:
                        cmp              r8, r9
                                                                                        je    .Lx1306_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1306_44
                        cmp              eax, 99
                                                                                        je    .Lx1306_44
                        cmp              eax, 13
                                                                                        jne   .Lx1306_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1306_44
                                                                                        jmp   .Lx1306_45
.Lx1306_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1306_53
                        cmp              eax, 99
                                                                                        je    .Lx1306_53
                        cmp              eax, 13
                                                                                        jne   .Lx1306_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1306_53
                                                                                        jmp   .Lx1306_46
.Lx1306_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1306_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1306_53
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
                                                                                        jmp   .Lx1306_51
.Lx1306_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1306_47
                        cmp              eax, 99
                                                                                        je    .Lx1306_47
                        cmp              eax, 13
                                                                                        jne   .Lx1306_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1306_47
                                                                                        jmp   .Lx1306_48
.Lx1306_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1306_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1306_53
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
                                                                                        jmp   .Lx1306_51
.Lx1306_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1306_49
                        cmp              edx, 14
                                                                                        je    .Lx1306_53
                                                                                        jmp   .Lx1306_52
.Lx1306_49:
                        cmp              edx, 14
                                                                                        je    .Lx1306_52
                        cmp              ecx, 7
                                                                                        je    .Lx1306_53
                        cmp              edx, 7
                                                                                        je    .Lx1306_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1306_50
                        cmp              edx, 6
                                                                                        jne   .Lx1306_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1306_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1306_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1306_51
                                                                                        jmp   .Lx1306_52
.Lx1306_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1306_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1306_53
.Lx1306_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1306_54
.Lx1306_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1306_54
.Lx1306_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1306_54:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n1283_op11_α
                                                                                        jmp   n1286_var_ref_α
n1285_op11_β:
                                                                                        jmp   n1283_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1286_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n1287_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1287_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n1288_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1288_op11_α:
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
.Lx1311_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1311_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1311_41
                        cmp              esi, 1
                                                                                        jne   .Lx1311_55
                        mov              r8, rax
                                                                                        jmp   .Lx1311_40
.Lx1311_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1311_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1311_41
                        mov              r8, rax
                                                                                        jmp   .Lx1311_40
.Lx1311_56:
                        cmp              eax, 13
                                                                                        jne   .Lx1311_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1311_41
                        cmp              rax, r8
                                                                                        je    .Lx1311_41
                        mov              r8, rax
                                                                                        jmp   .Lx1311_40
.Lx1311_41:
                        lea              r9, [rbp + 320]
.Lx1311_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx1311_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1311_43
                        cmp              esi, 1
                                                                                        jne   .Lx1311_57
                        mov              r9, rax
                                                                                        jmp   .Lx1311_42
.Lx1311_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1311_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1311_43
                        mov              r9, rax
                                                                                        jmp   .Lx1311_42
.Lx1311_58:
                        cmp              eax, 13
                                                                                        jne   .Lx1311_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1311_43
                        cmp              rax, r9
                                                                                        je    .Lx1311_43
                        mov              r9, rax
                                                                                        jmp   .Lx1311_42
.Lx1311_43:
                        cmp              r8, r9
                                                                                        je    .Lx1311_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1311_44
                        cmp              eax, 99
                                                                                        je    .Lx1311_44
                        cmp              eax, 13
                                                                                        jne   .Lx1311_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1311_44
                                                                                        jmp   .Lx1311_45
.Lx1311_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1311_53
                        cmp              eax, 99
                                                                                        je    .Lx1311_53
                        cmp              eax, 13
                                                                                        jne   .Lx1311_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1311_53
                                                                                        jmp   .Lx1311_46
.Lx1311_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1311_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1311_53
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
                                                                                        jmp   .Lx1311_51
.Lx1311_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1311_47
                        cmp              eax, 99
                                                                                        je    .Lx1311_47
                        cmp              eax, 13
                                                                                        jne   .Lx1311_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1311_47
                                                                                        jmp   .Lx1311_48
.Lx1311_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1311_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1311_53
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
                                                                                        jmp   .Lx1311_51
.Lx1311_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx1311_49
                        cmp              edx, 14
                                                                                        je    .Lx1311_53
                                                                                        jmp   .Lx1311_52
.Lx1311_49:
                        cmp              edx, 14
                                                                                        je    .Lx1311_52
                        cmp              ecx, 7
                                                                                        je    .Lx1311_53
                        cmp              edx, 7
                                                                                        je    .Lx1311_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1311_50
                        cmp              edx, 6
                                                                                        jne   .Lx1311_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1311_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1311_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1311_51
                                                                                        jmp   .Lx1311_52
.Lx1311_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1311_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1311_53
.Lx1311_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1311_54
.Lx1311_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1311_54
.Lx1311_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1311_54:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n1283_op11_α
                                                                                        jmp   n1289_var_ref_α
n1288_op11_β:
                                                                                        jmp   n1283_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1289_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n1290_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1290_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n1291_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1291_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n1292_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1292_call_proc_staged_α:
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 256]
                        lea              rcx, [rbp + 272]
                        call             proc_$numlist_$2F3_dcα
                                                                                        jmp   .Lx1319_2
.Lx1319_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n1283_op11_α
                                                                                        jmp   n1293_move_label_α
n1292_call_proc_staged_β:
                                                                                        jmp   n1283_op11_α
.Lx1319_0:
                        .quad            .Lx1319_0_s
.Lx1319_0_s:
                        .string          "$numlist_/3"
#-----------------------------------------------------------------------------------------------------------------------
n1293_move_label_α:
                        lea              rax, [rip + n1292_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_numlist$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n1294_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 80]
n1294_disjunction_β:
                                                                                        jmp   proc_numlist$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_numlist$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_numlist$2F3_β:
                                                                                        jmp   n1294_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_numlist$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 584]
                        lea              rsp, [rbp + 608]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_numlist$2F3_ω:
                        mov              rax, [rbp + 592]
                        lea              rsp, [rbp + 608]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_numlist$2F3_dcα:
                        pop              r11
                        sub              rsp, 624
                        mov              qword ptr [rsp + 600], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 576], r11
                        lea              rax, [rip + .Lx1324_2]
                        mov              qword ptr [rbp + 584], rax
                        lea              rax, [rip + .Lx1324_3]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 528
                        mov              edx, 576
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_numlist$2F3_α_body
.Lx1324_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -608
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1324_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -608
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
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
                        mov              esi, 2288
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "test/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_test$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1136
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "test_fastrw/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_test_fastrw$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "read_and_check/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_read_and_check$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 608
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "pj_test/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_pj_test$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 5296
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "term/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_term$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 4624
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pj_dir_4/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pj_dir_4$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "$numlist_/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_$numlist_$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1216
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_$numlist_$2F3_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 384
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "numlist/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_numlist$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 576
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_numlist$2F3_dcα]
                        call             rt_proc_set_dcfn@PLT
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
                        sub              rsp, 72
                        mov              rdi, rsp
                        mov              ecx, 72
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1325_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx1327_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n1326_call_proc_staged_α
.Lx1327_0:
                        .quad            .Lx1327_0_s
.Lx1327_0_s:
                        .string          "fastrw"
#-----------------------------------------------------------------------------------------------------------------------
n1326_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1329_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1329_21
.Lx1329_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx1329_21:
                        mov              rdi, qword ptr [rip + .Lx1329_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1329_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1329_3]
                        lea              rdx, [rip + .Lx1329_4]
                                                                                        jmp   rax
.Lx1329_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1329_2
.Lx1329_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1329_2
.Lx1329_1:
                        call             rt_faildescr@PLT
.Lx1329_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n1326_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx1329_0:
                        .quad            .Lx1329_0_s
.Lx1329_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 72
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 72
                        ret
                        .section         .note.GNU-stack,"",@progbits
