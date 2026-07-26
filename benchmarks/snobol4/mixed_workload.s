                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_LBL__RSUM_α
proc_LBL__RSUM_α:
                        .global          proc_LBL__RSUM_α
                        .global          proc_LBL__RSUM_β
                        .global          proc_LBL__RSUM_γ
                        .global          proc_LBL__RSUM_ω
                        sub              rsp, 1920
                        mov              [rsp + 1896], rcx
                        mov              [rsp + 1904], rdx
                        mov              [rsp + 1912], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
proc_LBL__RSUM_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_goto_α:
                                                                                        jmp   n7_var_α
n0_goto_β:
                                                                                        jmp   proc_LBL__RSUM_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_goto_α:
                                                                                        jmp   n8_lit_string_α
n1_goto_β:
                                                                                        jmp   proc_LBL__RSUM_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_goto_α:
                                                                                        jmp   n9_lit_integer_α
n2_goto_β:
                                                                                        jmp   proc_LBL__RSUM_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_goto_α:
                                                                                        jmp   n10_var_α
n3_goto_β:
                                                                                        jmp   proc_LBL__RSUM_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_goto_α:
                                                                                        jmp   n11_lit_integer_α
n4_goto_β:
                                                                                        jmp   proc_LBL__RSUM_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_goto_α:
                                                                                        jmp   n12_var_α
n5_goto_β:
                                                                                        jmp   proc_LBL__RSUM_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_goto_α:
                                                                                        jmp   n13_lit_integer_α
n6_goto_β:
                                                                                        jmp   proc_LBL__RSUM_ω
#=======================================================================================================================
# RSUM    RSUM = EQ(N,0) 0               :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n14_lit_integer_α
#=======================================================================================================================
#     DEFINE('RSUM(N)')                   :(RSUM_END)
#     PAT = BREAK(',') . WORD ','
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n16_call_α
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          "PAT$0"
#=======================================================================================================================
# OUTER   T = TABLE(16)
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 704], 6
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n17_call_α
.Lx109_0:
                        .quad            16
#=======================================================================================================================
# PARSE   DATA PAT =                     :F(COMPUTE)
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n18_match_head_α
#=======================================================================================================================
# COMPUTE TOTAL = 0
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rbp + 1120], 6
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n19_assign_α
.Lx111_0:
                        .quad            0
#=======================================================================================================================
# ADD     I = LT(I, IDX) I + 1          :F(CHECK)
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n20_var_α
#=======================================================================================================================
# CHECK   CHECK = RSUM(10)
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 1504], 6
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n21_call_α
.Lx113_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n22_op75_α
.Lx114_0:
                        .quad            0
#=======================================================================================================================
#     RSUM = N + RSUM(N - 1)             :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn117:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn117]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n26_call_α
                                                                                        jmp   n25_assign_α
n16_call_β:
                                                                                        jmp   n26_call_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn119:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rbp + 672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n28_lit_string_α
                                                                                        jmp   n27_assign_α
n17_call_β:
                                                                                        jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_match_head_α:
                        mov              qword ptr [rbp + 840], rbp
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 832], r12
                        mov              qword ptr [rbp + 816], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 808], rax
                        mov              dword ptr [rbp + 800], 0
.Lx121_0:
                        mov              r14d, dword ptr [rbp + 800]
                                                                                        jmp   n29_match_defer_α
n18_match_head_β:
                        add              dword ptr [rbp + 800], 1
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, r15d
                                                                                        jg    .Lx121_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx121_1
                                                                                        jmp   .Lx121_0
.Lx121_1:
                        mov              rax, qword ptr [rbp + 808]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 816]
                        mov              r12, qword ptr [rbp + 832]
                        mov              rbp, qword ptr [rbp + 840]
                                                                                        jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n31_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx125_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx125_5
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx125_6]
                        lea              rdx, [rip + .Lx125_7]
                                                                                        jmp   rax
.Lx125_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx125_2
.Lx125_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx125_2
.Lx125_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx125_20
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx125_21
.Lx125_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        call             rt_arg_stage@PLT
.Lx125_21:
                        mov              rdi, qword ptr [rip + .Lx125_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx125_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx125_3]
                        lea              rdx, [rip + .Lx125_4]
                                                                                        jmp   rax
.Lx125_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx125_2
.Lx125_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx125_2
.Lx125_1:
                        call             rt_faildescr@PLT
.Lx125_2:
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n33_var_α
                                                                                        jmp   n32_assign_α
n21_call_β:
                                                                                        jmp   n33_var_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n22_op75_α:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 7
                                                                                        je    .Lx127_1
                        cmp              eax, 6
                                                                                        jne   .Lx127_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx127_0
.Lx127_1:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n34_op75_α
.Lx127_0:
                        lea              rdi, [rbp + 304]
                        lea              rsi, [rbp + 288]
                        lea              rdx, [rbp + 272]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n34_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n35_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n26_call_α
#=======================================================================================================================
#     T1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n26_call_α:
                        .section         .rodata
.Lrkfn133:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn133]
                        lea              rsi, [rbp + 592]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n37_lit_integer_α
                                                                                        jmp   n36_assign_α
n26_call_β:
                                                                                        jmp   n37_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n28_lit_string_α
#=======================================================================================================================
#     DATA = '10,20,30,40,50,60,70,80,90,100,'
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n38_assign_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "10,20,30,40,50,60,70,80,90,100,"
#-----------------------------------------------------------------------------------------------------------------------
n29_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx136_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx136_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx136_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx136_10
.Lx136_9:
                        xor              eax, eax
.Lx136_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx136_11:
                        test             rax, rax
                                                                                        jz    .Lx136_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx136_4]
                        lea              rdx, [rip + .Lx136_5]
                                                                                        jmp   rax
.Lx136_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 800], eax
                                                                                        jmp   n39_match_release_α
