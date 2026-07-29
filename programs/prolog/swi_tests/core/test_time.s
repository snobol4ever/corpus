                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F1_α
proc_test$2F1_α:
                        .global          proc_test$2F1_α
                        .global          proc_test$2F1_β
                        .global          proc_test$2F1_γ
                        .global          proc_test$2F1_ω
                        sub              rsp, 1552
                        mov              [rsp + 1528], rcx
                        mov              [rsp + 1536], rdx
                        mov              [rsp + 1544], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1488
                        mov              edx, 1520
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F1_α_body:
                        lea              rax, [rip + n41_suspend_β]
                        mov              qword ptr [rbp + 1488], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx42_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx42_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx42_101
.Lx42_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx42_101:
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
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n3_op11_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "get_time"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1424]
                        mov              rsi, qword ptr [rip + .Lx46_2]
                                                                                        jmp   .Lx46_3
.Lx46_2:
                        .quad            .Lx46_2_s
.Lx46_2_s:
                        .string          "get_time"
.Lx46_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n6_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
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
n5_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx51_20
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx51_21
.Lx51_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        call             rt_arg_stage@PLT
.Lx51_21:
                        mov              rdi, qword ptr [rip + .Lx51_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx51_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx51_3]
                        lea              rdx, [rip + .Lx51_4]
                                                                                        jmp   rax
.Lx51_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx51_2
.Lx51_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx51_2
.Lx51_1:
                        call             rt_faildescr@PLT
.Lx51_2:
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n7_lit_string_α
n6_call_proc_staged_β:
                                                                                        jmp   n5_op11_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "get_time/1"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n8_var_ref_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n10_lit_string_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n11_lit_string_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n12_lit_string_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n13_lit_integer_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n14_lit_integer_α
.Lx59_0:
                        .quad            2024
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n15_op11_α
.Lx60_0:
                        .quad            1970
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   n16_lit_integer_α
n15_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 912], 6
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n17_op11_α
.Lx62_0:
                        .quad            365
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   n18_lit_integer_α
n17_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n19_op11_α
.Lx64_0:
                        .quad            24
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1056]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   n20_lit_integer_α
n19_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n21_op11_α
.Lx66_0:
                        .quad            3600
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1168]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   n22_op11_α
n21_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 776]
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
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n23_call_proc_staged_α
n22_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx70_20
                        mov              rax, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx70_21
.Lx70_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        call             rt_arg_stage@PLT
.Lx70_21:
                        mov              rdi, qword ptr [rip + .Lx70_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx70_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx70_3]
                        lea              rdx, [rip + .Lx70_4]
                                                                                        jmp   rax
.Lx70_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx70_2
.Lx70_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx70_2
.Lx70_1:
                        call             rt_faildescr@PLT
.Lx70_2:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n6_call_proc_staged_β
                                                                                        jmp   n24_lit_string_α
n23_call_proc_staged_β:
                                                                                        jmp   n6_call_proc_staged_β
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "assertion/1"
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n25_var_ref_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n27_lit_string_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n28_lit_string_α
.Lx75_0:
                        .quad            .Lx75_0_s
.Lx75_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n29_lit_string_α
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n30_lit_integer_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n31_lit_integer_α
.Lx78_0:
                        .quad            2050
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n32_op11_α
.Lx79_0:
                        .quad            1970
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
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
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   n33_lit_integer_α
n32_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n34_op11_α
.Lx81_0:
                        .quad            365
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   n35_lit_integer_α
n34_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n36_op11_α
.Lx83_0:
                        .quad            24
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   n37_lit_integer_α
n36_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n38_op11_α
.Lx85_0:
                        .quad            3600
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   n39_op11_α
n38_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n40_call_proc_staged_α
n39_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx89_20
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx89_21
.Lx89_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx89_21:
                        mov              rdi, qword ptr [rip + .Lx89_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx89_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx89_3]
                        lea              rdx, [rip + .Lx89_4]
                                                                                        jmp   rax
.Lx89_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx89_2
.Lx89_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx89_2
.Lx89_1:
                        call             rt_faildescr@PLT
.Lx89_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n23_call_proc_staged_β
                                                                                        jmp   n41_suspend_α
n40_call_proc_staged_β:
                                                                                        jmp   n23_call_proc_staged_β
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "assertion/1"
#-----------------------------------------------------------------------------------------------------------------------
n41_suspend_α:
                        lea              rax, [rip + n41_suspend_β]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F1_γ