.Lx136_5:
                                                                                        jmp   n18_match_head_β
.Lx136_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx136_2:
                        test             rax, rax
                                                                                        je    .Lx136_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx136_7]
                        lea              rdx, [rip + .Lx136_8]
                                                                                        jmp   rax
.Lx136_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx136_2
.Lx136_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx136_2
.Lx136_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n18_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx136_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n39_match_release_α
.Lx136_6:
                        add              rsp, 16
                                                                                        jmp   n18_match_head_β
n29_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
#     I = 0
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 6
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n40_assign_α
.Lx137_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n31_op75_α:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 7
                                                                                        je    .Lx139_1
                        cmp              eax, 6
                                                                                        jne   .Lx139_0
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 6
                                                                                        jne   .Lx139_0
.Lx139_1:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n41_op75_α
.Lx139_0:
                        lea              rdi, [rbp + 1264]
                        lea              rsi, [rbp + 1248]
                        lea              rdx, [rbp + 1232]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n41_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n33_var_α
#=======================================================================================================================
#     OUTER = LT(OUTER, 50000) OUTER + 1  :S(OUTER)
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n42_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_op75_α:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 7
                                                                                        je    .Lx143_1
                        cmp              eax, 6
                                                                                        jne   .Lx143_0
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 6
                                                                                        jne   .Lx143_0
.Lx143_1:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n44_op77_α
.Lx143_0:
                        lea              rdi, [rbp + 288]
                        lea              rsi, [rbp + 304]
                        lea              rdx, [rbp + 256]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n44_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n45_binop_α
.Lx144_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n37_lit_integer_α
#=======================================================================================================================
#     OUTER = 0
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n46_assign_α
.Lx146_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_match_release_α:
                        mov              rax, qword ptr [rbp + 808]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              qword ptr [rbp + 824], r14
                        mov              rsp, qword ptr [rbp + 816]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx149_1:
                        test             rax, rax
                                                                                        je    .Lx149_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx149_3]
                        lea              rdx, [rip + .Lx149_4]
                                                                                        jmp   rax
.Lx149_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx149_1
.Lx149_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx149_1
.Lx149_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 832]
                                                                                        jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_op75_α:
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 7
                                                                                        je    .Lx152_1
                        cmp              eax, 6
                                                                                        jne   .Lx152_0
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 6
                                                                                        jne   .Lx152_0
.Lx152_1:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n49_op77_α
.Lx152_0:
                        lea              rdi, [rbp + 1248]
                        lea              rsi, [rbp + 1264]
                        lea              rdx, [rbp + 1216]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n49_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        mov              qword ptr [rbp + 1600], 6
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n50_op75_α
.Lx153_0:
                        .quad            50000
#=======================================================================================================================
#     T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:
                        .section         .rodata
.Lrkfn155:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n52_lit_string_α
                                                                                        jmp   n51_assign_α
n43_call_β:
                                                                                        jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n44_op77_α:
                        lea              rdi, [rbp + 272]
                        lea              rsi, [rbp + 256]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n15_var_α
                        mov              qword ptr [rbp + 240], 0
                        mov              qword ptr [rbp + 248], 0
                                                                                        jmp   n53_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 100
                                                                                        je    .Lx158_0
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 6
                                                                                        jne   .Lx158_2
.Lx158_1:
                        mov              rax, qword ptr [rbp + 456]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 432], 6
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n54_call_α
.Lx158_0:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        mov              r8d, 1
                        lea              r9, [rbp + 432]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n54_call_α
.Lx158_2:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n24_op14_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n54_call_α
n45_binop_β:
                                                                                        jmp   n24_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n9_lit_integer_α
#=======================================================================================================================
#     IDX = 0
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n55_assign_α
.Lx160_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n56_match_replace_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n49_op77_α:
                        lea              rdi, [rbp + 1232]
                        lea              rsi, [rbp + 1216]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n13_lit_integer_α
                        mov              qword ptr [rbp + 1200], 0
                        mov              qword ptr [rbp + 1208], 0
                                                                                        jmp   n57_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_op75_α:
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 7
                                                                                        je    .Lx165_1
                        cmp              eax, 6
                                                                                        jne   .Lx165_0
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 6
                                                                                        jne   .Lx165_0
.Lx165_1:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n58_op75_α
.Lx165_0:
                        lea              rdi, [rbp + 1616]
                        lea              rsi, [rbp + 1600]
                        lea              rdx, [rbp + 1584]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n58_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        mov              qword ptr [1879052480], rax
                        mov              qword ptr [1879052488], rdx
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n52_lit_string_α
#=======================================================================================================================
#     OUTPUT = "result: " TOTAL
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n59_var_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "result: "
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n60_binop_α
.Lx168_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx170_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx170_5
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx170_6]
                        lea              rdx, [rip + .Lx170_7]
                                                                                        jmp   rax
.Lx170_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx170_2
.Lx170_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx170_2
.Lx170_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx170_20
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx170_21
.Lx170_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        call             rt_arg_stage@PLT
.Lx170_21:
                        mov              rdi, qword ptr [rip + .Lx170_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx170_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx170_3]
                        lea              rdx, [rip + .Lx170_4]
                                                                                        jmp   rax
.Lx170_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx170_2
.Lx170_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx170_2
.Lx170_1:
                        call             rt_faildescr@PLT
.Lx170_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n24_op14_α
                                                                                        jmp   n61_binop_α
n54_call_β:
                                                                                        jmp   n24_op14_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n56_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx173_0]
                        mov              rsi, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              ecx, dword ptr [rbp + 800]
                        mov              r8, qword ptr [rbp + 824]
                        lea              r9, [rbp + 864]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx173_1
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "DATA"
.Lx173_1:
                        mov              rbp, qword ptr [rbp + 840]
                                                                                        jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n63_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n58_op75_α:
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 7
                                                                                        je    .Lx176_1
                        cmp              eax, 6
                                                                                        jne   .Lx176_0
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 6
                                                                                        jne   .Lx176_0
.Lx176_1:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n64_op77_α
.Lx176_0:
                        lea              rdi, [rbp + 1600]
                        lea              rsi, [rbp + 1616]
                        lea              rdx, [rbp + 1568]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n64_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n65_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n67_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 100
                                                                                        je    .Lx179_0
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 100
                                                                                        je    .Lx179_0
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 6
                                                                                        jne   .Lx179_2
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 6
                                                                                        jne   .Lx179_2
.Lx179_1:
                        mov              rax, qword ptr [rbp + 376]
                        mov              rcx, qword ptr [rbp + 392]
                        add              rax, rcx
                        mov              qword ptr [rbp + 352], 6
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n68_assign_α
.Lx179_0:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        mov              r8d, 0
                        lea              r9, [rbp + 352]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n68_assign_α
.Lx179_2:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n24_op14_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n68_assign_α
n61_binop_β:
                                                                                        jmp   n24_op14_α
#=======================================================================================================================
#     IDX = IDX + 1
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n69_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:
                        mov              qword ptr [rbp + 1312], 6
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n71_binop_α
.Lx181_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n64_op77_α:
                        lea              rdi, [rbp + 1584]
                        lea              rsi, [rbp + 1568]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n43_call_α
                        mov              qword ptr [rbp + 1552], 0
                        mov              qword ptr [rbp + 1560], 0
                                                                                        jmp   n72_var_α
#-----------------------------------------------------------------------------------------------------------------------
n65_binop_α:
                        mov              rdi, qword ptr [rbp + 1760]
                        mov              rsi, qword ptr [rbp + 1768]
                        mov              rdx, qword ptr [rbp + 1776]
                        mov              rcx, qword ptr [rbp + 1784]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n73_assign_α
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n74_var_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n24_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n24_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n75_binop_α
.Lx188_0:
                        .quad            1
#=======================================================================================================================
#     T<IDX> = WORD + 0                  :(PARSE)
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n76_var_α
#-----------------------------------------------------------------------------------------------------------------------
n71_binop_α:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 100
                                                                                        je    .Lx190_0
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 6
                                                                                        jne   .Lx190_2
.Lx190_1:
                        mov              rax, qword ptr [rbp + 1304]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1280], 6
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n77_binop_α
.Lx190_0:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        mov              r8d, 0
                        lea              r9, [rbp + 1280]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n77_binop_α
.Lx190_2:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n13_lit_integer_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n77_binop_α
n71_binop_β:
                                                                                        jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n78_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:
                        mov              rsi, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        mov              rdi, qword ptr [rip + .Lx192_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n66_lit_string_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n75_binop_α:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 100
                                                                                        je    .Lx194_0
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 6
                                                                                        jne   .Lx194_2
.Lx194_1:
                        mov              rax, qword ptr [rbp + 968]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 944], 6
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n80_assign_α
.Lx194_0:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        mov              r8d, 0
                        lea              r9, [rbp + 944]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n80_assign_α
.Lx194_2:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n70_var_α
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n80_assign_α
n75_binop_β:
                                                                                        jmp   n70_var_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n81_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n77_binop_α:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n82_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        mov              qword ptr [rbp + 1664], 6
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n83_binop_α
.Lx197_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n84_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n70_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_subscript_α:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 1008]
                        mov              rcx, qword ptr [rbp + 1016]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n10_var_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n86_var_α
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 100
                                                                                        je    .Lx202_0
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 6
                                                                                        jne   .Lx202_2
.Lx202_1:
                        mov              rax, qword ptr [rbp + 1656]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1632], 6
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n87_binop_α
.Lx202_0:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1664]
                        mov              rcx, qword ptr [rbp + 1672]
                        mov              r8d, 0
                        lea              r9, [rbp + 1632]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n87_binop_α
.Lx202_2:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1664]
                        mov              rcx, qword ptr [rbp + 1672]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n43_call_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n87_binop_α
n83_binop_β:
                                                                                        jmp   n43_call_α
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 100
                                                                                        je    .Lx203_0
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 100
                                                                                        je    .Lx203_0
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 6
                                                                                        jne   .Lx203_2
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 6
                                                                                        jne   .Lx203_2
.Lx203_1:
                        mov              rax, qword ptr [rbp + 1864]
                        mov              rcx, qword ptr [rbp + 1880]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1840], 6
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n88_binop_α
.Lx203_0:
                        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1872]
                        mov              rcx, qword ptr [rbp + 1880]
                        mov              r8d, 1
                        lea              r9, [rbp + 1840]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n88_binop_α
.Lx203_2:
                        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1872]
                        mov              rcx, qword ptr [rbp + 1880]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    proc_LBL__RSUM_γ
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n88_binop_α
n84_binop_β:
                                                                                        jmp   proc_LBL__RSUM_γ
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n89_lit_integer_α
#=======================================================================================================================
#     TOTAL = TOTAL + T<I>               :(ADD)
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n90_var_α
#-----------------------------------------------------------------------------------------------------------------------
n87_binop_α:
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        mov              rdx, qword ptr [rbp + 1632]
                        mov              rcx, qword ptr [rbp + 1640]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n91_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n88_binop_α:
                        mov              rdi, qword ptr [rbp + 1824]
                        mov              rsi, qword ptr [rbp + 1832]
                        mov              rdx, qword ptr [rbp + 1840]
                        mov              rcx, qword ptr [rbp + 1848]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n92_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n93_binop_α