n41_suspend_β:
                                                                                        jmp   n40_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_β:
                                                                                        jmp   qword ptr [rbp + 1488]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F1_res]
                        push             rax
                        mov              rax, [rbp + 1528]
                        mov              rbp, [rbp + 1544]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_ω:
                        mov              rax, [rbp + 1536]
                        lea              rsp, [rbp + 1552]
                        mov              rbp, [rbp + 1544]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
                        .global          proc_pj_test$2F4_α
                        .global          proc_pj_test$2F4_β
                        .global          proc_pj_test$2F4_γ
                        .global          proc_pj_test$2F4_ω
                        sub              rsp, 2128
                        mov              [rsp + 2104], rcx
                        mov              [rsp + 2112], rdx
                        mov              [rsp + 2120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2080
                        mov              edx, 2096
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_test$2F4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n92_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx150_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx150_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx150_101
.Lx150_100:
                        lea              rdi, [rbp + 128]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx150_101:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n93_var_ref_α
n92_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n94_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n95_op11_α
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          "time"
#-----------------------------------------------------------------------------------------------------------------------
n95_op11_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 2016]
                        mov              rsi, qword ptr [rip + .Lx154_2]
                                                                                        jmp   .Lx154_3
.Lx154_2:
                        .quad            .Lx154_2_s
.Lx154_2_s:
                        .string          "time"
.Lx154_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n96_var_ref_α
n95_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n98_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n97_op11_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   proc_pj_test$2F4_ω
n97_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n99_op11_α
.Lx158_0:
                        .quad            .Lx158_0_s
.Lx158_0_s:
                        .string          "get_time"
#-----------------------------------------------------------------------------------------------------------------------
n99_op11_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1944], rax
                        lea              rdi, [rbp + 1936]
                        mov              rsi, qword ptr [rip + .Lx159_2]
                                                                                        jmp   .Lx159_3
.Lx159_2:
                        .quad            .Lx159_2_s
.Lx159_2_s:
                        .string          "get_time"
.Lx159_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n100_var_ref_α
n99_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 1904], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n102_op11_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n102_op11_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1856]
                        mov              rsi, qword ptr [rip + .Lx163_2]
                                                                                        jmp   .Lx163_3
.Lx163_2:
                        .quad            .Lx163_2_s
.Lx163_2_s:
                        .string          "[]"
.Lx163_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n103_var_ref_α
n102_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n104_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n105_lit_string_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n106_var_ref_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "get_time"
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2080]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n107_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 272]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n108_lit_string_α
n107_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n109_lit_string_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n110_lit_string_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "assertion"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n111_var_ref_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2080]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n112_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n113_lit_string_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n114_lit_string_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n115_lit_string_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n116_lit_integer_α
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n117_lit_integer_α
.Lx180_0:
                        .quad            2024
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:
                        mov              qword ptr [rbp + 368], 6
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n118_op11_α
.Lx181_0:
                        .quad            1970
#-----------------------------------------------------------------------------------------------------------------------
n118_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n119_lit_integer_α
n118_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n120_op11_α
.Lx183_0:
                        .quad            365
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n121_lit_integer_α
n120_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n122_op11_α
.Lx185_0:
                        .quad            24
#-----------------------------------------------------------------------------------------------------------------------
n122_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n123_lit_integer_α
n122_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:
                        mov              qword ptr [rbp + 704], 6
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n124_op11_α
.Lx187_0:
                        .quad            3600
#-----------------------------------------------------------------------------------------------------------------------
n124_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 736]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n125_op11_α
n124_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n125_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n126_op11_α
n125_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n126_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n127_lit_string_α
n126_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n128_lit_string_α
.Lx191_0:
                        .quad            .Lx191_0_s
.Lx191_0_s:
                        .string          "assertion"
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n129_var_ref_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2080]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n131_lit_string_α
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n132_lit_string_α
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n133_lit_string_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n134_lit_integer_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n135_lit_integer_α
.Lx199_0:
                        .quad            2050
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n136_op11_α
.Lx200_0:
                        .quad            1970
#-----------------------------------------------------------------------------------------------------------------------
n136_op11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1056]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n137_lit_integer_α
n136_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n138_op11_α
.Lx202_0:
                        .quad            365