.Lx208_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n94_var_α
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_α:
                        mov              rsi, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        mov              rdi, qword ptr [rip + .Lx211_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   proc_LBL__RSUM_γ
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_α:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 100
                                                                                        je    .Lx212_0
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 6
                                                                                        jne   .Lx212_2
.Lx212_1:
                        mov              rax, qword ptr [rbp + 1064]
                        mov              rcx, 0
                        add              rax, rcx
                        mov              qword ptr [rbp + 1040], 6
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n95_assign_var_α
.Lx212_0:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              r8d, 0
                        lea              r9, [rbp + 1040]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n95_assign_var_α
.Lx212_2:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n10_var_α
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n95_assign_var_α
n93_binop_β:
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n96_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n10_var_α
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n96_subscript_α:
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              rdx, qword ptr [rbp + 1392]
                        mov              rcx, qword ptr [rbp + 1400]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n12_var_α
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n97_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n97_deref_α:
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n12_var_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n98_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n98_binop_α:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 100
                                                                                        je    .Lx217_0
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 100
                                                                                        je    .Lx217_0
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 6
                                                                                        jne   .Lx217_2
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 6
                                                                                        jne   .Lx217_2
.Lx217_1:
                        mov              rax, qword ptr [rbp + 1368]
                        mov              rcx, qword ptr [rbp + 1432]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1344], 6
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n99_assign_α
.Lx217_0:
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdx, qword ptr [rbp + 1424]
                        mov              rcx, qword ptr [rbp + 1432]
                        mov              r8d, 0
                        lea              r9, [rbp + 1344]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n99_assign_α
.Lx217_2:
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdx, qword ptr [rbp + 1424]
                        mov              rcx, qword ptr [rbp + 1432]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n12_var_α
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n99_assign_α
n98_binop_β:
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__RSUM_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__RSUM_β:
                                                                                        jmp   proc_LBL__RSUM_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__RSUM_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1896]
                        lea              rsp, [rbp + 1920]
                        mov              rbp, [rbp + 1912]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_LBL__RSUM_ω:
                        mov              rax, [rbp + 1904]
                        lea              rsp, [rbp + 1920]
                        mov              rbp, [rbp + 1912]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_RSUM_α
proc_RSUM_α:
                        .global          proc_RSUM_α
                        .global          proc_RSUM_β
                        .global          proc_RSUM_γ
                        .global          proc_RSUM_ω
                        sub              rsp, 1920
                        mov              [rsp + 1896], rcx
                        mov              [rsp + 1904], rdx
                        mov              [rsp + 1912], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              ecx, 1888
                        xor              eax, eax
                        rep stosb
proc_RSUM_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n219_op14_α:
                        mov              rdi, qword ptr [rbp + 1896]
                        mov              rsi, qword ptr [rbp + 1904]
                        lea              rdx, [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1912]
                        call             rt_flat_wire_adopt@PLT
                                                                                        jmp   n220_goto_deferred_α
#-----------------------------------------------------------------------------------------------------------------------
n220_goto_deferred_α:
                        mov              rdi, qword ptr [rip + .Lx224_0]
                        call             rt_goto_transfer@PLT
                                                                                        jmp   .Lx224_1
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "RSUM"
.Lx224_1:
                                                                                        jmp   proc_RSUM_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_RSUM_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_RSUM_β:
                                                                                        jmp   proc_RSUM_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_RSUM_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1896]
                        lea              rsp, [rbp + 1920]
                        mov              rbp, [rbp + 1912]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_RSUM_ω:
                        mov              rax, [rbp + 1904]
                        lea              rsp, [rbp + 1920]
                        mov              rbp, [rbp + 1912]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$0_α
proc_PAT$0_α:
                        .global          proc_PAT$0_α
                        .global          proc_PAT$0_β
                        .global          proc_PAT$0_γ
                        .global          proc_PAT$0_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rbp + 144], r8
                        mov              dword ptr [rbp + 136], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
                        lea              rax, [rip + n225_match_sequence_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n225_match_sequence_α:
                                                                                        jmp   n226_match_assign_save_α
n225_match_sequence_as:
                                                                                        jmp   proc_PAT$0_γ
n225_match_sequence_β:
                                                                                        jmp   n228_match_lit_β
n225_match_sequence_af:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n226_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n229_match_break_α
n226_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n227_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   n228_match_lit_α
n227_match_assign_cond_β:
                        sub              r12, 24
                                                                                        jmp   n229_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n228_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n227_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44
                                                                                        jne   n227_match_assign_cond_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$0_γ
n228_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n227_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n229_match_break_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx239_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx239_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx239_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx239_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx239_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx239_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx239_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx239_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx239_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx239_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx239_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
.Lx239_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx239_1
                        add              ecx, 1
                                                                                        jmp   .Lx239_0
.Lx239_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   n227_match_assign_cond_α
n229_match_break_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   proc_PAT$0_ω
proc_PAT$0_scanhit:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   7f
                        mov              ecx, dword ptr [rbp + 136]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx], ecx
7:
                                                                                        jmp   proc_PAT$0_γ
proc_PAT$0_scanfail:
                        cmp              qword ptr [rbp + 144], 1
                                                                                        jne   8f
                        mov              eax, dword ptr [rbp + 136]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    8f
                        lea              rcx, [rip + g_anchor]
                        cmp              qword ptr [rcx], 0
                                                                                        jne   8f
                        mov              dword ptr [rbp + 136], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$0_attempt
8:
                                                                                        jmp   proc_PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$0_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$0_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__RSUM"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_LBL__RSUM_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1888
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "RSUM"
.Lstartup_pp1_0:        .string          "N"
                        .align           8