#-----------------------------------------------------------------------------------------------------------------------
n138_op11_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1168]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n139_lit_integer_α
n138_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:
                        mov              qword ptr [rbp + 1248], 6
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n140_op11_α
.Lx204_0:
                        .quad            24
#-----------------------------------------------------------------------------------------------------------------------
n140_op11_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1280]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n141_lit_integer_α
n140_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:
                        mov              qword ptr [rbp + 1360], 6
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n142_op11_α
.Lx206_0:
                        .quad            3600
#-----------------------------------------------------------------------------------------------------------------------
n142_op11_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n143_op11_α
n142_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n143_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1488]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n144_op11_α
n143_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n144_op11_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1584]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n145_op11_α
n144_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n145_op11_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n146_op11_α
n145_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n146_op11_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1800], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n147_op11_α
n146_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n147_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        lea              r8, [rbp + 192]
.Lx212_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx212_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx212_41
                        cmp              esi, 1
                                                                                        jne   .Lx212_55
                        mov              r8, rax
                                                                                        jmp   .Lx212_40
.Lx212_55:
                        cmp              esi, 2
                                                                                        jne   .Lx212_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx212_41
                        mov              r8, rax
                                                                                        jmp   .Lx212_40
.Lx212_56:
                        cmp              eax, 13
                                                                                        jne   .Lx212_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx212_41
                        cmp              rax, r8
                                                                                        je    .Lx212_41
                        mov              r8, rax
                                                                                        jmp   .Lx212_40
.Lx212_41:
                        lea              r9, [rbp + 208]
.Lx212_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx212_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx212_43
                        cmp              esi, 1
                                                                                        jne   .Lx212_57
                        mov              r9, rax
                                                                                        jmp   .Lx212_42
.Lx212_57:
                        cmp              esi, 2
                                                                                        jne   .Lx212_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx212_43
                        mov              r9, rax
                                                                                        jmp   .Lx212_42
.Lx212_58:
                        cmp              eax, 13
                                                                                        jne   .Lx212_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx212_43
                        cmp              rax, r9
                                                                                        je    .Lx212_43
                        mov              r9, rax
                                                                                        jmp   .Lx212_42
.Lx212_43:
                        cmp              r8, r9
                                                                                        je    .Lx212_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx212_44
                        cmp              eax, 99
                                                                                        je    .Lx212_44
                        cmp              eax, 13
                                                                                        jne   .Lx212_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx212_44
                                                                                        jmp   .Lx212_45
.Lx212_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx212_53
                        cmp              eax, 99
                                                                                        je    .Lx212_53
                        cmp              eax, 13
                                                                                        jne   .Lx212_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx212_53
                                                                                        jmp   .Lx212_46
.Lx212_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx212_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx212_53
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
                                                                                        jmp   .Lx212_51
.Lx212_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx212_47
                        cmp              eax, 99
                                                                                        je    .Lx212_47
                        cmp              eax, 13
                                                                                        jne   .Lx212_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx212_47
                                                                                        jmp   .Lx212_48
.Lx212_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx212_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx212_53
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
                                                                                        jmp   .Lx212_51
.Lx212_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx212_49
                        cmp              edx, 14
                                                                                        je    .Lx212_53
                                                                                        jmp   .Lx212_52
.Lx212_49:
                        cmp              edx, 14
                                                                                        je    .Lx212_52
                        cmp              ecx, 7
                                                                                        je    .Lx212_53
                        cmp              edx, 7
                                                                                        je    .Lx212_53
                        cmp              ecx, 6
                                                                                        jne   .Lx212_50
                        cmp              edx, 6
                                                                                        jne   .Lx212_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx212_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx212_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx212_51
                                                                                        jmp   .Lx212_52
.Lx212_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx212_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx212_53
.Lx212_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx212_54
.Lx212_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx212_54
.Lx212_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx212_54:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n97_op11_α
                                                                                        jmp   n148_move_label_α
n147_op11_β:
                                                                                        jmp   n97_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n148_move_label_α:
                        lea              rax, [rip + n97_op11_α]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   proc_pj_test$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n149_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 96]