.Lstartup_pnames1:
                        .quad            .Lstartup_pp1_0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + .Lstartup_pnames1]
                        mov              edx, 1
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_RSUM_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 16
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "PAT$0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_PAT$0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_zstatic@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "RSUM"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "PAT"
.Lgvan3:                .string          "WORD"
.Lgvan4:                .string          "T1"
.Lgvan5:                .string          "OUTER"
.Lgvan6:                .string          "T"
.Lgvan7:                .string          "DATA"
.Lgvan8:                .string          "IDX"
.Lgvan9:                .string          "TOTAL"
.Lgvan10:               .string          "I"
.Lgvan11:               .string          "CHECK"
.Lgvan12:               .string          "T2"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .quad            .Lgvan10
                        .quad            .Lgvan11
                        .quad            .Lgvan12
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 13
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 13
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
                        sub              rsp, 1896
                        mov              rdi, rsp
                        mov              ecx, 1896
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1888], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#     &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:
                        mov              qword ptr [rbp + 80], 1
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n248_lit_integer_α
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n241_goto_α:
                                                                                        jmp   n249_var_α
n241_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n242_goto_α:
                                                                                        jmp   n250_lit_string_α
n242_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n243_goto_α:
                                                                                        jmp   n251_lit_integer_α
n243_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n244_goto_α:
                                                                                        jmp   n252_var_α
n244_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n245_goto_α:
                                                                                        jmp   n253_lit_integer_α
n245_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n246_goto_α:
                                                                                        jmp   n254_var_α
n246_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n247_goto_α:
                                                                                        jmp   n255_lit_integer_α
n247_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n256_call_α
.Lx354_0:
                        .quad            1
#=======================================================================================================================
# RSUM    RSUM = EQ(N,0) 0               :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n249_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n257_lit_integer_α
#=======================================================================================================================
#     DEFINE('RSUM(N)')                   :(RSUM_END)
#     PAT = BREAK(',') . WORD ','
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n259_call_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          "PAT$0"
#=======================================================================================================================
# OUTER   T = TABLE(16)
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_integer_α:
                        mov              qword ptr [rbp + 704], 6
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n260_call_α
.Lx357_0:
                        .quad            16
#=======================================================================================================================
# PARSE   DATA PAT =                     :F(COMPUTE)
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n261_match_head_α
#=======================================================================================================================
# COMPUTE TOTAL = 0
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_integer_α:
                        mov              qword ptr [rbp + 1120], 6
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n262_assign_α
.Lx359_0:
                        .quad            0
#=======================================================================================================================
# ADD     I = LT(I, IDX) I + 1          :F(CHECK)
#-----------------------------------------------------------------------------------------------------------------------
n254_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n263_var_α
#=======================================================================================================================
# CHECK   CHECK = RSUM(10)
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_integer_α:
                        mov              qword ptr [rbp + 1504], 6
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n264_call_α
.Lx361_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n256_call_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn363:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn363]
                        lea              rsi, [rbp + 32]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n265_lit_string_α
                                                                                        jmp   n265_lit_string_α
n256_call_β:
                                                                                        jmp   n265_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n266_op75_α
.Lx364_0:
                        .quad            0
#=======================================================================================================================
#     RSUM = N + RSUM(N - 1)             :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n267_var_α
#-----------------------------------------------------------------------------------------------------------------------
n259_call_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn367:              .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn367]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n270_call_α
                                                                                        jmp   n269_assign_α
n259_call_β:
                                                                                        jmp   n270_call_α
#-----------------------------------------------------------------------------------------------------------------------
n260_call_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn369:              .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn369]
                        lea              rsi, [rbp + 672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n272_lit_string_α
                                                                                        jmp   n271_assign_α
n260_call_β:
                                                                                        jmp   n272_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n261_match_head_α:
                        mov              qword ptr [rbp + 840], rbp
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 832], r12
                        mov              qword ptr [rbp + 816], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 808], rax
                        mov              dword ptr [rbp + 800], 0
.Lx371_0:
                        mov              r14d, dword ptr [rbp + 800]
                                                                                        jmp   n273_match_defer_α
n261_match_head_β:
                        add              dword ptr [rbp + 800], 1
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, r15d
                                                                                        jg    .Lx371_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx371_1
                                                                                        jmp   .Lx371_0
.Lx371_1:
                        mov              rax, qword ptr [rbp + 808]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 816]
                        mov              r12, qword ptr [rbp + 832]
                        mov              rbp, qword ptr [rbp + 840]
                                                                                        jmp   n253_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n262_assign_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n274_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n275_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx375_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx375_5
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx375_6]
                        lea              rdx, [rip + .Lx375_7]
                                                                                        jmp   rax
.Lx375_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx375_2
.Lx375_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx375_2
.Lx375_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx375_20
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx375_21
.Lx375_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        call             rt_arg_stage@PLT
.Lx375_21:
                        mov              rdi, qword ptr [rip + .Lx375_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx375_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx375_3]
                        lea              rdx, [rip + .Lx375_4]
                                                                                        jmp   rax
.Lx375_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx375_2
.Lx375_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx375_2
.Lx375_1:
                        call             rt_faildescr@PLT
.Lx375_2:
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n277_var_α
                                                                                        jmp   n276_assign_α
n264_call_β:
                                                                                        jmp   n277_var_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "RSUM"
#=======================================================================================================================
#     &STLIMIT = 1000000000
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n278_lit_integer_α
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n266_op75_α:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 7
                                                                                        je    .Lx378_1
                        cmp              eax, 6
                                                                                        jne   .Lx378_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx378_0
.Lx378_1:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n279_op75_α
.Lx378_0:
                        lea              rdi, [rbp + 304]
                        lea              rsi, [rbp + 288]
                        lea              rdx, [rbp + 272]
                        mov              rcx, 101
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n279_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n280_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n268_op14_α:
                        call             rt_flat_ret_snap@PLT
                        mov              rcx, qword ptr [rax + 0]
                        mov              rbp, qword ptr [rax + 24]
                        mov              rsp, qword ptr [rax + 16]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
n269_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n270_call_α
#=======================================================================================================================
#     T1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n270_call_α:
                        .section         .rodata
.Lrkfn384:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn384]
                        lea              rsi, [rbp + 592]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n282_lit_integer_α
                                                                                        jmp   n281_assign_α
n270_call_β:
                                                                                        jmp   n282_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n271_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n272_lit_string_α
#=======================================================================================================================
#     DATA = '10,20,30,40,50,60,70,80,90,100,'
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n283_assign_α
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          "10,20,30,40,50,60,70,80,90,100,"
#-----------------------------------------------------------------------------------------------------------------------
n273_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx387_11
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx387_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx387_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx387_10
.Lx387_9:
                        xor              eax, eax
.Lx387_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx387_11:
                        test             rax, rax
                                                                                        jz    .Lx387_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx387_4]
                        lea              rdx, [rip + .Lx387_5]
                                                                                        jmp   rax
.Lx387_4:
                        lea              rcx, [rip + g_scan_hit_start]
                        mov              rax, qword ptr [rcx]
                        mov              dword ptr [rbp + 800], eax
                                                                                        jmp   n284_match_release_α
.Lx387_5:
                                                                                        jmp   n261_match_head_β
.Lx387_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx387_2:
                        test             rax, rax
                                                                                        je    .Lx387_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx387_7]
                        lea              rdx, [rip + .Lx387_8]
                                                                                        jmp   rax
.Lx387_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx387_2
.Lx387_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx387_2
.Lx387_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n261_match_head_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx387_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n284_match_release_α
.Lx387_6:
                        add              rsp, 16
                                                                                        jmp   n261_match_head_β
n273_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#=======================================================================================================================
#     I = 0
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 6
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n285_assign_α
.Lx388_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n275_op75_α:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 7
                                                                                        je    .Lx390_1
                        cmp              eax, 6
                                                                                        jne   .Lx390_0
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 6
                                                                                        jne   .Lx390_0
.Lx390_1:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n286_op75_α
.Lx390_0:
                        lea              rdi, [rbp + 1264]
                        lea              rsi, [rbp + 1248]
                        lea              rdx, [rbp + 1232]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n286_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n276_assign_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n277_var_α
#=======================================================================================================================
#     OUTER = LT(OUTER, 50000) OUTER + 1  :S(OUTER)
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n287_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n289_call_α
.Lx393_0:
                        .quad            1000000000
#-----------------------------------------------------------------------------------------------------------------------
n279_op75_α:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 7
                                                                                        je    .Lx395_1
                        cmp              eax, 6
                                                                                        jne   .Lx395_0
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 6
                                                                                        jne   .Lx395_0
.Lx395_1:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n290_op77_α
.Lx395_0:
                        lea              rdi, [rbp + 288]
                        lea              rsi, [rbp + 304]
                        lea              rdx, [rbp + 256]
                        mov              rcx, 102
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n290_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n291_binop_α
.Lx396_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n281_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n282_lit_integer_α
#=======================================================================================================================
#     OUTER = 0
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n292_assign_α
.Lx398_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n283_assign_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n293_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n284_match_release_α:
                        mov              rax, qword ptr [rbp + 808]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              qword ptr [rbp + 824], r14
                        mov              rsp, qword ptr [rbp + 816]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx401_1:
                        test             rax, rax
                                                                                        je    .Lx401_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx401_3]
                        lea              rdx, [rip + .Lx401_4]
                                                                                        jmp   rax
.Lx401_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx401_1
.Lx401_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx401_1
.Lx401_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 832]
                                                                                        jmp   n294_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n285_assign_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n254_var_α
#-----------------------------------------------------------------------------------------------------------------------
n286_op75_α:
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 7
                                                                                        je    .Lx404_1
                        cmp              eax, 6
                                                                                        jne   .Lx404_0
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 6
                                                                                        jne   .Lx404_0
.Lx404_1:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n295_op77_α
.Lx404_0:
                        lea              rdi, [rbp + 1248]
                        lea              rsi, [rbp + 1264]
                        lea              rdx, [rbp + 1216]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n295_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_integer_α:
                        mov              qword ptr [rbp + 1600], 6
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n296_op75_α
.Lx405_0:
                        .quad            50000
#=======================================================================================================================
#     T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
n288_call_α:
                        .section         .rodata
.Lrkfn407:              .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn407]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n298_lit_string_α
                                                                                        jmp   n297_assign_α
n288_call_β:
                                                                                        jmp   n298_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n289_call_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn409:              .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn409]
                        lea              rsi, [rbp + 128]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n250_lit_string_α
                                                                                        jmp   n250_lit_string_α
n289_call_β:
                                                                                        jmp   n250_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n290_op77_α:
                        lea              rdi, [rbp + 272]
                        lea              rsi, [rbp + 256]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jne   n258_var_α
                        mov              qword ptr [rbp + 240], 0
                        mov              qword ptr [rbp + 248], 0
                                                                                        jmp   n299_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n291_binop_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 100
                                                                                        je    .Lx412_0
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 6
                                                                                        jne   .Lx412_2
.Lx412_1:
                        mov              rax, qword ptr [rbp + 456]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 432], 6
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n300_call_α
.Lx412_0:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        mov              r8d, 1
                        lea              r9, [rbp + 432]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n300_call_α
.Lx412_2:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n268_op14_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n300_call_α
n291_binop_β:
                                                                                        jmp   n268_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n292_assign_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n251_lit_integer_α
#=======================================================================================================================
#     IDX = 0
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n301_assign_α
.Lx414_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n302_match_replace_α
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n295_op77_α:
                        lea              rdi, [rbp + 1232]
                        lea              rsi, [rbp + 1216]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n255_lit_integer_α
                        mov              qword ptr [rbp + 1200], 0
                        mov              qword ptr [rbp + 1208], 0
                                                                                        jmp   n303_var_α