n149_disjunction_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   n149_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2104]
                        lea              rsp, [rbp + 2128]
                        mov              rbp, [rbp + 2120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rax, [rbp + 2112]
                        lea              rsp, [rbp + 2128]
                        mov              rbp, [rbp + 2120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_dcα:
                        pop              r11
                        sub              rsp, 2144
                        mov              qword ptr [rsp + 2120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2096], r11
                        lea              rax, [rip + .Lx217_2]
                        mov              qword ptr [rbp + 2104], rax
                        lea              rax, [rip + .Lx217_3]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              qword ptr [rbp + 40], r8
                        mov              rdi, rbp
                        mov              esi, 2080
                        mov              edx, 2096
                        mov              ecx, 4
                        mov              r8d, 4
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_pj_test$2F4_α_body
.Lx217_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx217_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
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
                        lea              rax, [rip + n221_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n218_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx223_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx223_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx223_101
.Lx223_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx223_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n219_lit_string_α
n218_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n220_call_proc_staged_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "time"
#-----------------------------------------------------------------------------------------------------------------------
n220_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx226_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx226_21
.Lx226_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx226_21:
                        mov              rdi, qword ptr [rip + .Lx226_0]
                        mov              esi, 1
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
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n222_op11_α
                                                                                        jmp   n221_suspend_α
n220_call_proc_staged_β:
                                                                                        jmp   n222_op11_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n221_suspend_α:
                        lea              rax, [rip + n221_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n221_suspend_β:
                                                                                        jmp   n220_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n222_op11_α:
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
n222_op11_β:
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
                        lea              rax, [rip + n236_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n230_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx237_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx237_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx237_101
.Lx237_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx237_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n231_lit_string_α
n230_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n232_lit_string_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n233_op11_α
.Lx239_0:
                        .quad            .Lx239_0_s
.Lx239_0_s:
                        .string          "debug"
#-----------------------------------------------------------------------------------------------------------------------
n233_op11_α:
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
                                                                                        je    n235_op11_α
                                                                                        jmp   n234_call_proc_staged_α
n233_op11_β:
                                                                                        jmp   n235_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n234_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx242_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx242_21
.Lx242_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx242_21:
                        mov              rdi, qword ptr [rip + .Lx242_0]
                        mov              esi, 1
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
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n235_op11_α
                                                                                        jmp   n236_suspend_α
n234_call_proc_staged_β:
                                                                                        jmp   n235_op11_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n235_op11_α:
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
n235_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n236_suspend_α:
                        lea              rax, [rip + n236_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n236_suspend_β:
                                                                                        jmp   n234_call_proc_staged_β
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
                        lea              rax, [rip + n257_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n246_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx258_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx258_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx258_101
.Lx258_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx258_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n247_lit_string_α
n246_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n248_lit_string_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "test_time"
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n249_lit_string_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n250_lit_string_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n251_lit_integer_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "test_time"
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n252_op11_α
.Lx263_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n252_op11_α:
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
                                                                                        jmp   n253_lit_string_α
n252_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n254_op11_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n254_op11_α:
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
                                                                                        je    n256_op11_α
                                                                                        jmp   n255_call_proc_staged_α
n254_op11_β:
                                                                                        jmp   n256_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n255_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx268_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx268_21
.Lx268_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx268_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx268_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx268_23
.Lx268_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx268_23:
                        mov              rdi, qword ptr [rip + .Lx268_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx268_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx268_3]
                        lea              rdx, [rip + .Lx268_4]
                                                                                        jmp   rax
.Lx268_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx268_2
.Lx268_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx268_2
.Lx268_1:
                        call             rt_faildescr@PLT
.Lx268_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n256_op11_α
                                                                                        jmp   n257_suspend_α
n255_call_proc_staged_β:
                                                                                        jmp   n256_op11_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n256_op11_α:
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
n256_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n257_suspend_α:
                        lea              rax, [rip + n257_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n257_suspend_β:
                                                                                        jmp   n255_call_proc_staged_β
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
                        .globl           proc_test_time$2F0_α
proc_test_time$2F0_α:
                        .global          proc_test_time$2F0_α
                        .global          proc_test_time$2F0_β
                        .global          proc_test_time$2F0_γ
                        .global          proc_test_time$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_time$2F0_α_body:
                        lea              rax, [rip + n279_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n272_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx280_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx280_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx280_101
.Lx280_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx280_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_time$2F0_ω
                                                                                        jmp   n273_lit_string_α
n272_op11_β:
                                                                                        jmp   proc_test_time$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n274_lit_string_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n275_lit_string_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "time"
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n276_op11_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n276_op11_α:
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
                                                                                        je    n278_op11_α
                                                                                        jmp   n277_call_proc_staged_α
n276_op11_β:
                                                                                        jmp   n278_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n277_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx286_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx286_21
.Lx286_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx286_21:
                        mov              rdi, qword ptr [rip + .Lx286_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx286_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx286_3]
                        lea              rdx, [rip + .Lx286_4]
                                                                                        jmp   rax
.Lx286_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx286_2
.Lx286_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx286_2
.Lx286_1:
                        call             rt_faildescr@PLT
.Lx286_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n278_op11_α
                                                                                        jmp   n279_suspend_α
n277_call_proc_staged_β:
                                                                                        jmp   n278_op11_α
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n278_op11_α:
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
                                                                                        je    proc_test_time$2F0_ω
                                                                                        jmp   proc_test_time$2F0_ω
n278_op11_β:
                                                                                        jmp   proc_test_time$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n279_suspend_α:
                        lea              rax, [rip + n279_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_time$2F0_γ
n279_suspend_β:
                                                                                        jmp   n277_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_time$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_time$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_time$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_time$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_time$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_3$2F0_α
proc_pj_dir_3$2F0_α:
                        .global          proc_pj_dir_3$2F0_α
                        .global          proc_pj_dir_3$2F0_β
                        .global          proc_pj_dir_3$2F0_γ
                        .global          proc_pj_dir_3$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n293_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n290_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx295_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx295_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx295_101
.Lx295_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx295_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n291_lit_string_α
n290_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n292_call_proc_staged_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "time"
#-----------------------------------------------------------------------------------------------------------------------
n292_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx298_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx298_21
.Lx298_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx298_21:
                        mov              rdi, qword ptr [rip + .Lx298_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx298_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx298_3]
                        lea              rdx, [rip + .Lx298_4]
                                                                                        jmp   rax
.Lx298_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx298_2
.Lx298_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx298_2
.Lx298_1:
                        call             rt_faildescr@PLT
.Lx298_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n294_op11_α
                                                                                        jmp   n293_suspend_α
n292_call_proc_staged_β:
                                                                                        jmp   n294_op11_α
.Lx298_0:
                        .quad            .Lx298_0_s
.Lx298_0_s:
                        .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n293_suspend_α:
                        lea              rax, [rip + n293_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n293_suspend_β:
                                                                                        jmp   n292_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n294_op11_α:
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
n294_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_3$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
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
                        lea              rax, [rip + n308_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n302_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx309_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx309_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx309_101
.Lx309_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx309_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n303_lit_string_α
n302_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n304_lit_string_α
.Lx310_0:
                        .quad            .Lx310_0_s
.Lx310_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n305_op11_α
.Lx311_0:
                        .quad            .Lx311_0_s
.Lx311_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n305_op11_α:
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
                                                                                        je    n307_op11_α
                                                                                        jmp   n306_call_proc_staged_α
n305_op11_β:
                                                                                        jmp   n307_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n306_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx314_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx314_21
.Lx314_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx314_21:
                        mov              rdi, qword ptr [rip + .Lx314_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx314_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx314_3]
                        lea              rdx, [rip + .Lx314_4]
                                                                                        jmp   rax
.Lx314_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx314_2
.Lx314_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx314_2
.Lx314_1:
                        call             rt_faildescr@PLT
.Lx314_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n307_op11_α
                                                                                        jmp   n308_suspend_α
n306_call_proc_staged_β:
                                                                                        jmp   n307_op11_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n307_op11_α:
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
n307_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n308_suspend_α:
                        lea              rax, [rip + n308_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n308_suspend_β:
                                                                                        jmp   n306_call_proc_staged_β
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
                        mov              esi, 1520
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "pj_test/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_pj_test$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2096
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_pj_test$2F4_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "pj_dir_4/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_pj_dir_4$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "test_time/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_test_time$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
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
.Lstartup_pname7:       .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
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
n318_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n319_call_proc_staged_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "time"
#-----------------------------------------------------------------------------------------------------------------------
n319_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx322_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx322_21
.Lx322_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx322_21:
                        mov              rdi, qword ptr [rip + .Lx322_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx322_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx322_3]
                        lea              rdx, [rip + .Lx322_4]
                                                                                        jmp   rax
.Lx322_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx322_2
.Lx322_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx322_2
.Lx322_1:
                        call             rt_faildescr@PLT
.Lx322_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n319_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
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