#-----------------------------------------------------------------------------------------------------------------------
n296_op75_α:
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 7
                                                                                        je    .Lx419_1
                        cmp              eax, 6
                                                                                        jne   .Lx419_0
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 6
                                                                                        jne   .Lx419_0
.Lx419_1:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n304_op75_α
.Lx419_0:
                        lea              rdi, [rbp + 1616]
                        lea              rsi, [rbp + 1600]
                        lea              rdx, [rbp + 1584]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n304_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n297_assign_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        mov              qword ptr [1879052480], rax
                        mov              qword ptr [1879052488], rdx
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n298_lit_string_α
#=======================================================================================================================
#     OUTPUT = "result: " TOTAL
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n305_var_α
.Lx421_0:
                        .quad            .Lx421_0_s
.Lx421_0_s:
                        .string          "result: "
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n306_binop_α
.Lx422_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n300_call_α:
                        sub              rsp, 32
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 24], rax
                        mov              rdi, qword ptr [rip + .Lx424_0]
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx424_5
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx424_6]
                        lea              rdx, [rip + .Lx424_7]
                                                                                        jmp   rax
.Lx424_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx424_2
.Lx424_7:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 32
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx424_2
.Lx424_5:
                        add              rsp, 32
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx424_20
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx424_21
.Lx424_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        call             rt_arg_stage@PLT
.Lx424_21:
                        mov              rdi, qword ptr [rip + .Lx424_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx424_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx424_3]
                        lea              rdx, [rip + .Lx424_4]
                                                                                        jmp   rax
.Lx424_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx424_2
.Lx424_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx424_2
.Lx424_1:
                        call             rt_faildescr@PLT
.Lx424_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n268_op14_α
                                                                                        jmp   n307_binop_α
n300_call_β:
                                                                                        jmp   n268_op14_α
.Lx424_0:
                        .quad            .Lx424_0_s
.Lx424_0_s:
                        .string          "RSUM"
#-----------------------------------------------------------------------------------------------------------------------
n301_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n252_var_α
#-----------------------------------------------------------------------------------------------------------------------
n302_match_replace_α:
                        mov              rdi, qword ptr [rip + .Lx427_0]
                        mov              rsi, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              ecx, dword ptr [rbp + 800]
                        mov              r8, qword ptr [rbp + 824]
                        lea              r9, [rbp + 864]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx427_1
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "DATA"
.Lx427_1:
                        mov              rbp, qword ptr [rbp + 840]
                                                                                        jmp   n308_var_α
#-----------------------------------------------------------------------------------------------------------------------
n303_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n309_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n304_op75_α:
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 7
                                                                                        je    .Lx430_1
                        cmp              eax, 6
                                                                                        jne   .Lx430_0
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 6
                                                                                        jne   .Lx430_0
.Lx430_1:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n310_op77_α
.Lx430_0:
                        lea              rdi, [rbp + 1600]
                        lea              rsi, [rbp + 1616]
                        lea              rdx, [rbp + 1568]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n310_op77_α
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n311_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n306_binop_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n313_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n307_binop_α:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 100
                                                                                        je    .Lx433_0
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 100
                                                                                        je    .Lx433_0
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 6
                                                                                        jne   .Lx433_2
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 6
                                                                                        jne   .Lx433_2
.Lx433_1:
                        mov              rax, qword ptr [rbp + 376]
                        mov              rcx, qword ptr [rbp + 392]
                        add              rax, rcx
                        mov              qword ptr [rbp + 352], 6
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n314_assign_α
.Lx433_0:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        mov              r8d, 0
                        lea              r9, [rbp + 352]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n314_assign_α
.Lx433_2:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n268_op14_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n314_assign_α
n307_binop_β:
                                                                                        jmp   n268_op14_α
#=======================================================================================================================
#     IDX = IDX + 1
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n315_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_integer_α:
                        mov              qword ptr [rbp + 1312], 6
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n317_binop_α
.Lx435_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n310_op77_α:
                        lea              rdi, [rbp + 1584]
                        lea              rsi, [rbp + 1568]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   n288_call_α
                        mov              qword ptr [rbp + 1552], 0
                        mov              qword ptr [rbp + 1560], 0
                                                                                        jmp   n318_var_α
#-----------------------------------------------------------------------------------------------------------------------
n311_binop_α:
                        mov              rdi, qword ptr [rbp + 1760]
                        mov              rsi, qword ptr [rbp + 1768]
                        mov              rdx, qword ptr [rbp + 1776]
                        mov              rcx, qword ptr [rbp + 1784]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n319_assign_α
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n320_var_α
.Lx439_0:
                        .quad            .Lx439_0_s
.Lx439_0_s:
                        .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n313_assign_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n268_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n314_assign_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n268_op14_α
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n321_binop_α
.Lx442_0:
                        .quad            1
#=======================================================================================================================
#     T<IDX> = WORD + 0                  :(PARSE)
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n322_var_α
#-----------------------------------------------------------------------------------------------------------------------
n317_binop_α:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 100
                                                                                        je    .Lx444_0
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 6
                                                                                        jne   .Lx444_2
.Lx444_1:
                        mov              rax, qword ptr [rbp + 1304]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1280], 6
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n323_binop_α
.Lx444_0:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        mov              r8d, 0
                        lea              r9, [rbp + 1280]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n323_binop_α
.Lx444_2:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n255_lit_integer_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n323_binop_α
n317_binop_β:
                                                                                        jmp   n255_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n324_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n319_assign_α:
                        mov              rsi, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        mov              rdi, qword ptr [rip + .Lx446_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n312_lit_string_α
.Lx446_0:
                        .quad            .Lx446_0_s
.Lx446_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n325_var_α
#-----------------------------------------------------------------------------------------------------------------------
n321_binop_α:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 100
                                                                                        je    .Lx448_0
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 6
                                                                                        jne   .Lx448_2
.Lx448_1:
                        mov              rax, qword ptr [rbp + 968]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 944], 6
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n326_assign_α
.Lx448_0:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        mov              r8d, 0
                        lea              r9, [rbp + 944]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n326_assign_α
.Lx448_2:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n316_var_α
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n326_assign_α
n321_binop_β:
                                                                                        jmp   n316_var_α
#-----------------------------------------------------------------------------------------------------------------------
n322_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n327_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n323_binop_α:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n328_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_integer_α:
                        mov              qword ptr [rbp + 1664], 6
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n329_binop_α
.Lx451_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n325_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n330_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n326_assign_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n316_var_α
#-----------------------------------------------------------------------------------------------------------------------
n327_subscript_α:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 1008]
                        mov              rcx, qword ptr [rbp + 1016]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n252_var_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n331_var_α
#-----------------------------------------------------------------------------------------------------------------------
n328_assign_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n332_var_α
#-----------------------------------------------------------------------------------------------------------------------
n329_binop_α:
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 100
                                                                                        je    .Lx456_0
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 6
                                                                                        jne   .Lx456_2
.Lx456_1:
                        mov              rax, qword ptr [rbp + 1656]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1632], 6
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n333_binop_α
.Lx456_0:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1664]
                        mov              rcx, qword ptr [rbp + 1672]
                        mov              r8d, 0
                        lea              r9, [rbp + 1632]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n333_binop_α
.Lx456_2:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1664]
                        mov              rcx, qword ptr [rbp + 1672]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n288_call_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n333_binop_α
n329_binop_β:
                                                                                        jmp   n288_call_α
#-----------------------------------------------------------------------------------------------------------------------
n330_binop_α:
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 100
                                                                                        je    .Lx457_0
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 100
                                                                                        je    .Lx457_0
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 6
                                                                                        jne   .Lx457_2
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 6
                                                                                        jne   .Lx457_2
.Lx457_1:
                        mov              rax, qword ptr [rbp + 1864]
                        mov              rcx, qword ptr [rbp + 1880]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1840], 6
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n334_binop_α
.Lx457_0:
                        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1872]
                        mov              rcx, qword ptr [rbp + 1880]
                        mov              r8d, 1
                        lea              r9, [rbp + 1840]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n334_binop_α
.Lx457_2:
                        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1872]
                        mov              rcx, qword ptr [rbp + 1880]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    main_γ
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n334_binop_α
n330_binop_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n335_lit_integer_α
#=======================================================================================================================
#     TOTAL = TOTAL + T<I>               :(ADD)
#-----------------------------------------------------------------------------------------------------------------------
n332_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n336_var_α
#-----------------------------------------------------------------------------------------------------------------------
n333_binop_α:
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        mov              rdx, qword ptr [rbp + 1632]
                        mov              rcx, qword ptr [rbp + 1640]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n337_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n334_binop_α:
                        mov              rdi, qword ptr [rbp + 1824]
                        mov              rsi, qword ptr [rbp + 1832]
                        mov              rdx, qword ptr [rbp + 1840]
                        mov              rcx, qword ptr [rbp + 1848]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n338_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n339_binop_α
.Lx462_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n340_var_α
#-----------------------------------------------------------------------------------------------------------------------
n337_assign_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n251_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n338_assign_α:
                        mov              rsi, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        mov              rdi, qword ptr [rip + .Lx465_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   main_γ
.Lx465_0:
                        .quad            .Lx465_0_s
.Lx465_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n339_binop_α:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 100
                                                                                        je    .Lx466_0
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 6
                                                                                        jne   .Lx466_2
.Lx466_1:
                        mov              rax, qword ptr [rbp + 1064]
                        mov              rcx, 0
                        add              rax, rcx
                        mov              qword ptr [rbp + 1040], 6
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n341_assign_var_α
.Lx466_0:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              r8d, 0
                        lea              r9, [rbp + 1040]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n341_assign_var_α
.Lx466_2:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n252_var_α
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n341_assign_var_α
n339_binop_β:
                                                                                        jmp   n252_var_α
#-----------------------------------------------------------------------------------------------------------------------
n340_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n342_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n341_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n252_var_α
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n252_var_α
#-----------------------------------------------------------------------------------------------------------------------
n342_subscript_α:
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              rdx, qword ptr [rbp + 1392]
                        mov              rcx, qword ptr [rbp + 1400]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n254_var_α
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n343_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n343_deref_α:
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n254_var_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n344_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n344_binop_α:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 100
                                                                                        je    .Lx471_0
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 100
                                                                                        je    .Lx471_0
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 6
                                                                                        jne   .Lx471_2
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 6
                                                                                        jne   .Lx471_2
.Lx471_1:
                        mov              rax, qword ptr [rbp + 1368]
                        mov              rcx, qword ptr [rbp + 1432]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1344], 6
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n345_assign_α
.Lx471_0:
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdx, qword ptr [rbp + 1424]
                        mov              rcx, qword ptr [rbp + 1432]
                        mov              r8d, 0
                        lea              r9, [rbp + 1344]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n345_assign_α
.Lx471_2:
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdx, qword ptr [rbp + 1424]
                        mov              rcx, qword ptr [rbp + 1432]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n254_var_α
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n345_assign_α
n344_binop_β:
                                                                                        jmp   n254_var_α
#-----------------------------------------------------------------------------------------------------------------------
n345_assign_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n254_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1888]
                        add              rsp, 1896
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1888]
                        add              rsp, 1896
                        ret
                        .section         .rodata
.S0:                    .string          "PAT"
.S1:                    .string          "WORD"
                        .text
                        .section         .note.GNU-stack,"",@progbits
