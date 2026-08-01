                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ops8$2F0_α
proc_ops8$2F0_α:
                        .global          proc_ops8$2F0_α
                        .global          proc_ops8$2F0_β
                        .global          proc_ops8$2F0_γ
                        .global          proc_ops8$2F0_ω
                        sub              rsp, 1072
                        mov              [rsp + 1048], rcx
                        mov              [rsp + 1056], rdx
                        mov              [rsp + 1064], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1008
                        mov              edx, 1040
                        call             rt_jmp_frame_lexprep2@PLT
proc_ops8$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx29_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx29_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx29_101
.Lx29_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx29_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_ops8$2F0_ω
                                                                                        jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              dword ptr [rbp + 964], 1
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n2_lit_string_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n3_lit_string_α
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              dword ptr [rbp + 180], 1
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n4_lit_integer_α
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n5_call_builtin_prolog_α
.Lx33_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_prolog_α:
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
                                                                                        je    proc_ops8$2F0_ω
                                                                                        jmp   n6_lit_string_α
n5_call_builtin_prolog_β:
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              dword ptr [rbp + 868], 1
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n7_lit_string_α
.Lx35_0:
                        .quad            .Lx35_0_s
.Lx35_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              dword ptr [rbp + 532], 1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n8_lit_string_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n9_lit_string_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n10_lit_integer_α
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n11_call_builtin_prolog_α
.Lx39_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    proc_ops8$2F0_ω
                                                                                        jmp   n12_lit_integer_α
n11_call_builtin_prolog_β:
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n13_call_builtin_prolog_α
.Lx41_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    proc_ops8$2F0_ω
                                                                                        jmp   n14_lit_string_α
n13_call_builtin_prolog_β:
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n15_lit_string_α
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              dword ptr [rbp + 660], 1
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n16_lit_string_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              dword ptr [rbp + 548], 1
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n17_lit_integer_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n18_call_builtin_prolog_α
.Lx46_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    proc_ops8$2F0_ω
                                                                                        jmp   n19_lit_integer_α
n18_call_builtin_prolog_β:
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n20_call_builtin_prolog_α
.Lx48_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    proc_ops8$2F0_ω
                                                                                        jmp   n21_call_builtin_prolog_α
n20_call_builtin_prolog_β:
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    proc_ops8$2F0_ω
                                                                                        jmp   n22_call_builtin_prolog_α
n21_call_builtin_prolog_β:
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n28_call_builtin_prolog_α
                                                                                        jmp   n23_lit_string_α
n22_call_builtin_prolog_β:
                                                                                        jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              dword ptr [rbp + 980], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n24_var_ref_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        add              rsp, 16
                                                                                        jmp   n25_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_proc_staged_α:
                        lea              rsi, [rbp + 880]
                        lea              rdx, [rbp + 976]
                        lea              rcx, [rbp + 992]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx56_2
.Lx56_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n28_call_builtin_prolog_α
                                                                                        jmp   n26_move_label_α
n25_call_proc_staged_β:
                                                                                        jmp   n28_call_builtin_prolog_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n26_move_label_α:
                        lea              rax, [rip + n25_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_ops8$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n27_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 16]
n27_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
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
                                                                                        je    proc_ops8$2F0_ω
                                                                                        jmp   proc_ops8$2F0_ω
n28_call_builtin_prolog_β:
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ops8$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_ops8$2F0_β:
                                                                                        jmp   n27_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_ops8$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1048]
                        lea              rsp, [rbp + 1072]
                        mov              rbp, [rbp + 1064]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ops8$2F0_ω:
                        mov              rax, [rbp + 1056]
                        lea              rsp, [rbp + 1072]
                        mov              rbp, [rbp + 1064]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ops8$2F0_dcα:
                        pop              r11
                        sub              rsp, 1088
                        mov              qword ptr [rsp + 1064], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1040], r11
                        lea              rax, [rip + .Lx62_2]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rax, [rip + .Lx62_3]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rdi, rbp
                        mov              esi, 1008
                        mov              edx, 1040
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_ops8$2F0_α_body
.Lx62_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1072
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx62_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1072
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_d$2F3_α
proc_d$2F3_α:
                        .global          proc_d$2F3_α
                        .global          proc_d$2F3_β
                        .global          proc_d$2F3_γ
                        .global          proc_d$2F3_ω
                        sub              rsp, 8272
                        mov              [rsp + 8248], rcx
                        mov              [rsp + 8256], rdx
                        mov              [rsp + 8264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 8128
                        mov              edx, 8240
                        call             rt_jmp_frame_lexprep2@PLT
proc_d$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx341_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx341_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx341_101
.Lx341_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx341_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n64_var_ref_α
n63_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 8080], rax
                        mov              qword ptr [rbp + 8088], rdx
                        add              rsp, 16
                                                                                        jmp   n65_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:
                        mov              qword ptr [rbp + 8096], 6
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rbp + 8104], rax
                                                                                        jmp   n66_lit_string_α
.Lx344_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 8112], 1
                        mov              dword ptr [rbp + 8116], 1
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rbp + 8120], rax
                                                                                        jmp   n67_call_builtin_prolog_α
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 8080]
                        mov              qword ptr [rbp + 8032], rax
                        mov              rax, qword ptr [rbp + 8088]
                        mov              qword ptr [rbp + 8040], rax
                        mov              rax, qword ptr [rbp + 8096]
                        mov              qword ptr [rbp + 8048], rax
                        mov              rax, qword ptr [rbp + 8104]
                        mov              qword ptr [rbp + 8056], rax
                        mov              rax, qword ptr [rbp + 8112]
                        mov              qword ptr [rbp + 8064], rax
                        mov              rax, qword ptr [rbp + 8120]
                        mov              qword ptr [rbp + 8072], rax
                        lea              rdi, [rbp + 8032]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 8016], rax
                        mov              qword ptr [rbp + 8024], rdx
                        cmp              eax, 99
                                                                                        je    n94_var_ref_α
                                                                                        jmp   n68_var_ref_α
n67_call_builtin_prolog_β:
                                                                                        jmp   n94_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7872], rax
                        mov              qword ptr [rbp + 7880], rdx
                        add              rsp, 16
                                                                                        jmp   n69_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 8000], 1
                        mov              dword ptr [rbp + 8004], 1
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rbp + 8008], rax
                                                                                        jmp   n70_var_ref_α
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7888], rax
                        mov              qword ptr [rbp + 7896], rdx
                        add              rsp, 16
                                                                                        jmp   n71_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7904], rax
                        mov              qword ptr [rbp + 7912], rdx
                        add              rsp, 16
                                                                                        jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 8000]
                        mov              qword ptr [rbp + 7936], rax
                        mov              rax, qword ptr [rbp + 8008]
                        mov              qword ptr [rbp + 7944], rax
                        mov              rax, qword ptr [rbp + 7888]
                        mov              qword ptr [rbp + 7952], rax
                        mov              rax, qword ptr [rbp + 7896]
                        mov              qword ptr [rbp + 7960], rax
                        mov              rax, qword ptr [rbp + 7904]
                        mov              qword ptr [rbp + 7968], rax
                        mov              rax, qword ptr [rbp + 7912]
                        mov              qword ptr [rbp + 7976], rax
                        lea              rdi, [rbp + 7936]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 7920], rax
                        mov              qword ptr [rbp + 7928], rdx
                        cmp              eax, 99
                                                                                        je    n93_call_builtin_prolog_α
                                                                                        jmp   n73_call_builtin_prolog_α
n72_call_builtin_prolog_β:
                                                                                        jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7872]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 7880]
                        mov              qword ptr [rbp + 7848], rax
                        mov              rax, qword ptr [rbp + 7920]
                        mov              qword ptr [rbp + 7856], rax
                        mov              rax, qword ptr [rbp + 7928]
                        mov              qword ptr [rbp + 7864], rax
                        lea              rdi, [rbp + 7840]
                        lea              r8, [rbp + 7840]
.Lx355_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx355_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx355_41
                        cmp              esi, 1
                                                                                        jne   .Lx355_55
                        mov              r8, rax
                                                                                        jmp   .Lx355_40
.Lx355_55:
                        cmp              esi, 2
                                                                                        jne   .Lx355_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx355_41
                        mov              r8, rax
                                                                                        jmp   .Lx355_40
.Lx355_56:
                        cmp              eax, 13
                                                                                        jne   .Lx355_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx355_41
                        cmp              rax, r8
                                                                                        je    .Lx355_41
                        mov              r8, rax
                                                                                        jmp   .Lx355_40
.Lx355_41:
                        lea              r9, [rbp + 7856]
.Lx355_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx355_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx355_43
                        cmp              esi, 1
                                                                                        jne   .Lx355_57
                        mov              r9, rax
                                                                                        jmp   .Lx355_42
.Lx355_57:
                        cmp              esi, 2
                                                                                        jne   .Lx355_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx355_43
                        mov              r9, rax
                                                                                        jmp   .Lx355_42
.Lx355_58:
                        cmp              eax, 13
                                                                                        jne   .Lx355_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx355_43
                        cmp              rax, r9
                                                                                        je    .Lx355_43
                        mov              r9, rax
                                                                                        jmp   .Lx355_42
.Lx355_43:
                        cmp              r8, r9
                                                                                        je    .Lx355_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx355_44
                        cmp              eax, 99
                                                                                        je    .Lx355_44
                        cmp              eax, 13
                                                                                        jne   .Lx355_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx355_44
                                                                                        jmp   .Lx355_45
.Lx355_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx355_53
                        cmp              eax, 99
                                                                                        je    .Lx355_53
                        cmp              eax, 13
                                                                                        jne   .Lx355_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx355_53
                                                                                        jmp   .Lx355_46
.Lx355_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx355_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx355_53
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
                                                                                        jmp   .Lx355_51
.Lx355_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx355_47
                        cmp              eax, 99
                                                                                        je    .Lx355_47
                        cmp              eax, 13
                                                                                        jne   .Lx355_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx355_47
                                                                                        jmp   .Lx355_48
.Lx355_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx355_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx355_53
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
                                                                                        jmp   .Lx355_51
.Lx355_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx355_49
                        cmp              edx, 14
                                                                                        je    .Lx355_53
                                                                                        jmp   .Lx355_52
.Lx355_49:
                        cmp              edx, 14
                                                                                        je    .Lx355_52
                        cmp              ecx, 7
                                                                                        je    .Lx355_53
                        cmp              edx, 7
                                                                                        je    .Lx355_53
                        cmp              ecx, 6
                                                                                        jne   .Lx355_50
                        cmp              edx, 6
                                                                                        jne   .Lx355_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx355_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx355_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx355_51
                                                                                        jmp   .Lx355_52
.Lx355_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx355_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx355_53
.Lx355_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx355_54
.Lx355_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx355_54
.Lx355_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx355_54:
                        mov              qword ptr [rbp + 7824], rax
                        mov              qword ptr [rbp + 7832], rdx
                        cmp              eax, 99
                                                                                        je    n93_call_builtin_prolog_α
                                                                                        jmp   n74_var_ref_α
n73_call_builtin_prolog_β:
                                                                                        jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7792], rax
                        mov              qword ptr [rbp + 7800], rdx
                        add              rsp, 16
                                                                                        jmp   n75_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7808], rax
                        mov              qword ptr [rbp + 7816], rdx
                        add              rsp, 16
                                                                                        jmp   n76_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7792]
                        mov              qword ptr [rbp + 7760], rax
                        mov              rax, qword ptr [rbp + 7800]
                        mov              qword ptr [rbp + 7768], rax
                        mov              rax, qword ptr [rbp + 7808]
                        mov              qword ptr [rbp + 7776], rax
                        mov              rax, qword ptr [rbp + 7816]
                        mov              qword ptr [rbp + 7784], rax
                        lea              rdi, [rbp + 7760]
                        lea              r8, [rbp + 7760]
.Lx360_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx360_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx360_41
                        cmp              esi, 1
                                                                                        jne   .Lx360_55
                        mov              r8, rax
                                                                                        jmp   .Lx360_40
.Lx360_55:
                        cmp              esi, 2
                                                                                        jne   .Lx360_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx360_41
                        mov              r8, rax
                                                                                        jmp   .Lx360_40
.Lx360_56:
                        cmp              eax, 13
                                                                                        jne   .Lx360_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx360_41
                        cmp              rax, r8
                                                                                        je    .Lx360_41
                        mov              r8, rax
                                                                                        jmp   .Lx360_40
.Lx360_41:
                        lea              r9, [rbp + 7776]
.Lx360_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx360_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx360_43
                        cmp              esi, 1
                                                                                        jne   .Lx360_57
                        mov              r9, rax
                                                                                        jmp   .Lx360_42
.Lx360_57:
                        cmp              esi, 2
                                                                                        jne   .Lx360_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx360_43
                        mov              r9, rax
                                                                                        jmp   .Lx360_42
.Lx360_58:
                        cmp              eax, 13
                                                                                        jne   .Lx360_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx360_43
                        cmp              rax, r9
                                                                                        je    .Lx360_43
                        mov              r9, rax
                                                                                        jmp   .Lx360_42
.Lx360_43:
                        cmp              r8, r9
                                                                                        je    .Lx360_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx360_44
                        cmp              eax, 99
                                                                                        je    .Lx360_44
                        cmp              eax, 13
                                                                                        jne   .Lx360_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx360_44
                                                                                        jmp   .Lx360_45
.Lx360_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx360_53
                        cmp              eax, 99
                                                                                        je    .Lx360_53
                        cmp              eax, 13
                                                                                        jne   .Lx360_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx360_53
                                                                                        jmp   .Lx360_46
.Lx360_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx360_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx360_53
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
                                                                                        jmp   .Lx360_51
.Lx360_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx360_47
                        cmp              eax, 99
                                                                                        je    .Lx360_47
                        cmp              eax, 13
                                                                                        jne   .Lx360_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx360_47
                                                                                        jmp   .Lx360_48
.Lx360_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx360_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx360_53
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
                                                                                        jmp   .Lx360_51
.Lx360_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx360_49
                        cmp              edx, 14
                                                                                        je    .Lx360_53
                                                                                        jmp   .Lx360_52
.Lx360_49:
                        cmp              edx, 14
                                                                                        je    .Lx360_52
                        cmp              ecx, 7
                                                                                        je    .Lx360_53
                        cmp              edx, 7
                                                                                        je    .Lx360_53
                        cmp              ecx, 6
                                                                                        jne   .Lx360_50
                        cmp              edx, 6
                                                                                        jne   .Lx360_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx360_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx360_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx360_51
                                                                                        jmp   .Lx360_52
.Lx360_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx360_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx360_53
.Lx360_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx360_54
.Lx360_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx360_54
.Lx360_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx360_54:
                        mov              qword ptr [rbp + 7744], rax
                        mov              qword ptr [rbp + 7752], rdx
                        cmp              eax, 99
                                                                                        je    n93_call_builtin_prolog_α
                                                                                        jmp   n77_var_ref_α
n76_call_builtin_prolog_β:
                                                                                        jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7600], rax
                        mov              qword ptr [rbp + 7608], rdx
                        add              rsp, 16
                                                                                        jmp   n78_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 7728], 1
                        mov              dword ptr [rbp + 7732], 1
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rbp + 7736], rax
                                                                                        jmp   n79_var_ref_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 7616], rax
                        mov              qword ptr [rbp + 7624], rdx
                        add              rsp, 16
                                                                                        jmp   n80_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx
                        add              rsp, 16
                                                                                        jmp   n81_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7728]
                        mov              qword ptr [rbp + 7664], rax
                        mov              rax, qword ptr [rbp + 7736]
                        mov              qword ptr [rbp + 7672], rax
                        mov              rax, qword ptr [rbp + 7616]
                        mov              qword ptr [rbp + 7680], rax
                        mov              rax, qword ptr [rbp + 7624]
                        mov              qword ptr [rbp + 7688], rax
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 7696], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 7704], rax
                        lea              rdi, [rbp + 7664]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                        cmp              eax, 99
                                                                                        je    n93_call_builtin_prolog_α
                                                                                        jmp   n82_call_builtin_prolog_α
n81_call_builtin_prolog_β:
                                                                                        jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7600]
                        mov              qword ptr [rbp + 7568], rax
                        mov              rax, qword ptr [rbp + 7608]
                        mov              qword ptr [rbp + 7576], rax
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 7584], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 7592], rax
                        lea              rdi, [rbp + 7568]
                        lea              r8, [rbp + 7568]
.Lx369_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx369_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx369_41
                        cmp              esi, 1
                                                                                        jne   .Lx369_55
                        mov              r8, rax
                                                                                        jmp   .Lx369_40
.Lx369_55:
                        cmp              esi, 2
                                                                                        jne   .Lx369_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx369_41
                        mov              r8, rax
                                                                                        jmp   .Lx369_40
.Lx369_56:
                        cmp              eax, 13
                                                                                        jne   .Lx369_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx369_41
                        cmp              rax, r8
                                                                                        je    .Lx369_41
                        mov              r8, rax
                                                                                        jmp   .Lx369_40
.Lx369_41:
                        lea              r9, [rbp + 7584]
.Lx369_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx369_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx369_43
                        cmp              esi, 1
                                                                                        jne   .Lx369_57
                        mov              r9, rax
                                                                                        jmp   .Lx369_42
.Lx369_57:
                        cmp              esi, 2
                                                                                        jne   .Lx369_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx369_43
                        mov              r9, rax
                                                                                        jmp   .Lx369_42
.Lx369_58:
                        cmp              eax, 13
                                                                                        jne   .Lx369_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx369_43
                        cmp              rax, r9
                                                                                        je    .Lx369_43
                        mov              r9, rax
                                                                                        jmp   .Lx369_42
.Lx369_43:
                        cmp              r8, r9
                                                                                        je    .Lx369_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx369_44
                        cmp              eax, 99
                                                                                        je    .Lx369_44
                        cmp              eax, 13
                                                                                        jne   .Lx369_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx369_44
                                                                                        jmp   .Lx369_45
.Lx369_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx369_53
                        cmp              eax, 99
                                                                                        je    .Lx369_53
                        cmp              eax, 13
                                                                                        jne   .Lx369_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx369_53
                                                                                        jmp   .Lx369_46
.Lx369_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx369_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx369_53
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
                                                                                        jmp   .Lx369_51
.Lx369_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx369_47
                        cmp              eax, 99
                                                                                        je    .Lx369_47
                        cmp              eax, 13
                                                                                        jne   .Lx369_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx369_47
                                                                                        jmp   .Lx369_48
.Lx369_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx369_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx369_53
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
                                                                                        jmp   .Lx369_51
.Lx369_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx369_49
                        cmp              edx, 14
                                                                                        je    .Lx369_53
                                                                                        jmp   .Lx369_52
.Lx369_49:
                        cmp              edx, 14
                                                                                        je    .Lx369_52
                        cmp              ecx, 7
                                                                                        je    .Lx369_53
                        cmp              edx, 7
                                                                                        je    .Lx369_53
                        cmp              ecx, 6
                                                                                        jne   .Lx369_50
                        cmp              edx, 6
                                                                                        jne   .Lx369_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx369_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx369_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx369_51
                                                                                        jmp   .Lx369_52
.Lx369_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx369_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx369_53
.Lx369_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx369_54
.Lx369_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx369_54
.Lx369_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx369_54:
                        mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                        cmp              eax, 99
                                                                                        je    n93_call_builtin_prolog_α
                                                                                        jmp   n83_cut_α
n82_call_builtin_prolog_β:
                                                                                        jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_cut_α:
                                                                                        jmp   n84_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7504], rax
                        mov              qword ptr [rbp + 7512], rdx
                        add              rsp, 16
                                                                                        jmp   n85_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx
                        add              rsp, 16
                                                                                        jmp   n86_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx
                        add              rsp, 16
                                                                                        jmp   n87_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_proc_staged_α:
                        lea              rsi, [rbp + 7504]
                        lea              rdx, [rbp + 7520]
                        lea              rcx, [rbp + 7536]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx378_2
.Lx378_2:
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                        cmp              eax, 99
                                                                                        je    n340_call_builtin_prolog_α
                                                                                        jmp   n88_var_ref_α
n87_call_proc_staged_β:
                                                                                        jmp   n340_call_builtin_prolog_α
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7376], rax
                        mov              qword ptr [rbp + 7384], rdx
                        add              rsp, 16
                                                                                        jmp   n89_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx
                        add              rsp, 16
                                                                                        jmp   n90_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 7408], rax
                        mov              qword ptr [rbp + 7416], rdx
                        add              rsp, 16
                                                                                        jmp   n91_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_proc_staged_α:
                        lea              rsi, [rbp + 7376]
                        lea              rdx, [rbp + 7392]
                        lea              rcx, [rbp + 7408]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx386_2
.Lx386_2:
                        mov              qword ptr [rbp + 7296], rax
                        mov              qword ptr [rbp + 7304], rdx
                        cmp              eax, 99
                                                                                        je    n87_call_proc_staged_β
                                                                                        jmp   n92_move_label_α
n91_call_proc_staged_β:
                                                                                        jmp   n87_call_proc_staged_β
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n92_move_label_α:
                        lea              rax, [rip + n91_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 7280], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 7288], rax
                        lea              rdi, [rbp + 7280]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 7264], rax
                        mov              qword ptr [rbp + 7272], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n94_var_ref_α
n93_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7216], rax
                        mov              qword ptr [rbp + 7224], rdx
                        add              rsp, 16
                                                                                        jmp   n95_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        mov              qword ptr [rbp + 7232], 6
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n96_lit_string_α
.Lx392_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 7248], 1
                        mov              dword ptr [rbp + 7252], 1
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rbp + 7256], rax
                                                                                        jmp   n97_call_builtin_prolog_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7216]
                        mov              qword ptr [rbp + 7168], rax
                        mov              rax, qword ptr [rbp + 7224]
                        mov              qword ptr [rbp + 7176], rax
                        mov              rax, qword ptr [rbp + 7232]
                        mov              qword ptr [rbp + 7184], rax
                        mov              rax, qword ptr [rbp + 7240]
                        mov              qword ptr [rbp + 7192], rax
                        mov              rax, qword ptr [rbp + 7248]
                        mov              qword ptr [rbp + 7200], rax
                        mov              rax, qword ptr [rbp + 7256]
                        mov              qword ptr [rbp + 7208], rax
                        lea              rdi, [rbp + 7168]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 7152], rax
                        mov              qword ptr [rbp + 7160], rdx
                        cmp              eax, 99
                                                                                        je    n124_var_ref_α
                                                                                        jmp   n98_var_ref_α
n97_call_builtin_prolog_β:
                                                                                        jmp   n124_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7008], rax
                        mov              qword ptr [rbp + 7016], rdx
                        add              rsp, 16
                                                                                        jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 7136], 1
                        mov              dword ptr [rbp + 7140], 1
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rbp + 7144], rax
                                                                                        jmp   n100_var_ref_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7024], rax
                        mov              qword ptr [rbp + 7032], rdx
                        add              rsp, 16
                                                                                        jmp   n101_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7040], rax
                        mov              qword ptr [rbp + 7048], rdx
                        add              rsp, 16
                                                                                        jmp   n102_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7136]
                        mov              qword ptr [rbp + 7072], rax
                        mov              rax, qword ptr [rbp + 7144]
                        mov              qword ptr [rbp + 7080], rax
                        mov              rax, qword ptr [rbp + 7024]
                        mov              qword ptr [rbp + 7088], rax
                        mov              rax, qword ptr [rbp + 7032]
                        mov              qword ptr [rbp + 7096], rax
                        mov              rax, qword ptr [rbp + 7040]
                        mov              qword ptr [rbp + 7104], rax
                        mov              rax, qword ptr [rbp + 7048]
                        mov              qword ptr [rbp + 7112], rax
                        lea              rdi, [rbp + 7072]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 7056], rax
                        mov              qword ptr [rbp + 7064], rdx
                        cmp              eax, 99
                                                                                        je    n123_call_builtin_prolog_α
                                                                                        jmp   n103_call_builtin_prolog_α
n102_call_builtin_prolog_β:
                                                                                        jmp   n123_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7008]
                        mov              qword ptr [rbp + 6976], rax
                        mov              rax, qword ptr [rbp + 7016]
                        mov              qword ptr [rbp + 6984], rax
                        mov              rax, qword ptr [rbp + 7056]
                        mov              qword ptr [rbp + 6992], rax
                        mov              rax, qword ptr [rbp + 7064]
                        mov              qword ptr [rbp + 7000], rax
                        lea              rdi, [rbp + 6976]
                        lea              r8, [rbp + 6976]
.Lx403_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx403_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx403_41
                        cmp              esi, 1
                                                                                        jne   .Lx403_55
                        mov              r8, rax
                                                                                        jmp   .Lx403_40
.Lx403_55:
                        cmp              esi, 2
                                                                                        jne   .Lx403_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx403_41
                        mov              r8, rax
                                                                                        jmp   .Lx403_40
.Lx403_56:
                        cmp              eax, 13
                                                                                        jne   .Lx403_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx403_41
                        cmp              rax, r8
                                                                                        je    .Lx403_41
                        mov              r8, rax
                                                                                        jmp   .Lx403_40
.Lx403_41:
                        lea              r9, [rbp + 6992]
.Lx403_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx403_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx403_43
                        cmp              esi, 1
                                                                                        jne   .Lx403_57
                        mov              r9, rax
                                                                                        jmp   .Lx403_42
.Lx403_57:
                        cmp              esi, 2
                                                                                        jne   .Lx403_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx403_43
                        mov              r9, rax
                                                                                        jmp   .Lx403_42
.Lx403_58:
                        cmp              eax, 13
                                                                                        jne   .Lx403_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx403_43
                        cmp              rax, r9
                                                                                        je    .Lx403_43
                        mov              r9, rax
                                                                                        jmp   .Lx403_42
.Lx403_43:
                        cmp              r8, r9
                                                                                        je    .Lx403_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx403_44
                        cmp              eax, 99
                                                                                        je    .Lx403_44
                        cmp              eax, 13
                                                                                        jne   .Lx403_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx403_44
                                                                                        jmp   .Lx403_45
.Lx403_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx403_53
                        cmp              eax, 99
                                                                                        je    .Lx403_53
                        cmp              eax, 13
                                                                                        jne   .Lx403_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx403_53
                                                                                        jmp   .Lx403_46
.Lx403_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx403_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx403_53
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
                                                                                        jmp   .Lx403_51
.Lx403_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx403_47
                        cmp              eax, 99
                                                                                        je    .Lx403_47
                        cmp              eax, 13
                                                                                        jne   .Lx403_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx403_47
                                                                                        jmp   .Lx403_48
.Lx403_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx403_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx403_53
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
                                                                                        jmp   .Lx403_51
.Lx403_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx403_49
                        cmp              edx, 14
                                                                                        je    .Lx403_53
                                                                                        jmp   .Lx403_52
.Lx403_49:
                        cmp              edx, 14
                                                                                        je    .Lx403_52
                        cmp              ecx, 7
                                                                                        je    .Lx403_53
                        cmp              edx, 7
                                                                                        je    .Lx403_53
                        cmp              ecx, 6
                                                                                        jne   .Lx403_50
                        cmp              edx, 6
                                                                                        jne   .Lx403_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx403_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx403_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx403_51
                                                                                        jmp   .Lx403_52
.Lx403_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx403_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx403_53
.Lx403_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx403_54
.Lx403_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx403_54
.Lx403_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx403_54:
                        mov              qword ptr [rbp + 6960], rax
                        mov              qword ptr [rbp + 6968], rdx
                        cmp              eax, 99
                                                                                        je    n123_call_builtin_prolog_α
                                                                                        jmp   n104_var_ref_α
n103_call_builtin_prolog_β:
                                                                                        jmp   n123_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6928], rax
                        mov              qword ptr [rbp + 6936], rdx
                        add              rsp, 16
                                                                                        jmp   n105_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx
                        add              rsp, 16
                                                                                        jmp   n106_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6928]
                        mov              qword ptr [rbp + 6896], rax
                        mov              rax, qword ptr [rbp + 6936]
                        mov              qword ptr [rbp + 6904], rax
                        mov              rax, qword ptr [rbp + 6944]
                        mov              qword ptr [rbp + 6912], rax
                        mov              rax, qword ptr [rbp + 6952]
                        mov              qword ptr [rbp + 6920], rax
                        lea              rdi, [rbp + 6896]
                        lea              r8, [rbp + 6896]
.Lx408_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx408_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx408_41
                        cmp              esi, 1
                                                                                        jne   .Lx408_55
                        mov              r8, rax
                                                                                        jmp   .Lx408_40
.Lx408_55:
                        cmp              esi, 2
                                                                                        jne   .Lx408_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx408_41
                        mov              r8, rax
                                                                                        jmp   .Lx408_40
.Lx408_56:
                        cmp              eax, 13
                                                                                        jne   .Lx408_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx408_41
                        cmp              rax, r8
                                                                                        je    .Lx408_41
                        mov              r8, rax
                                                                                        jmp   .Lx408_40
.Lx408_41:
                        lea              r9, [rbp + 6912]
.Lx408_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx408_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx408_43
                        cmp              esi, 1
                                                                                        jne   .Lx408_57
                        mov              r9, rax
                                                                                        jmp   .Lx408_42
.Lx408_57:
                        cmp              esi, 2
                                                                                        jne   .Lx408_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx408_43
                        mov              r9, rax
                                                                                        jmp   .Lx408_42
.Lx408_58:
                        cmp              eax, 13
                                                                                        jne   .Lx408_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx408_43
                        cmp              rax, r9
                                                                                        je    .Lx408_43
                        mov              r9, rax
                                                                                        jmp   .Lx408_42
.Lx408_43:
                        cmp              r8, r9
                                                                                        je    .Lx408_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx408_44
                        cmp              eax, 99
                                                                                        je    .Lx408_44
                        cmp              eax, 13
                                                                                        jne   .Lx408_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx408_44
                                                                                        jmp   .Lx408_45
.Lx408_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx408_53
                        cmp              eax, 99
                                                                                        je    .Lx408_53
                        cmp              eax, 13
                                                                                        jne   .Lx408_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx408_53
                                                                                        jmp   .Lx408_46
.Lx408_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx408_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx408_53
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
                                                                                        jmp   .Lx408_51
.Lx408_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx408_47
                        cmp              eax, 99
                                                                                        je    .Lx408_47
                        cmp              eax, 13
                                                                                        jne   .Lx408_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx408_47
                                                                                        jmp   .Lx408_48
.Lx408_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx408_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx408_53
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
                                                                                        jmp   .Lx408_51
.Lx408_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx408_49
                        cmp              edx, 14
                                                                                        je    .Lx408_53
                                                                                        jmp   .Lx408_52
.Lx408_49:
                        cmp              edx, 14
                                                                                        je    .Lx408_52
                        cmp              ecx, 7
                                                                                        je    .Lx408_53
                        cmp              edx, 7
                                                                                        je    .Lx408_53
                        cmp              ecx, 6
                                                                                        jne   .Lx408_50
                        cmp              edx, 6
                                                                                        jne   .Lx408_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx408_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx408_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx408_51
                                                                                        jmp   .Lx408_52
.Lx408_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx408_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx408_53
.Lx408_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx408_54
.Lx408_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx408_54
.Lx408_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx408_54:
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx
                        cmp              eax, 99
                                                                                        je    n123_call_builtin_prolog_α
                                                                                        jmp   n107_var_ref_α
n106_call_builtin_prolog_β:
                                                                                        jmp   n123_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx
                        add              rsp, 16
                                                                                        jmp   n108_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rbp + 6864], 1
                        mov              dword ptr [rbp + 6868], 1
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rbp + 6872], rax
                                                                                        jmp   n109_var_ref_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx
                        add              rsp, 16
                                                                                        jmp   n110_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 6768], rax
                        mov              qword ptr [rbp + 6776], rdx
                        add              rsp, 16
                                                                                        jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6864]
                        mov              qword ptr [rbp + 6800], rax
                        mov              rax, qword ptr [rbp + 6872]
                        mov              qword ptr [rbp + 6808], rax
                        mov              rax, qword ptr [rbp + 6752]
                        mov              qword ptr [rbp + 6816], rax
                        mov              rax, qword ptr [rbp + 6760]
                        mov              qword ptr [rbp + 6824], rax
                        mov              rax, qword ptr [rbp + 6768]
                        mov              qword ptr [rbp + 6832], rax
                        mov              rax, qword ptr [rbp + 6776]
                        mov              qword ptr [rbp + 6840], rax
                        lea              rdi, [rbp + 6800]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                        cmp              eax, 99
                                                                                        je    n123_call_builtin_prolog_α
                                                                                        jmp   n112_call_builtin_prolog_α
n111_call_builtin_prolog_β:
                                                                                        jmp   n123_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6736]
                        mov              qword ptr [rbp + 6704], rax
                        mov              rax, qword ptr [rbp + 6744]
                        mov              qword ptr [rbp + 6712], rax
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 6720], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 6728], rax
                        lea              rdi, [rbp + 6704]
                        lea              r8, [rbp + 6704]
.Lx417_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx417_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx417_41
                        cmp              esi, 1
                                                                                        jne   .Lx417_55
                        mov              r8, rax
                                                                                        jmp   .Lx417_40
.Lx417_55:
                        cmp              esi, 2
                                                                                        jne   .Lx417_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx417_41
                        mov              r8, rax
                                                                                        jmp   .Lx417_40
.Lx417_56:
                        cmp              eax, 13
                                                                                        jne   .Lx417_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx417_41
                        cmp              rax, r8
                                                                                        je    .Lx417_41
                        mov              r8, rax
                                                                                        jmp   .Lx417_40
.Lx417_41:
                        lea              r9, [rbp + 6720]
.Lx417_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx417_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx417_43
                        cmp              esi, 1
                                                                                        jne   .Lx417_57
                        mov              r9, rax
                                                                                        jmp   .Lx417_42
.Lx417_57:
                        cmp              esi, 2
                                                                                        jne   .Lx417_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx417_43
                        mov              r9, rax
                                                                                        jmp   .Lx417_42
.Lx417_58:
                        cmp              eax, 13
                                                                                        jne   .Lx417_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx417_43
                        cmp              rax, r9
                                                                                        je    .Lx417_43
                        mov              r9, rax
                                                                                        jmp   .Lx417_42
.Lx417_43:
                        cmp              r8, r9
                                                                                        je    .Lx417_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx417_44
                        cmp              eax, 99
                                                                                        je    .Lx417_44
                        cmp              eax, 13
                                                                                        jne   .Lx417_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx417_44
                                                                                        jmp   .Lx417_45
.Lx417_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx417_53
                        cmp              eax, 99
                                                                                        je    .Lx417_53
                        cmp              eax, 13
                                                                                        jne   .Lx417_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx417_53
                                                                                        jmp   .Lx417_46
.Lx417_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx417_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx417_53
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
                                                                                        jmp   .Lx417_51
.Lx417_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx417_47
                        cmp              eax, 99
                                                                                        je    .Lx417_47
                        cmp              eax, 13
                                                                                        jne   .Lx417_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx417_47
                                                                                        jmp   .Lx417_48
.Lx417_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx417_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx417_53
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
                                                                                        jmp   .Lx417_51
.Lx417_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx417_49
                        cmp              edx, 14
                                                                                        je    .Lx417_53
                                                                                        jmp   .Lx417_52
.Lx417_49:
                        cmp              edx, 14
                                                                                        je    .Lx417_52
                        cmp              ecx, 7
                                                                                        je    .Lx417_53
                        cmp              edx, 7
                                                                                        je    .Lx417_53
                        cmp              ecx, 6
                                                                                        jne   .Lx417_50
                        cmp              edx, 6
                                                                                        jne   .Lx417_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx417_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx417_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx417_51
                                                                                        jmp   .Lx417_52
.Lx417_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx417_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx417_53
.Lx417_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx417_54
.Lx417_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx417_54
.Lx417_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx417_54:
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                        cmp              eax, 99
                                                                                        je    n123_call_builtin_prolog_α
                                                                                        jmp   n113_cut_α
n112_call_builtin_prolog_β:
                                                                                        jmp   n123_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n113_cut_α:
                                                                                        jmp   n114_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 6640], rax
                        mov              qword ptr [rbp + 6648], rdx
                        add              rsp, 16
                                                                                        jmp   n115_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6656], rax
                        mov              qword ptr [rbp + 6664], rdx
                        add              rsp, 16
                                                                                        jmp   n116_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 6672], rax
                        mov              qword ptr [rbp + 6680], rdx
                        add              rsp, 16
                                                                                        jmp   n117_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n117_call_proc_staged_α:
                        lea              rsi, [rbp + 6640]
                        lea              rdx, [rbp + 6656]
                        lea              rcx, [rbp + 6672]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx426_2
.Lx426_2:
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx
                        cmp              eax, 99
                                                                                        je    n340_call_builtin_prolog_α
                                                                                        jmp   n118_var_ref_α
n117_call_proc_staged_β:
                                                                                        jmp   n340_call_builtin_prolog_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx
                        add              rsp, 16
                                                                                        jmp   n119_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx
                        add              rsp, 16
                                                                                        jmp   n120_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx
                        add              rsp, 16
                                                                                        jmp   n121_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_proc_staged_α:
                        lea              rsi, [rbp + 6512]
                        lea              rdx, [rbp + 6528]
                        lea              rcx, [rbp + 6544]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx434_2
.Lx434_2:
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                        cmp              eax, 99
                                                                                        je    n117_call_proc_staged_β
                                                                                        jmp   n122_move_label_α
n121_call_proc_staged_β:
                                                                                        jmp   n117_call_proc_staged_β
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n122_move_label_α:
                        lea              rax, [rip + n121_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n123_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 6416], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 6424], rax
                        lea              rdi, [rbp + 6416]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n124_var_ref_α
n123_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx
                        add              rsp, 16
                                                                                        jmp   n125_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:
                        mov              qword ptr [rbp + 6368], 6
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rbp + 6376], rax
                                                                                        jmp   n126_lit_string_α
.Lx440_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rbp + 6384], 1
                        mov              dword ptr [rbp + 6388], 1
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rbp + 6392], rax
                                                                                        jmp   n127_call_builtin_prolog_α
.Lx441_0:
                        .quad            .Lx441_0_s
.Lx441_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6352]
                        mov              qword ptr [rbp + 6304], rax
                        mov              rax, qword ptr [rbp + 6360]
                        mov              qword ptr [rbp + 6312], rax
                        mov              rax, qword ptr [rbp + 6368]
                        mov              qword ptr [rbp + 6320], rax
                        mov              rax, qword ptr [rbp + 6376]
                        mov              qword ptr [rbp + 6328], rax
                        mov              rax, qword ptr [rbp + 6384]
                        mov              qword ptr [rbp + 6336], rax
                        mov              rax, qword ptr [rbp + 6392]
                        mov              qword ptr [rbp + 6344], rax
                        lea              rdi, [rbp + 6304]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 6288], rax
                        mov              qword ptr [rbp + 6296], rdx
                        cmp              eax, 99
                                                                                        je    n160_var_ref_α
                                                                                        jmp   n128_var_ref_α
n127_call_builtin_prolog_β:
                                                                                        jmp   n160_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx
                        add              rsp, 16
                                                                                        jmp   n129_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 6272], 1
                        mov              dword ptr [rbp + 6276], 1
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rbp + 6280], rax
                                                                                        jmp   n130_var_ref_α
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx
                        add              rsp, 16
                                                                                        jmp   n131_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 6176], rax
                        mov              qword ptr [rbp + 6184], rdx
                        add              rsp, 16
                                                                                        jmp   n132_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6272]
                        mov              qword ptr [rbp + 6208], rax
                        mov              rax, qword ptr [rbp + 6280]
                        mov              qword ptr [rbp + 6216], rax
                        mov              rax, qword ptr [rbp + 6160]
                        mov              qword ptr [rbp + 6224], rax
                        mov              rax, qword ptr [rbp + 6168]
                        mov              qword ptr [rbp + 6232], rax
                        mov              rax, qword ptr [rbp + 6176]
                        mov              qword ptr [rbp + 6240], rax
                        mov              rax, qword ptr [rbp + 6184]
                        mov              qword ptr [rbp + 6248], rax
                        lea              rdi, [rbp + 6208]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6192], rax
                        mov              qword ptr [rbp + 6200], rdx
                        cmp              eax, 99
                                                                                        je    n159_call_builtin_prolog_α
                                                                                        jmp   n133_call_builtin_prolog_α
n132_call_builtin_prolog_β:
                                                                                        jmp   n159_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6144]
                        mov              qword ptr [rbp + 6112], rax
                        mov              rax, qword ptr [rbp + 6152]
                        mov              qword ptr [rbp + 6120], rax
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 6128], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 6136], rax
                        lea              rdi, [rbp + 6112]
                        lea              r8, [rbp + 6112]
.Lx451_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx451_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx451_41
                        cmp              esi, 1
                                                                                        jne   .Lx451_55
                        mov              r8, rax
                                                                                        jmp   .Lx451_40
.Lx451_55:
                        cmp              esi, 2
                                                                                        jne   .Lx451_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx451_41
                        mov              r8, rax
                                                                                        jmp   .Lx451_40
.Lx451_56:
                        cmp              eax, 13
                                                                                        jne   .Lx451_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx451_41
                        cmp              rax, r8
                                                                                        je    .Lx451_41
                        mov              r8, rax
                                                                                        jmp   .Lx451_40
.Lx451_41:
                        lea              r9, [rbp + 6128]
.Lx451_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx451_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx451_43
                        cmp              esi, 1
                                                                                        jne   .Lx451_57
                        mov              r9, rax
                                                                                        jmp   .Lx451_42
.Lx451_57:
                        cmp              esi, 2
                                                                                        jne   .Lx451_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx451_43
                        mov              r9, rax
                                                                                        jmp   .Lx451_42
.Lx451_58:
                        cmp              eax, 13
                                                                                        jne   .Lx451_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx451_43
                        cmp              rax, r9
                                                                                        je    .Lx451_43
                        mov              r9, rax
                                                                                        jmp   .Lx451_42
.Lx451_43:
                        cmp              r8, r9
                                                                                        je    .Lx451_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx451_44
                        cmp              eax, 99
                                                                                        je    .Lx451_44
                        cmp              eax, 13
                                                                                        jne   .Lx451_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx451_44
                                                                                        jmp   .Lx451_45
.Lx451_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx451_53
                        cmp              eax, 99
                                                                                        je    .Lx451_53
                        cmp              eax, 13
                                                                                        jne   .Lx451_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx451_53
                                                                                        jmp   .Lx451_46
.Lx451_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx451_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx451_53
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
                                                                                        jmp   .Lx451_51
.Lx451_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx451_47
                        cmp              eax, 99
                                                                                        je    .Lx451_47
                        cmp              eax, 13
                                                                                        jne   .Lx451_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx451_47
                                                                                        jmp   .Lx451_48
.Lx451_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx451_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx451_53
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
                                                                                        jmp   .Lx451_51
.Lx451_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx451_49
                        cmp              edx, 14
                                                                                        je    .Lx451_53
                                                                                        jmp   .Lx451_52
.Lx451_49:
                        cmp              edx, 14
                                                                                        je    .Lx451_52
                        cmp              ecx, 7
                                                                                        je    .Lx451_53
                        cmp              edx, 7
                                                                                        je    .Lx451_53
                        cmp              ecx, 6
                                                                                        jne   .Lx451_50
                        cmp              edx, 6
                                                                                        jne   .Lx451_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx451_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx451_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx451_51
                                                                                        jmp   .Lx451_52
.Lx451_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx451_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx451_53
.Lx451_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx451_54
.Lx451_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx451_54
.Lx451_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx451_54:
                        mov              qword ptr [rbp + 6096], rax
                        mov              qword ptr [rbp + 6104], rdx
                        cmp              eax, 99
                                                                                        je    n159_call_builtin_prolog_α
                                                                                        jmp   n134_var_ref_α
n133_call_builtin_prolog_β:
                                                                                        jmp   n159_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx
                        add              rsp, 16
                                                                                        jmp   n135_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6080], rax
                        mov              qword ptr [rbp + 6088], rdx
                        add              rsp, 16
                                                                                        jmp   n136_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6064]
                        mov              qword ptr [rbp + 6032], rax
                        mov              rax, qword ptr [rbp + 6072]
                        mov              qword ptr [rbp + 6040], rax
                        mov              rax, qword ptr [rbp + 6080]
                        mov              qword ptr [rbp + 6048], rax
                        mov              rax, qword ptr [rbp + 6088]
                        mov              qword ptr [rbp + 6056], rax
                        lea              rdi, [rbp + 6032]
                        lea              r8, [rbp + 6032]
.Lx456_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx456_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx456_41
                        cmp              esi, 1
                                                                                        jne   .Lx456_55
                        mov              r8, rax
                                                                                        jmp   .Lx456_40
.Lx456_55:
                        cmp              esi, 2
                                                                                        jne   .Lx456_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx456_41
                        mov              r8, rax
                                                                                        jmp   .Lx456_40
.Lx456_56:
                        cmp              eax, 13
                                                                                        jne   .Lx456_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx456_41
                        cmp              rax, r8
                                                                                        je    .Lx456_41
                        mov              r8, rax
                                                                                        jmp   .Lx456_40
.Lx456_41:
                        lea              r9, [rbp + 6048]
.Lx456_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx456_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx456_43
                        cmp              esi, 1
                                                                                        jne   .Lx456_57
                        mov              r9, rax
                                                                                        jmp   .Lx456_42
.Lx456_57:
                        cmp              esi, 2
                                                                                        jne   .Lx456_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx456_43
                        mov              r9, rax
                                                                                        jmp   .Lx456_42
.Lx456_58:
                        cmp              eax, 13
                                                                                        jne   .Lx456_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx456_43
                        cmp              rax, r9
                                                                                        je    .Lx456_43
                        mov              r9, rax
                                                                                        jmp   .Lx456_42
.Lx456_43:
                        cmp              r8, r9
                                                                                        je    .Lx456_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx456_44
                        cmp              eax, 99
                                                                                        je    .Lx456_44
                        cmp              eax, 13
                                                                                        jne   .Lx456_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx456_44
                                                                                        jmp   .Lx456_45
.Lx456_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx456_53
                        cmp              eax, 99
                                                                                        je    .Lx456_53
                        cmp              eax, 13
                                                                                        jne   .Lx456_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx456_53
                                                                                        jmp   .Lx456_46
.Lx456_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx456_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx456_53
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
                                                                                        jmp   .Lx456_51
.Lx456_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx456_47
                        cmp              eax, 99
                                                                                        je    .Lx456_47
                        cmp              eax, 13
                                                                                        jne   .Lx456_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx456_47
                                                                                        jmp   .Lx456_48
.Lx456_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx456_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx456_53
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
                                                                                        jmp   .Lx456_51
.Lx456_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx456_49
                        cmp              edx, 14
                                                                                        je    .Lx456_53
                                                                                        jmp   .Lx456_52
.Lx456_49:
                        cmp              edx, 14
                                                                                        je    .Lx456_52
                        cmp              ecx, 7
                                                                                        je    .Lx456_53
                        cmp              edx, 7
                                                                                        je    .Lx456_53
                        cmp              ecx, 6
                                                                                        jne   .Lx456_50
                        cmp              edx, 6
                                                                                        jne   .Lx456_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx456_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx456_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx456_51
                                                                                        jmp   .Lx456_52
.Lx456_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx456_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx456_53
.Lx456_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx456_54
.Lx456_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx456_54
.Lx456_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx456_54:
                        mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx
                        cmp              eax, 99
                                                                                        je    n159_call_builtin_prolog_α
                                                                                        jmp   n137_var_ref_α
n136_call_builtin_prolog_β:
                                                                                        jmp   n159_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                        add              rsp, 16
                                                                                        jmp   n138_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 6000], 1
                        mov              dword ptr [rbp + 6004], 1
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 6008], rax
                                                                                        jmp   n139_lit_string_α
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        mov              qword ptr [rbp + 5776], 1
                        mov              dword ptr [rbp + 5780], 1
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rbp + 5784], rax
                                                                                        jmp   n140_var_ref_α
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                        add              rsp, 16
                                                                                        jmp   n141_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx
                        add              rsp, 16
                                                                                        jmp   n142_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n142_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5776]
                        mov              qword ptr [rbp + 5712], rax
                        mov              rax, qword ptr [rbp + 5784]
                        mov              qword ptr [rbp + 5720], rax
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5736], rax
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 5744], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 5752], rax
                        lea              rdi, [rbp + 5712]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5696], rax
                        mov              qword ptr [rbp + 5704], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n143_lit_string_α
n142_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:
                        mov              qword ptr [rbp + 5904], 1
                        mov              dword ptr [rbp + 5908], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 5912], rax
                                                                                        jmp   n144_var_ref_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                        add              rsp, 16
                                                                                        jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 5808], rax
                        mov              qword ptr [rbp + 5816], rdx
                        add              rsp, 16
                                                                                        jmp   n146_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5904]
                        mov              qword ptr [rbp + 5840], rax
                        mov              rax, qword ptr [rbp + 5912]
                        mov              qword ptr [rbp + 5848], rax
                        mov              rax, qword ptr [rbp + 5792]
                        mov              qword ptr [rbp + 5856], rax
                        mov              rax, qword ptr [rbp + 5800]
                        mov              qword ptr [rbp + 5864], rax
                        mov              rax, qword ptr [rbp + 5808]
                        mov              qword ptr [rbp + 5872], rax
                        mov              rax, qword ptr [rbp + 5816]
                        mov              qword ptr [rbp + 5880], rax
                        lea              rdi, [rbp + 5840]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5824], rax
                        mov              qword ptr [rbp + 5832], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n147_call_builtin_prolog_α
n146_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6000]
                        mov              qword ptr [rbp + 5936], rax
                        mov              rax, qword ptr [rbp + 6008]
                        mov              qword ptr [rbp + 5944], rax
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 5952], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 5960], rax
                        mov              rax, qword ptr [rbp + 5824]
                        mov              qword ptr [rbp + 5968], rax
                        mov              rax, qword ptr [rbp + 5832]
                        mov              qword ptr [rbp + 5976], rax
                        lea              rdi, [rbp + 5936]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                        cmp              eax, 99
                                                                                        je    n159_call_builtin_prolog_α
                                                                                        jmp   n148_call_builtin_prolog_α
n147_call_builtin_prolog_β:
                                                                                        jmp   n159_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5648]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 5656]
                        mov              qword ptr [rbp + 5624], rax
                        mov              rax, qword ptr [rbp + 5920]
                        mov              qword ptr [rbp + 5632], rax
                        mov              rax, qword ptr [rbp + 5928]
                        mov              qword ptr [rbp + 5640], rax
                        lea              rdi, [rbp + 5616]
                        lea              r8, [rbp + 5616]
.Lx473_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx473_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx473_41
                        cmp              esi, 1
                                                                                        jne   .Lx473_55
                        mov              r8, rax
                                                                                        jmp   .Lx473_40
.Lx473_55:
                        cmp              esi, 2
                                                                                        jne   .Lx473_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx473_41
                        mov              r8, rax
                                                                                        jmp   .Lx473_40
.Lx473_56:
                        cmp              eax, 13
                                                                                        jne   .Lx473_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx473_41
                        cmp              rax, r8
                                                                                        je    .Lx473_41
                        mov              r8, rax
                                                                                        jmp   .Lx473_40
.Lx473_41:
                        lea              r9, [rbp + 5632]
.Lx473_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx473_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx473_43
                        cmp              esi, 1
                                                                                        jne   .Lx473_57
                        mov              r9, rax
                                                                                        jmp   .Lx473_42
.Lx473_57:
                        cmp              esi, 2
                                                                                        jne   .Lx473_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx473_43
                        mov              r9, rax
                                                                                        jmp   .Lx473_42
.Lx473_58:
                        cmp              eax, 13
                                                                                        jne   .Lx473_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx473_43
                        cmp              rax, r9
                                                                                        je    .Lx473_43
                        mov              r9, rax
                                                                                        jmp   .Lx473_42
.Lx473_43:
                        cmp              r8, r9
                                                                                        je    .Lx473_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx473_44
                        cmp              eax, 99
                                                                                        je    .Lx473_44
                        cmp              eax, 13
                                                                                        jne   .Lx473_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx473_44
                                                                                        jmp   .Lx473_45
.Lx473_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx473_53
                        cmp              eax, 99
                                                                                        je    .Lx473_53
                        cmp              eax, 13
                                                                                        jne   .Lx473_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx473_53
                                                                                        jmp   .Lx473_46
.Lx473_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx473_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx473_53
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
                                                                                        jmp   .Lx473_51
.Lx473_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx473_47
                        cmp              eax, 99
                                                                                        je    .Lx473_47
                        cmp              eax, 13
                                                                                        jne   .Lx473_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx473_47
                                                                                        jmp   .Lx473_48
.Lx473_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx473_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx473_53
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
                                                                                        jmp   .Lx473_51
.Lx473_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx473_49
                        cmp              edx, 14
                                                                                        je    .Lx473_53
                                                                                        jmp   .Lx473_52
.Lx473_49:
                        cmp              edx, 14
                                                                                        je    .Lx473_52
                        cmp              ecx, 7
                                                                                        je    .Lx473_53
                        cmp              edx, 7
                                                                                        je    .Lx473_53
                        cmp              ecx, 6
                                                                                        jne   .Lx473_50
                        cmp              edx, 6
                                                                                        jne   .Lx473_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx473_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx473_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx473_51
                                                                                        jmp   .Lx473_52
.Lx473_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx473_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx473_53
.Lx473_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx473_54
.Lx473_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx473_54
.Lx473_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx473_54:
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                        cmp              eax, 99
                                                                                        je    n159_call_builtin_prolog_α
                                                                                        jmp   n149_cut_α
n148_call_builtin_prolog_β:
                                                                                        jmp   n159_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n149_cut_α:
                                                                                        jmp   n150_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx
                        add              rsp, 16
                                                                                        jmp   n151_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                        add              rsp, 16
                                                                                        jmp   n152_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx
                        add              rsp, 16
                                                                                        jmp   n153_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_proc_staged_α:
                        lea              rsi, [rbp + 5552]
                        lea              rdx, [rbp + 5568]
                        lea              rcx, [rbp + 5584]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx482_2
.Lx482_2:
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              eax, 99
                                                                                        je    n340_call_builtin_prolog_α
                                                                                        jmp   n154_var_ref_α
n153_call_proc_staged_β:
                                                                                        jmp   n340_call_builtin_prolog_α
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx
                        add              rsp, 16
                                                                                        jmp   n155_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 5440], rax
                        mov              qword ptr [rbp + 5448], rdx
                        add              rsp, 16
                                                                                        jmp   n156_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx
                        add              rsp, 16
                                                                                        jmp   n157_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_proc_staged_α:
                        lea              rsi, [rbp + 5424]
                        lea              rdx, [rbp + 5440]
                        lea              rcx, [rbp + 5456]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx490_2
.Lx490_2:
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                        cmp              eax, 99
                                                                                        je    n153_call_proc_staged_β
                                                                                        jmp   n158_move_label_α
n157_call_proc_staged_β:
                                                                                        jmp   n153_call_proc_staged_β
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n158_move_label_α:
                        lea              rax, [rip + n157_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n159_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 5336], rax
                        lea              rdi, [rbp + 5328]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 5312], rax
                        mov              qword ptr [rbp + 5320], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n160_var_ref_α
n159_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx
                        add              rsp, 16
                                                                                        jmp   n161_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:
                        mov              qword ptr [rbp + 5280], 6
                        mov              rax, qword ptr [rip + .Lx496_0]
                        mov              qword ptr [rbp + 5288], rax
                                                                                        jmp   n162_lit_string_α
.Lx496_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rbp + 5296], 1
                        mov              dword ptr [rbp + 5300], 1
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rbp + 5304], rax
                                                                                        jmp   n163_call_builtin_prolog_α
.Lx497_0:
                        .quad            .Lx497_0_s
.Lx497_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5264]
                        mov              qword ptr [rbp + 5216], rax
                        mov              rax, qword ptr [rbp + 5272]
                        mov              qword ptr [rbp + 5224], rax
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 5232], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 5240], rax
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 5248], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 5256], rax
                        lea              rdi, [rbp + 5216]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx
                        cmp              eax, 99
                                                                                        je    n202_var_ref_α
                                                                                        jmp   n164_var_ref_α
n163_call_builtin_prolog_β:
                                                                                        jmp   n202_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx
                        add              rsp, 16
                                                                                        jmp   n165_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        mov              qword ptr [rbp + 5184], 1
                        mov              dword ptr [rbp + 5188], 1
                        mov              rax, qword ptr [rip + .Lx501_0]
                        mov              qword ptr [rbp + 5192], rax
                                                                                        jmp   n166_var_ref_α
.Lx501_0:
                        .quad            .Lx501_0_s
.Lx501_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                        add              rsp, 16
                                                                                        jmp   n167_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx
                        add              rsp, 16
                                                                                        jmp   n168_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n168_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5184]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 5192]
                        mov              qword ptr [rbp + 5128], rax
                        mov              rax, qword ptr [rbp + 5072]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 5080]
                        mov              qword ptr [rbp + 5144], rax
                        mov              rax, qword ptr [rbp + 5088]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5096]
                        mov              qword ptr [rbp + 5160], rax
                        lea              rdi, [rbp + 5120]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                        cmp              eax, 99
                                                                                        je    n201_call_builtin_prolog_α
                                                                                        jmp   n169_call_builtin_prolog_α
n168_call_builtin_prolog_β:
                                                                                        jmp   n201_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n169_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5056]
                        mov              qword ptr [rbp + 5024], rax
                        mov              rax, qword ptr [rbp + 5064]
                        mov              qword ptr [rbp + 5032], rax
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5040], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5048], rax
                        lea              rdi, [rbp + 5024]
                        lea              r8, [rbp + 5024]
.Lx507_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx507_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx507_41
                        cmp              esi, 1
                                                                                        jne   .Lx507_55
                        mov              r8, rax
                                                                                        jmp   .Lx507_40
.Lx507_55:
                        cmp              esi, 2
                                                                                        jne   .Lx507_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx507_41
                        mov              r8, rax
                                                                                        jmp   .Lx507_40
.Lx507_56:
                        cmp              eax, 13
                                                                                        jne   .Lx507_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx507_41
                        cmp              rax, r8
                                                                                        je    .Lx507_41
                        mov              r8, rax
                                                                                        jmp   .Lx507_40
.Lx507_41:
                        lea              r9, [rbp + 5040]
.Lx507_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx507_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx507_43
                        cmp              esi, 1
                                                                                        jne   .Lx507_57
                        mov              r9, rax
                                                                                        jmp   .Lx507_42
.Lx507_57:
                        cmp              esi, 2
                                                                                        jne   .Lx507_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx507_43
                        mov              r9, rax
                                                                                        jmp   .Lx507_42
.Lx507_58:
                        cmp              eax, 13
                                                                                        jne   .Lx507_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx507_43
                        cmp              rax, r9
                                                                                        je    .Lx507_43
                        mov              r9, rax
                                                                                        jmp   .Lx507_42
.Lx507_43:
                        cmp              r8, r9
                                                                                        je    .Lx507_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx507_44
                        cmp              eax, 99
                                                                                        je    .Lx507_44
                        cmp              eax, 13
                                                                                        jne   .Lx507_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx507_44
                                                                                        jmp   .Lx507_45
.Lx507_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx507_53
                        cmp              eax, 99
                                                                                        je    .Lx507_53
                        cmp              eax, 13
                                                                                        jne   .Lx507_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx507_53
                                                                                        jmp   .Lx507_46
.Lx507_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx507_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx507_53
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
                                                                                        jmp   .Lx507_51
.Lx507_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx507_47
                        cmp              eax, 99
                                                                                        je    .Lx507_47
                        cmp              eax, 13
                                                                                        jne   .Lx507_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx507_47
                                                                                        jmp   .Lx507_48
.Lx507_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx507_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx507_53
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
                                                                                        jmp   .Lx507_51
.Lx507_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx507_49
                        cmp              edx, 14
                                                                                        je    .Lx507_53
                                                                                        jmp   .Lx507_52
.Lx507_49:
                        cmp              edx, 14
                                                                                        je    .Lx507_52
                        cmp              ecx, 7
                                                                                        je    .Lx507_53
                        cmp              edx, 7
                                                                                        je    .Lx507_53
                        cmp              ecx, 6
                                                                                        jne   .Lx507_50
                        cmp              edx, 6
                                                                                        jne   .Lx507_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx507_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx507_51
                                                                                        jmp   .Lx507_52
.Lx507_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx507_53
.Lx507_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx507_54
.Lx507_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx507_54
.Lx507_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx507_54:
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                        cmp              eax, 99
                                                                                        je    n201_call_builtin_prolog_α
                                                                                        jmp   n170_var_ref_α
n169_call_builtin_prolog_β:
                                                                                        jmp   n201_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                        add              rsp, 16
                                                                                        jmp   n171_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                        add              rsp, 16
                                                                                        jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n172_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 4952], rax
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 4968], rax
                        lea              rdi, [rbp + 4944]
                        lea              r8, [rbp + 4944]
.Lx512_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx512_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx512_41
                        cmp              esi, 1
                                                                                        jne   .Lx512_55
                        mov              r8, rax
                                                                                        jmp   .Lx512_40
.Lx512_55:
                        cmp              esi, 2
                                                                                        jne   .Lx512_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx512_41
                        mov              r8, rax
                                                                                        jmp   .Lx512_40
.Lx512_56:
                        cmp              eax, 13
                                                                                        jne   .Lx512_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx512_41
                        cmp              rax, r8
                                                                                        je    .Lx512_41
                        mov              r8, rax
                                                                                        jmp   .Lx512_40
.Lx512_41:
                        lea              r9, [rbp + 4960]
.Lx512_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx512_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx512_43
                        cmp              esi, 1
                                                                                        jne   .Lx512_57
                        mov              r9, rax
                                                                                        jmp   .Lx512_42
.Lx512_57:
                        cmp              esi, 2
                                                                                        jne   .Lx512_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx512_43
                        mov              r9, rax
                                                                                        jmp   .Lx512_42
.Lx512_58:
                        cmp              eax, 13
                                                                                        jne   .Lx512_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx512_43
                        cmp              rax, r9
                                                                                        je    .Lx512_43
                        mov              r9, rax
                                                                                        jmp   .Lx512_42
.Lx512_43:
                        cmp              r8, r9
                                                                                        je    .Lx512_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx512_44
                        cmp              eax, 99
                                                                                        je    .Lx512_44
                        cmp              eax, 13
                                                                                        jne   .Lx512_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx512_44
                                                                                        jmp   .Lx512_45
.Lx512_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx512_53
                        cmp              eax, 99
                                                                                        je    .Lx512_53
                        cmp              eax, 13
                                                                                        jne   .Lx512_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx512_53
                                                                                        jmp   .Lx512_46
.Lx512_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx512_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx512_53
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
                                                                                        jmp   .Lx512_51
.Lx512_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx512_47
                        cmp              eax, 99
                                                                                        je    .Lx512_47
                        cmp              eax, 13
                                                                                        jne   .Lx512_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx512_47
                                                                                        jmp   .Lx512_48
.Lx512_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx512_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx512_53
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
                                                                                        jmp   .Lx512_51
.Lx512_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx512_49
                        cmp              edx, 14
                                                                                        je    .Lx512_53
                                                                                        jmp   .Lx512_52
.Lx512_49:
                        cmp              edx, 14
                                                                                        je    .Lx512_52
                        cmp              ecx, 7
                                                                                        je    .Lx512_53
                        cmp              edx, 7
                                                                                        je    .Lx512_53
                        cmp              ecx, 6
                                                                                        jne   .Lx512_50
                        cmp              edx, 6
                                                                                        jne   .Lx512_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx512_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx512_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx512_51
                                                                                        jmp   .Lx512_52
.Lx512_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx512_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx512_53
.Lx512_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx512_54
.Lx512_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx512_54
.Lx512_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx512_54:
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                        cmp              eax, 99
                                                                                        je    n201_call_builtin_prolog_α
                                                                                        jmp   n173_var_ref_α
n172_call_builtin_prolog_β:
                                                                                        jmp   n201_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                        add              rsp, 16
                                                                                        jmp   n174_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rbp + 4912], 1
                        mov              dword ptr [rbp + 4916], 1
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rbp + 4920], rax
                                                                                        jmp   n175_lit_string_α
.Lx515_0:
                        .quad            .Lx515_0_s
.Lx515_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:
                        mov              qword ptr [rbp + 4688], 1
                        mov              dword ptr [rbp + 4692], 1
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rbp + 4696], rax
                                                                                        jmp   n176_lit_string_α
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:
                        mov              qword ptr [rbp + 4464], 1
                        mov              dword ptr [rbp + 4468], 1
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n177_var_ref_α
.Lx517_0:
                        .quad            .Lx517_0_s
.Lx517_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        add              rsp, 16
                                                                                        jmp   n178_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                        add              rsp, 16
                                                                                        jmp   n179_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n179_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4408], rax
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4424], rax
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 4440], rax
                        lea              rdi, [rbp + 4400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n180_lit_string_α
n179_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        mov              qword ptr [rbp + 4592], 1
                        mov              dword ptr [rbp + 4596], 1
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n181_var_ref_α
.Lx523_0:
                        .quad            .Lx523_0_s
.Lx523_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                        add              rsp, 16
                                                                                        jmp   n182_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                        add              rsp, 16
                                                                                        jmp   n183_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4592]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4600]
                        mov              qword ptr [rbp + 4536], rax
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 4552], rax
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 4560], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 4568], rax
                        lea              rdi, [rbp + 4528]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n184_call_builtin_prolog_α
n183_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4688]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4696]
                        mov              qword ptr [rbp + 4632], rax
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4640], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4648], rax
                        mov              rax, qword ptr [rbp + 4512]
                        mov              qword ptr [rbp + 4656], rax
                        mov              rax, qword ptr [rbp + 4520]
                        mov              qword ptr [rbp + 4664], rax
                        lea              rdi, [rbp + 4624]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4608], rax
                        mov              qword ptr [rbp + 4616], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n185_lit_string_α
n184_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:
                        mov              qword ptr [rbp + 4816], 1
                        mov              dword ptr [rbp + 4820], 1
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rbp + 4824], rax
                                                                                        jmp   n186_var_ref_α
.Lx530_0:
                        .quad            .Lx530_0_s
.Lx530_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        add              rsp, 16
                                                                                        jmp   n187_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:
                        mov              qword ptr [rbp + 4720], 6
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rbp + 4728], rax
                                                                                        jmp   n188_call_builtin_prolog_α
.Lx533_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 4752], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 4760], rax
                        mov              rax, qword ptr [rbp + 4704]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 4712]
                        mov              qword ptr [rbp + 4776], rax
                        mov              rax, qword ptr [rbp + 4720]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4728]
                        mov              qword ptr [rbp + 4792], rax
                        lea              rdi, [rbp + 4752]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4736], rax
                        mov              qword ptr [rbp + 4744], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n189_call_builtin_prolog_α
n188_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 4848], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 4856], rax
                        mov              rax, qword ptr [rbp + 4608]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 4616]
                        mov              qword ptr [rbp + 4872], rax
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4880], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4888], rax
                        lea              rdi, [rbp + 4848]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4832], rax
                        mov              qword ptr [rbp + 4840], rdx
                        cmp              eax, 99
                                                                                        je    n201_call_builtin_prolog_α
                                                                                        jmp   n190_call_builtin_prolog_α
n189_call_builtin_prolog_β:
                                                                                        jmp   n201_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n190_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4312], rax
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 4328], rax
                        lea              rdi, [rbp + 4304]
                        lea              r8, [rbp + 4304]
.Lx536_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx536_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx536_41
                        cmp              rax, r8
                                                                                        je    .Lx536_41
                        mov              r8, rax
                                                                                        jmp   .Lx536_40
.Lx536_41:
                        lea              r9, [rbp + 4320]
.Lx536_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx536_44
                        cmp              eax, 13
                                                                                        jne   .Lx536_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx536_44
                                                                                        jmp   .Lx536_45
.Lx536_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx536_53
                        cmp              eax, 99
                                                                                        je    .Lx536_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx536_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx536_49
                        cmp              edx, 14
                                                                                        je    .Lx536_53
                                                                                        jmp   .Lx536_52
.Lx536_49:
                        cmp              edx, 14
                                                                                        je    .Lx536_52
                        cmp              ecx, 7
                                                                                        je    .Lx536_53
                        cmp              edx, 7
                                                                                        je    .Lx536_53
                        cmp              ecx, 6
                                                                                        jne   .Lx536_50
                        cmp              edx, 6
                                                                                        jne   .Lx536_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx536_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx536_54
.Lx536_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx536_54:
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              eax, 99
                                                                                        je    n201_call_builtin_prolog_α
                                                                                        jmp   n191_cut_α
n190_call_builtin_prolog_β:
                                                                                        jmp   n201_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n191_cut_α:
                                                                                        jmp   n192_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                        add              rsp, 16
                                                                                        jmp   n193_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        add              rsp, 16
                                                                                        jmp   n194_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        add              rsp, 16
                                                                                        jmp   n195_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n195_call_proc_staged_α:
                        lea              rsi, [rbp + 4240]
                        lea              rdx, [rbp + 4256]
                        lea              rcx, [rbp + 4272]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx545_2
.Lx545_2:
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              eax, 99
                                                                                        je    n340_call_builtin_prolog_α
                                                                                        jmp   n196_var_ref_α
n195_call_proc_staged_β:
                                                                                        jmp   n340_call_builtin_prolog_α
.Lx545_0:
                        .quad            .Lx545_0_s
.Lx545_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                        add              rsp, 16
                                                                                        jmp   n197_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                        add              rsp, 16
                                                                                        jmp   n198_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        add              rsp, 16
                                                                                        jmp   n199_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n199_call_proc_staged_α:
                        lea              rsi, [rbp + 4112]
                        lea              rdx, [rbp + 4128]
                        lea              rcx, [rbp + 4144]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx553_2
.Lx553_2:
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        cmp              eax, 99
                                                                                        je    n195_call_proc_staged_β
                                                                                        jmp   n200_move_label_α
n199_call_proc_staged_β:
                                                                                        jmp   n195_call_proc_staged_β
.Lx553_0:
                        .quad            .Lx553_0_s
.Lx553_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n200_move_label_α:
                        lea              rax, [rip + n199_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n201_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 4024], rax
                        lea              rdi, [rbp + 4016]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n202_var_ref_α
n201_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        add              rsp, 16
                                                                                        jmp   n203_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:
                        mov              qword ptr [rbp + 3968], 6
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n204_lit_string_α
.Lx559_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:
                        mov              qword ptr [rbp + 3984], 1
                        mov              dword ptr [rbp + 3988], 1
                        mov              rax, qword ptr [rip + .Lx560_0]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n205_call_builtin_prolog_α
.Lx560_0:
                        .quad            .Lx560_0_s
.Lx560_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 3912], rax
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3928], rax
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 3944], rax
                        lea              rdi, [rbp + 3904]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                        cmp              eax, 99
                                                                                        je    n241_var_ref_α
                                                                                        jmp   n206_var_ref_α
n205_call_builtin_prolog_β:
                                                                                        jmp   n241_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        add              rsp, 16
                                                                                        jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rbp + 3872], 1
                        mov              dword ptr [rbp + 3876], 1
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n208_var_ref_α
.Lx564_0:
                        .quad            .Lx564_0_s
.Lx564_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                        add              rsp, 16
                                                                                        jmp   n209_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        add              rsp, 16
                                                                                        jmp   n210_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n210_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3816], rax
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3832], rax
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3848], rax
                        lea              rdi, [rbp + 3808]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              eax, 99
                                                                                        je    n240_call_builtin_prolog_α
                                                                                        jmp   n211_call_builtin_prolog_α
n210_call_builtin_prolog_β:
                                                                                        jmp   n240_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n211_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3720], rax
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3736], rax
                        lea              rdi, [rbp + 3712]
                        lea              r8, [rbp + 3712]
.Lx570_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx570_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx570_41
                        cmp              esi, 1
                                                                                        jne   .Lx570_55
                        mov              r8, rax
                                                                                        jmp   .Lx570_40
.Lx570_55:
                        cmp              esi, 2
                                                                                        jne   .Lx570_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx570_41
                        mov              r8, rax
                                                                                        jmp   .Lx570_40
.Lx570_56:
                        cmp              eax, 13
                                                                                        jne   .Lx570_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx570_41
                        cmp              rax, r8
                                                                                        je    .Lx570_41
                        mov              r8, rax
                                                                                        jmp   .Lx570_40
.Lx570_41:
                        lea              r9, [rbp + 3728]
.Lx570_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx570_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx570_43
                        cmp              esi, 1
                                                                                        jne   .Lx570_57
                        mov              r9, rax
                                                                                        jmp   .Lx570_42
.Lx570_57:
                        cmp              esi, 2
                                                                                        jne   .Lx570_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx570_43
                        mov              r9, rax
                                                                                        jmp   .Lx570_42
.Lx570_58:
                        cmp              eax, 13
                                                                                        jne   .Lx570_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx570_43
                        cmp              rax, r9
                                                                                        je    .Lx570_43
                        mov              r9, rax
                                                                                        jmp   .Lx570_42
.Lx570_43:
                        cmp              r8, r9
                                                                                        je    .Lx570_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx570_44
                        cmp              eax, 99
                                                                                        je    .Lx570_44
                        cmp              eax, 13
                                                                                        jne   .Lx570_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx570_44
                                                                                        jmp   .Lx570_45
.Lx570_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx570_53
                        cmp              eax, 99
                                                                                        je    .Lx570_53
                        cmp              eax, 13
                                                                                        jne   .Lx570_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx570_53
                                                                                        jmp   .Lx570_46
.Lx570_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx570_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx570_53
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
                                                                                        jmp   .Lx570_51
.Lx570_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx570_47
                        cmp              eax, 99
                                                                                        je    .Lx570_47
                        cmp              eax, 13
                                                                                        jne   .Lx570_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx570_47
                                                                                        jmp   .Lx570_48
.Lx570_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx570_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx570_53
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
                                                                                        jmp   .Lx570_51
.Lx570_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx570_49
                        cmp              edx, 14
                                                                                        je    .Lx570_53
                                                                                        jmp   .Lx570_52
.Lx570_49:
                        cmp              edx, 14
                                                                                        je    .Lx570_52
                        cmp              ecx, 7
                                                                                        je    .Lx570_53
                        cmp              edx, 7
                                                                                        je    .Lx570_53
                        cmp              ecx, 6
                                                                                        jne   .Lx570_50
                        cmp              edx, 6
                                                                                        jne   .Lx570_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx570_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx570_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx570_51
                                                                                        jmp   .Lx570_52
.Lx570_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx570_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx570_53
.Lx570_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx570_54
.Lx570_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx570_54
.Lx570_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx570_54:
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              eax, 99
                                                                                        je    n240_call_builtin_prolog_α
                                                                                        jmp   n212_var_ref_α
n211_call_builtin_prolog_β:
                                                                                        jmp   n240_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        add              rsp, 16
                                                                                        jmp   n213_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        add              rsp, 16
                                                                                        jmp   n214_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n214_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3640], rax
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3656], rax
                        lea              rdi, [rbp + 3632]
                        lea              r8, [rbp + 3632]
.Lx575_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx575_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx575_41
                        cmp              esi, 1
                                                                                        jne   .Lx575_55
                        mov              r8, rax
                                                                                        jmp   .Lx575_40
.Lx575_55:
                        cmp              esi, 2
                                                                                        jne   .Lx575_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx575_41
                        mov              r8, rax
                                                                                        jmp   .Lx575_40
.Lx575_56:
                        cmp              eax, 13
                                                                                        jne   .Lx575_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx575_41
                        cmp              rax, r8
                                                                                        je    .Lx575_41
                        mov              r8, rax
                                                                                        jmp   .Lx575_40
.Lx575_41:
                        lea              r9, [rbp + 3648]
.Lx575_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx575_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx575_43
                        cmp              esi, 1
                                                                                        jne   .Lx575_57
                        mov              r9, rax
                                                                                        jmp   .Lx575_42
.Lx575_57:
                        cmp              esi, 2
                                                                                        jne   .Lx575_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx575_43
                        mov              r9, rax
                                                                                        jmp   .Lx575_42
.Lx575_58:
                        cmp              eax, 13
                                                                                        jne   .Lx575_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx575_43
                        cmp              rax, r9
                                                                                        je    .Lx575_43
                        mov              r9, rax
                                                                                        jmp   .Lx575_42
.Lx575_43:
                        cmp              r8, r9
                                                                                        je    .Lx575_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx575_44
                        cmp              eax, 99
                                                                                        je    .Lx575_44
                        cmp              eax, 13
                                                                                        jne   .Lx575_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx575_44
                                                                                        jmp   .Lx575_45
.Lx575_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx575_53
                        cmp              eax, 99
                                                                                        je    .Lx575_53
                        cmp              eax, 13
                                                                                        jne   .Lx575_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx575_53
                                                                                        jmp   .Lx575_46
.Lx575_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx575_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx575_53
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
                                                                                        jmp   .Lx575_51
.Lx575_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx575_47
                        cmp              eax, 99
                                                                                        je    .Lx575_47
                        cmp              eax, 13
                                                                                        jne   .Lx575_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx575_47
                                                                                        jmp   .Lx575_48
.Lx575_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx575_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx575_53
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
                                                                                        jmp   .Lx575_51
.Lx575_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx575_49
                        cmp              edx, 14
                                                                                        je    .Lx575_53
                                                                                        jmp   .Lx575_52
.Lx575_49:
                        cmp              edx, 14
                                                                                        je    .Lx575_52
                        cmp              ecx, 7
                                                                                        je    .Lx575_53
                        cmp              edx, 7
                                                                                        je    .Lx575_53
                        cmp              ecx, 6
                                                                                        jne   .Lx575_50
                        cmp              edx, 6
                                                                                        jne   .Lx575_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx575_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx575_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx575_51
                                                                                        jmp   .Lx575_52
.Lx575_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx575_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx575_53
.Lx575_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx575_54
.Lx575_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx575_54
.Lx575_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx575_54:
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 99
                                                                                        je    n240_call_builtin_prolog_α
                                                                                        jmp   n215_var_ref_α
n214_call_builtin_prolog_β:
                                                                                        jmp   n240_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        add              rsp, 16
                                                                                        jmp   n216_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              dword ptr [rbp + 3604], 1
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n217_lit_string_α
.Lx578_0:
                        .quad            .Lx578_0_s
.Lx578_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        mov              qword ptr [rbp + 3376], 1
                        mov              dword ptr [rbp + 3380], 1
                        mov              rax, qword ptr [rip + .Lx579_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n218_var_ref_α
.Lx579_0:
                        .quad            .Lx579_0_s
.Lx579_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        add              rsp, 16
                                                                                        jmp   n219_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                        add              rsp, 16
                                                                                        jmp   n220_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n220_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3320], rax
                        mov              rax, qword ptr [rbp + 3264]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 3336], rax
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3352], rax
                        lea              rdi, [rbp + 3312]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n221_lit_string_α
n220_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:
                        mov              qword ptr [rbp + 3504], 1
                        mov              dword ptr [rbp + 3508], 1
                        mov              rax, qword ptr [rip + .Lx585_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n222_var_ref_α
.Lx585_0:
                        .quad            .Lx585_0_s
.Lx585_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        add              rsp, 16
                                                                                        jmp   n223_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        add              rsp, 16
                                                                                        jmp   n224_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n224_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3448], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3464], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3480], rax
                        lea              rdi, [rbp + 3440]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n225_call_builtin_prolog_α
n224_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n225_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3544], rax
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3304]
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
                                                                                        je    n240_call_builtin_prolog_α
                                                                                        jmp   n226_call_builtin_prolog_α
n225_call_builtin_prolog_β:
                                                                                        jmp   n240_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n226_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3224], rax
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3240], rax
                        lea              rdi, [rbp + 3216]
                        lea              r8, [rbp + 3216]
.Lx592_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx592_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx592_41
                        cmp              esi, 1
                                                                                        jne   .Lx592_55
                        mov              r8, rax
                                                                                        jmp   .Lx592_40
.Lx592_55:
                        cmp              esi, 2
                                                                                        jne   .Lx592_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx592_41
                        mov              r8, rax
                                                                                        jmp   .Lx592_40
.Lx592_56:
                        cmp              eax, 13
                                                                                        jne   .Lx592_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx592_41
                        cmp              rax, r8
                                                                                        je    .Lx592_41
                        mov              r8, rax
                                                                                        jmp   .Lx592_40
.Lx592_41:
                        lea              r9, [rbp + 3232]
.Lx592_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx592_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx592_43
                        cmp              esi, 1
                                                                                        jne   .Lx592_57
                        mov              r9, rax
                                                                                        jmp   .Lx592_42
.Lx592_57:
                        cmp              esi, 2
                                                                                        jne   .Lx592_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx592_43
                        mov              r9, rax
                                                                                        jmp   .Lx592_42
.Lx592_58:
                        cmp              eax, 13
                                                                                        jne   .Lx592_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx592_43
                        cmp              rax, r9
                                                                                        je    .Lx592_43
                        mov              r9, rax
                                                                                        jmp   .Lx592_42
.Lx592_43:
                        cmp              r8, r9
                                                                                        je    .Lx592_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx592_44
                        cmp              eax, 99
                                                                                        je    .Lx592_44
                        cmp              eax, 13
                                                                                        jne   .Lx592_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx592_44
                                                                                        jmp   .Lx592_45
.Lx592_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx592_53
                        cmp              eax, 99
                                                                                        je    .Lx592_53
                        cmp              eax, 13
                                                                                        jne   .Lx592_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx592_53
                                                                                        jmp   .Lx592_46
.Lx592_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx592_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx592_53
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
                                                                                        jmp   .Lx592_51
.Lx592_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx592_47
                        cmp              eax, 99
                                                                                        je    .Lx592_47
                        cmp              eax, 13
                                                                                        jne   .Lx592_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx592_47
                                                                                        jmp   .Lx592_48
.Lx592_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx592_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx592_53
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
                                                                                        jmp   .Lx592_51
.Lx592_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx592_49
                        cmp              edx, 14
                                                                                        je    .Lx592_53
                                                                                        jmp   .Lx592_52
.Lx592_49:
                        cmp              edx, 14
                                                                                        je    .Lx592_52
                        cmp              ecx, 7
                                                                                        je    .Lx592_53
                        cmp              edx, 7
                                                                                        je    .Lx592_53
                        cmp              ecx, 6
                                                                                        jne   .Lx592_50
                        cmp              edx, 6
                                                                                        jne   .Lx592_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx592_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx592_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx592_51
                                                                                        jmp   .Lx592_52
.Lx592_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx592_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx592_53
.Lx592_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx592_54
.Lx592_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx592_54
.Lx592_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx592_54:
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 99
                                                                                        je    n240_call_builtin_prolog_α
                                                                                        jmp   n227_cut_α
n226_call_builtin_prolog_β:
                                                                                        jmp   n240_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n227_cut_α:
                                                                                        jmp   n228_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        add              rsp, 16
                                                                                        jmp   n229_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n229_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3176], rax
                        .section         .rodata
.Lrkfn597:              .string          "$tt_integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn597]
                        lea              rsi, [rbp + 3168]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 99
                                                                                        je    n340_call_builtin_prolog_α
                                                                                        jmp   n230_var_ref_α
n229_call_builtin_prolog_β:
                                                                                        jmp   n340_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        add              rsp, 16
                                                                                        jmp   n231_var_α
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:
                        mov              rax, qword ptr [rbp + 8128]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 8136]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n232_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_integer_α:
                        mov              qword ptr [rbp + 3136], 6
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n233_call_builtin_prolog_α
.Lx602_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n233_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3080], rax
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3096], rax
                        lea              rdi, [rbp + 3072]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              eax, 99
                                                                                        je    n340_call_builtin_prolog_α
                                                                                        jmp   n234_call_builtin_prolog_α
n233_call_builtin_prolog_β:
                                                                                        jmp   n340_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n234_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3032], rax
                        lea              rdi, [rbp + 3008]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n340_call_builtin_prolog_α
                                                                                        jmp   n235_var_ref_α
n234_call_builtin_prolog_β:
                                                                                        jmp   n340_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        add              rsp, 16
                                                                                        jmp   n236_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        add              rsp, 16
                                                                                        jmp   n237_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        add              rsp, 16
                                                                                        jmp   n238_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_proc_staged_α:
                        lea              rsi, [rbp + 2944]
                        lea              rdx, [rbp + 2960]
                        lea              rcx, [rbp + 2976]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx612_2
.Lx612_2:
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n340_call_builtin_prolog_α
                                                                                        jmp   n239_move_label_α
n238_call_proc_staged_β:
                                                                                        jmp   n340_call_builtin_prolog_α
.Lx612_0:
                        .quad            .Lx612_0_s
.Lx612_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n239_move_label_α:
                        lea              rax, [rip + n238_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n240_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n241_var_ref_α
n240_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        add              rsp, 16
                                                                                        jmp   n242_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:
                        mov              qword ptr [rbp + 2800], 6
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n243_lit_string_α
.Lx618_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:
                        mov              qword ptr [rbp + 2816], 1
                        mov              dword ptr [rbp + 2820], 1
                        mov              rax, qword ptr [rip + .Lx619_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n244_call_builtin_prolog_α
.Lx619_0:
                        .quad            .Lx619_0_s
.Lx619_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n244_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2744], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2760], rax
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2776], rax
                        lea              rdi, [rbp + 2736]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              eax, 99
                                                                                        je    n265_var_ref_α
                                                                                        jmp   n245_var_ref_α
n244_call_builtin_prolog_β:
                                                                                        jmp   n265_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        add              rsp, 16
                                                                                        jmp   n246_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              dword ptr [rbp + 2708], 1
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n247_var_ref_α
.Lx623_0:
                        .quad            .Lx623_0_s
.Lx623_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        add              rsp, 16
                                                                                        jmp   n248_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2664], rax
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2680], rax
                        lea              rdi, [rbp + 2656]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              eax, 99
                                                                                        je    n264_call_builtin_prolog_α
                                                                                        jmp   n249_call_builtin_prolog_α
n248_call_builtin_prolog_β:
                                                                                        jmp   n264_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n249_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rdi, [rbp + 2576]
                        lea              r8, [rbp + 2576]
.Lx627_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx627_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx627_41
                        cmp              esi, 1
                                                                                        jne   .Lx627_55
                        mov              r8, rax
                                                                                        jmp   .Lx627_40
.Lx627_55:
                        cmp              esi, 2
                                                                                        jne   .Lx627_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx627_41
                        mov              r8, rax
                                                                                        jmp   .Lx627_40
.Lx627_56:
                        cmp              eax, 13
                                                                                        jne   .Lx627_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx627_41
                        cmp              rax, r8
                                                                                        je    .Lx627_41
                        mov              r8, rax
                                                                                        jmp   .Lx627_40
.Lx627_41:
                        lea              r9, [rbp + 2592]
.Lx627_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx627_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx627_43
                        cmp              esi, 1
                                                                                        jne   .Lx627_57
                        mov              r9, rax
                                                                                        jmp   .Lx627_42
.Lx627_57:
                        cmp              esi, 2
                                                                                        jne   .Lx627_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx627_43
                        mov              r9, rax
                                                                                        jmp   .Lx627_42
.Lx627_58:
                        cmp              eax, 13
                                                                                        jne   .Lx627_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx627_43
                        cmp              rax, r9
                                                                                        je    .Lx627_43
                        mov              r9, rax
                                                                                        jmp   .Lx627_42
.Lx627_43:
                        cmp              r8, r9
                                                                                        je    .Lx627_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx627_44
                        cmp              eax, 99
                                                                                        je    .Lx627_44
                        cmp              eax, 13
                                                                                        jne   .Lx627_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx627_44
                                                                                        jmp   .Lx627_45
.Lx627_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx627_53
                        cmp              eax, 99
                                                                                        je    .Lx627_53
                        cmp              eax, 13
                                                                                        jne   .Lx627_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx627_53
                                                                                        jmp   .Lx627_46
.Lx627_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx627_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx627_53
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
                                                                                        jmp   .Lx627_51
.Lx627_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx627_47
                        cmp              eax, 99
                                                                                        je    .Lx627_47
                        cmp              eax, 13
                                                                                        jne   .Lx627_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx627_47
                                                                                        jmp   .Lx627_48
.Lx627_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx627_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx627_53
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
                                                                                        jmp   .Lx627_51
.Lx627_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx627_49
                        cmp              edx, 14
                                                                                        je    .Lx627_53
                                                                                        jmp   .Lx627_52
.Lx627_49:
                        cmp              edx, 14
                                                                                        je    .Lx627_52
                        cmp              ecx, 7
                                                                                        je    .Lx627_53
                        cmp              edx, 7
                                                                                        je    .Lx627_53
                        cmp              ecx, 6
                                                                                        jne   .Lx627_50
                        cmp              edx, 6
                                                                                        jne   .Lx627_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx627_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx627_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx627_51
                                                                                        jmp   .Lx627_52
.Lx627_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx627_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx627_53
.Lx627_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx627_54
.Lx627_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx627_54
.Lx627_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx627_54:
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    n264_call_builtin_prolog_α
                                                                                        jmp   n250_var_ref_α
n249_call_builtin_prolog_β:
                                                                                        jmp   n264_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        add              rsp, 16
                                                                                        jmp   n251_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        add              rsp, 16
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n252_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2520], rax
                        lea              rdi, [rbp + 2496]
                        lea              r8, [rbp + 2496]
.Lx632_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx632_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx632_41
                        cmp              esi, 1
                                                                                        jne   .Lx632_55
                        mov              r8, rax
                                                                                        jmp   .Lx632_40
.Lx632_55:
                        cmp              esi, 2
                                                                                        jne   .Lx632_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx632_41
                        mov              r8, rax
                                                                                        jmp   .Lx632_40
.Lx632_56:
                        cmp              eax, 13
                                                                                        jne   .Lx632_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx632_41
                        cmp              rax, r8
                                                                                        je    .Lx632_41
                        mov              r8, rax
                                                                                        jmp   .Lx632_40
.Lx632_41:
                        lea              r9, [rbp + 2512]
.Lx632_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx632_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx632_43
                        cmp              esi, 1
                                                                                        jne   .Lx632_57
                        mov              r9, rax
                                                                                        jmp   .Lx632_42
.Lx632_57:
                        cmp              esi, 2
                                                                                        jne   .Lx632_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx632_43
                        mov              r9, rax
                                                                                        jmp   .Lx632_42
.Lx632_58:
                        cmp              eax, 13
                                                                                        jne   .Lx632_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx632_43
                        cmp              rax, r9
                                                                                        je    .Lx632_43
                        mov              r9, rax
                                                                                        jmp   .Lx632_42
.Lx632_43:
                        cmp              r8, r9
                                                                                        je    .Lx632_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx632_44
                        cmp              eax, 99
                                                                                        je    .Lx632_44
                        cmp              eax, 13
                                                                                        jne   .Lx632_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx632_44
                                                                                        jmp   .Lx632_45
.Lx632_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx632_53
                        cmp              eax, 99
                                                                                        je    .Lx632_53
                        cmp              eax, 13
                                                                                        jne   .Lx632_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx632_53
                                                                                        jmp   .Lx632_46
.Lx632_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx632_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx632_53
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
                                                                                        jmp   .Lx632_51
.Lx632_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx632_47
                        cmp              eax, 99
                                                                                        je    .Lx632_47
                        cmp              eax, 13
                                                                                        jne   .Lx632_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx632_47
                                                                                        jmp   .Lx632_48
.Lx632_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx632_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx632_53
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
                                                                                        jmp   .Lx632_51
.Lx632_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx632_49
                        cmp              edx, 14
                                                                                        je    .Lx632_53
                                                                                        jmp   .Lx632_52
.Lx632_49:
                        cmp              edx, 14
                                                                                        je    .Lx632_52
                        cmp              ecx, 7
                                                                                        je    .Lx632_53
                        cmp              edx, 7
                                                                                        je    .Lx632_53
                        cmp              ecx, 6
                                                                                        jne   .Lx632_50
                        cmp              edx, 6
                                                                                        jne   .Lx632_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx632_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx632_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx632_51
                                                                                        jmp   .Lx632_52
.Lx632_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx632_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx632_53
.Lx632_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx632_54
.Lx632_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx632_54
.Lx632_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx632_54:
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    n264_call_builtin_prolog_α
                                                                                        jmp   n253_var_ref_α
n252_call_builtin_prolog_β:
                                                                                        jmp   n264_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        add              rsp, 16
                                                                                        jmp   n254_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              dword ptr [rbp + 2468], 1
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n255_var_ref_α
.Lx635_0:
                        .quad            .Lx635_0_s
.Lx635_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        add              rsp, 16
                                                                                        jmp   n256_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n256_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2440], rax
                        lea              rdi, [rbp + 2416]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n264_call_builtin_prolog_α
                                                                                        jmp   n257_call_builtin_prolog_α
n256_call_builtin_prolog_β:
                                                                                        jmp   n264_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n257_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        lea              rdi, [rbp + 2336]
                        lea              r8, [rbp + 2336]
.Lx639_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx639_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx639_41
                        cmp              esi, 1
                                                                                        jne   .Lx639_55
                        mov              r8, rax
                                                                                        jmp   .Lx639_40
.Lx639_55:
                        cmp              esi, 2
                                                                                        jne   .Lx639_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx639_41
                        mov              r8, rax
                                                                                        jmp   .Lx639_40
.Lx639_56:
                        cmp              eax, 13
                                                                                        jne   .Lx639_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx639_41
                        cmp              rax, r8
                                                                                        je    .Lx639_41
                        mov              r8, rax
                                                                                        jmp   .Lx639_40
.Lx639_41:
                        lea              r9, [rbp + 2352]
.Lx639_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx639_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx639_43
                        cmp              esi, 1
                                                                                        jne   .Lx639_57
                        mov              r9, rax
                                                                                        jmp   .Lx639_42
.Lx639_57:
                        cmp              esi, 2
                                                                                        jne   .Lx639_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx639_43
                        mov              r9, rax
                                                                                        jmp   .Lx639_42
.Lx639_58:
                        cmp              eax, 13
                                                                                        jne   .Lx639_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx639_43
                        cmp              rax, r9
                                                                                        je    .Lx639_43
                        mov              r9, rax
                                                                                        jmp   .Lx639_42
.Lx639_43:
                        cmp              r8, r9
                                                                                        je    .Lx639_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx639_44
                        cmp              eax, 99
                                                                                        je    .Lx639_44
                        cmp              eax, 13
                                                                                        jne   .Lx639_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx639_44
                                                                                        jmp   .Lx639_45
.Lx639_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx639_53
                        cmp              eax, 99
                                                                                        je    .Lx639_53
                        cmp              eax, 13
                                                                                        jne   .Lx639_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx639_53
                                                                                        jmp   .Lx639_46
.Lx639_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx639_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx639_53
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
                                                                                        jmp   .Lx639_51
.Lx639_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx639_47
                        cmp              eax, 99
                                                                                        je    .Lx639_47
                        cmp              eax, 13
                                                                                        jne   .Lx639_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx639_47
                                                                                        jmp   .Lx639_48
.Lx639_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx639_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx639_53
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
                                                                                        jmp   .Lx639_51
.Lx639_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx639_49
                        cmp              edx, 14
                                                                                        je    .Lx639_53
                                                                                        jmp   .Lx639_52
.Lx639_49:
                        cmp              edx, 14
                                                                                        je    .Lx639_52
                        cmp              ecx, 7
                                                                                        je    .Lx639_53
                        cmp              edx, 7
                                                                                        je    .Lx639_53
                        cmp              ecx, 6
                                                                                        jne   .Lx639_50
                        cmp              edx, 6
                                                                                        jne   .Lx639_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx639_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx639_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx639_51
                                                                                        jmp   .Lx639_52
.Lx639_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx639_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx639_53
.Lx639_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx639_54
.Lx639_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx639_54
.Lx639_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx639_54:
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    n264_call_builtin_prolog_α
                                                                                        jmp   n258_cut_α
n257_call_builtin_prolog_β:
                                                                                        jmp   n264_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n258_cut_α:
                                                                                        jmp   n259_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        add              rsp, 16
                                                                                        jmp   n260_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        add              rsp, 16
                                                                                        jmp   n261_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n261_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        add              rsp, 16
                                                                                        jmp   n262_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n262_call_proc_staged_α:
                        lea              rsi, [rbp + 2272]
                        lea              rdx, [rbp + 2288]
                        lea              rcx, [rbp + 2304]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx648_2
.Lx648_2:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n340_call_builtin_prolog_α
                                                                                        jmp   n263_move_label_α
n262_call_proc_staged_β:
                                                                                        jmp   n340_call_builtin_prolog_α
.Lx648_0:
                        .quad            .Lx648_0_s
.Lx648_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n263_move_label_α:
                        lea              rax, [rip + n262_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n264_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 2184], rax
                        lea              rdi, [rbp + 2176]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n265_var_ref_α
n264_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n265_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        add              rsp, 16
                                                                                        jmp   n266_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_integer_α:
                        mov              qword ptr [rbp + 2128], 6
                        mov              rax, qword ptr [rip + .Lx654_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n267_lit_string_α
.Lx654_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              dword ptr [rbp + 2148], 3
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n268_call_builtin_prolog_α
.Lx655_0:
                        .quad            .Lx655_0_s
.Lx655_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2104], rax
                        lea              rdi, [rbp + 2064]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    n292_var_ref_α
                                                                                        jmp   n269_var_ref_α
n268_call_builtin_prolog_β:
                                                                                        jmp   n292_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        add              rsp, 16
                                                                                        jmp   n270_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              dword ptr [rbp + 2036], 3
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n271_var_ref_α
.Lx659_0:
                        .quad            .Lx659_0_s
.Lx659_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        add              rsp, 16
                                                                                        jmp   n272_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n272_call_builtin_prolog_α:
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
                        cmp              eax, 99
                                                                                        je    n291_call_builtin_prolog_α
                                                                                        jmp   n273_call_builtin_prolog_α
n272_call_builtin_prolog_β:
                                                                                        jmp   n291_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n273_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1904]
                        lea              r8, [rbp + 1904]
.Lx663_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx663_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx663_41
                        cmp              esi, 1
                                                                                        jne   .Lx663_55
                        mov              r8, rax
                                                                                        jmp   .Lx663_40
.Lx663_55:
                        cmp              esi, 2
                                                                                        jne   .Lx663_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx663_41
                        mov              r8, rax
                                                                                        jmp   .Lx663_40
.Lx663_56:
                        cmp              eax, 13
                                                                                        jne   .Lx663_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx663_41
                        cmp              rax, r8
                                                                                        je    .Lx663_41
                        mov              r8, rax
                                                                                        jmp   .Lx663_40
.Lx663_41:
                        lea              r9, [rbp + 1920]
.Lx663_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx663_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx663_43
                        cmp              esi, 1
                                                                                        jne   .Lx663_57
                        mov              r9, rax
                                                                                        jmp   .Lx663_42
.Lx663_57:
                        cmp              esi, 2
                                                                                        jne   .Lx663_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx663_43
                        mov              r9, rax
                                                                                        jmp   .Lx663_42
.Lx663_58:
                        cmp              eax, 13
                                                                                        jne   .Lx663_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx663_43
                        cmp              rax, r9
                                                                                        je    .Lx663_43
                        mov              r9, rax
                                                                                        jmp   .Lx663_42
.Lx663_43:
                        cmp              r8, r9
                                                                                        je    .Lx663_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx663_44
                        cmp              eax, 99
                                                                                        je    .Lx663_44
                        cmp              eax, 13
                                                                                        jne   .Lx663_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx663_44
                                                                                        jmp   .Lx663_45
.Lx663_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx663_53
                        cmp              eax, 99
                                                                                        je    .Lx663_53
                        cmp              eax, 13
                                                                                        jne   .Lx663_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx663_53
                                                                                        jmp   .Lx663_46
.Lx663_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx663_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx663_53
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
                                                                                        jmp   .Lx663_51
.Lx663_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx663_47
                        cmp              eax, 99
                                                                                        je    .Lx663_47
                        cmp              eax, 13
                                                                                        jne   .Lx663_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx663_47
                                                                                        jmp   .Lx663_48
.Lx663_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx663_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx663_53
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
                                                                                        jmp   .Lx663_51
.Lx663_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx663_49
                        cmp              edx, 14
                                                                                        je    .Lx663_53
                                                                                        jmp   .Lx663_52
.Lx663_49:
                        cmp              edx, 14
                                                                                        je    .Lx663_52
                        cmp              ecx, 7
                                                                                        je    .Lx663_53
                        cmp              edx, 7
                                                                                        je    .Lx663_53
                        cmp              ecx, 6
                                                                                        jne   .Lx663_50
                        cmp              edx, 6
                                                                                        jne   .Lx663_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx663_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx663_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx663_51
                                                                                        jmp   .Lx663_52
.Lx663_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx663_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx663_53
.Lx663_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx663_54
.Lx663_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx663_54
.Lx663_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx663_54:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n291_call_builtin_prolog_α
                                                                                        jmp   n274_var_ref_α
n273_call_builtin_prolog_β:
                                                                                        jmp   n291_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        add              rsp, 16
                                                                                        jmp   n275_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n275_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        add              rsp, 16
                                                                                        jmp   n276_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n276_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                        lea              rdi, [rbp + 1824]
                        lea              r8, [rbp + 1824]
.Lx668_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx668_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx668_41
                        cmp              esi, 1
                                                                                        jne   .Lx668_55
                        mov              r8, rax
                                                                                        jmp   .Lx668_40
.Lx668_55:
                        cmp              esi, 2
                                                                                        jne   .Lx668_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx668_41
                        mov              r8, rax
                                                                                        jmp   .Lx668_40
.Lx668_56:
                        cmp              eax, 13
                                                                                        jne   .Lx668_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx668_41
                        cmp              rax, r8
                                                                                        je    .Lx668_41
                        mov              r8, rax
                                                                                        jmp   .Lx668_40
.Lx668_41:
                        lea              r9, [rbp + 1840]
.Lx668_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx668_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx668_43
                        cmp              esi, 1
                                                                                        jne   .Lx668_57
                        mov              r9, rax
                                                                                        jmp   .Lx668_42
.Lx668_57:
                        cmp              esi, 2
                                                                                        jne   .Lx668_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx668_43
                        mov              r9, rax
                                                                                        jmp   .Lx668_42
.Lx668_58:
                        cmp              eax, 13
                                                                                        jne   .Lx668_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx668_43
                        cmp              rax, r9
                                                                                        je    .Lx668_43
                        mov              r9, rax
                                                                                        jmp   .Lx668_42
.Lx668_43:
                        cmp              r8, r9
                                                                                        je    .Lx668_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx668_44
                        cmp              eax, 99
                                                                                        je    .Lx668_44
                        cmp              eax, 13
                                                                                        jne   .Lx668_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx668_44
                                                                                        jmp   .Lx668_45
.Lx668_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx668_53
                        cmp              eax, 99
                                                                                        je    .Lx668_53
                        cmp              eax, 13
                                                                                        jne   .Lx668_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx668_53
                                                                                        jmp   .Lx668_46
.Lx668_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx668_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx668_53
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
                                                                                        jmp   .Lx668_51
.Lx668_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx668_47
                        cmp              eax, 99
                                                                                        je    .Lx668_47
                        cmp              eax, 13
                                                                                        jne   .Lx668_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx668_47
                                                                                        jmp   .Lx668_48
.Lx668_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx668_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx668_53
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
                                                                                        jmp   .Lx668_51
.Lx668_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx668_49
                        cmp              edx, 14
                                                                                        je    .Lx668_53
                                                                                        jmp   .Lx668_52
.Lx668_49:
                        cmp              edx, 14
                                                                                        je    .Lx668_52
                        cmp              ecx, 7
                                                                                        je    .Lx668_53
                        cmp              edx, 7
                                                                                        je    .Lx668_53
                        cmp              ecx, 6
                                                                                        jne   .Lx668_50
                        cmp              edx, 6
                                                                                        jne   .Lx668_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx668_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx668_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx668_51
                                                                                        jmp   .Lx668_52
.Lx668_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx668_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx668_53
.Lx668_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx668_54
.Lx668_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx668_54
.Lx668_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx668_54:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n291_call_builtin_prolog_α
                                                                                        jmp   n277_var_ref_α
n276_call_builtin_prolog_β:
                                                                                        jmp   n291_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        add              rsp, 16
                                                                                        jmp   n278_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              dword ptr [rbp + 1796], 1
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n279_lit_string_α
.Lx671_0:
                        .quad            .Lx671_0_s
.Lx671_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              dword ptr [rbp + 1684], 3
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n280_var_ref_α
.Lx672_0:
                        .quad            .Lx672_0_s
.Lx672_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        add              rsp, 16
                                                                                        jmp   n281_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n281_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1656], rax
                        lea              rdi, [rbp + 1632]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n282_var_ref_α
n281_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n282_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        add              rsp, 16
                                                                                        jmp   n283_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n283_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1728]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n291_call_builtin_prolog_α
                                                                                        jmp   n284_call_builtin_prolog_α
n283_call_builtin_prolog_β:
                                                                                        jmp   n291_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n284_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rdi, [rbp + 1552]
                        lea              r8, [rbp + 1552]
.Lx679_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx679_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx679_41
                        cmp              esi, 1
                                                                                        jne   .Lx679_55
                        mov              r8, rax
                                                                                        jmp   .Lx679_40
.Lx679_55:
                        cmp              esi, 2
                                                                                        jne   .Lx679_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx679_41
                        mov              r8, rax
                                                                                        jmp   .Lx679_40
.Lx679_56:
                        cmp              eax, 13
                                                                                        jne   .Lx679_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx679_41
                        cmp              rax, r8
                                                                                        je    .Lx679_41
                        mov              r8, rax
                                                                                        jmp   .Lx679_40
.Lx679_41:
                        lea              r9, [rbp + 1568]
.Lx679_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx679_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx679_43
                        cmp              esi, 1
                                                                                        jne   .Lx679_57
                        mov              r9, rax
                                                                                        jmp   .Lx679_42
.Lx679_57:
                        cmp              esi, 2
                                                                                        jne   .Lx679_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx679_43
                        mov              r9, rax
                                                                                        jmp   .Lx679_42
.Lx679_58:
                        cmp              eax, 13
                                                                                        jne   .Lx679_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx679_43
                        cmp              rax, r9
                                                                                        je    .Lx679_43
                        mov              r9, rax
                                                                                        jmp   .Lx679_42
.Lx679_43:
                        cmp              r8, r9
                                                                                        je    .Lx679_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx679_44
                        cmp              eax, 99
                                                                                        je    .Lx679_44
                        cmp              eax, 13
                                                                                        jne   .Lx679_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx679_44
                                                                                        jmp   .Lx679_45
.Lx679_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx679_53
                        cmp              eax, 99
                                                                                        je    .Lx679_53
                        cmp              eax, 13
                                                                                        jne   .Lx679_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx679_53
                                                                                        jmp   .Lx679_46
.Lx679_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx679_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx679_53
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
                                                                                        jmp   .Lx679_51
.Lx679_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx679_47
                        cmp              eax, 99
                                                                                        je    .Lx679_47
                        cmp              eax, 13
                                                                                        jne   .Lx679_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx679_47
                                                                                        jmp   .Lx679_48
.Lx679_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx679_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx679_53
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
                                                                                        jmp   .Lx679_51
.Lx679_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx679_49
                        cmp              edx, 14
                                                                                        je    .Lx679_53
                                                                                        jmp   .Lx679_52
.Lx679_49:
                        cmp              edx, 14
                                                                                        je    .Lx679_52
                        cmp              ecx, 7
                                                                                        je    .Lx679_53
                        cmp              edx, 7
                                                                                        je    .Lx679_53
                        cmp              ecx, 6
                                                                                        jne   .Lx679_50
                        cmp              edx, 6
                                                                                        jne   .Lx679_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx679_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx679_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx679_51
                                                                                        jmp   .Lx679_52
.Lx679_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx679_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx679_53
.Lx679_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx679_54
.Lx679_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx679_54
.Lx679_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx679_54:
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    n291_call_builtin_prolog_α
                                                                                        jmp   n285_cut_α
n284_call_builtin_prolog_β:
                                                                                        jmp   n291_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n285_cut_α:
                                                                                        jmp   n286_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        add              rsp, 16
                                                                                        jmp   n287_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        add              rsp, 16
                                                                                        jmp   n288_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        add              rsp, 16
                                                                                        jmp   n289_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n289_call_proc_staged_α:
                        lea              rsi, [rbp + 1488]
                        lea              rdx, [rbp + 1504]
                        lea              rcx, [rbp + 1520]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx688_2
.Lx688_2:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n340_call_builtin_prolog_α
                                                                                        jmp   n290_move_label_α
n289_call_proc_staged_β:
                                                                                        jmp   n340_call_builtin_prolog_α
.Lx688_0:
                        .quad            .Lx688_0_s
.Lx688_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n290_move_label_α:
                        lea              rax, [rip + n289_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n291_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n292_var_ref_α
n291_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        add              rsp, 16
                                                                                        jmp   n293_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 6
                        mov              rax, qword ptr [rip + .Lx694_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n294_lit_string_α
.Lx694_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              dword ptr [rbp + 1364], 3
                        mov              rax, qword ptr [rip + .Lx695_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n295_call_builtin_prolog_α
.Lx695_0:
                        .quad            .Lx695_0_s
.Lx695_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n295_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1280]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n317_var_ref_α
                                                                                        jmp   n296_var_ref_α
n295_call_builtin_prolog_β:
                                                                                        jmp   n317_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        add              rsp, 16
                                                                                        jmp   n297_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              dword ptr [rbp + 1252], 3
                        mov              rax, qword ptr [rip + .Lx699_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n298_var_ref_α
.Lx699_0:
                        .quad            .Lx699_0_s
.Lx699_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        add              rsp, 16
                                                                                        jmp   n299_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n299_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1200]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n316_call_builtin_prolog_α
                                                                                        jmp   n300_call_builtin_prolog_α
n299_call_builtin_prolog_β:
                                                                                        jmp   n316_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n300_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1120]
                        lea              r8, [rbp + 1120]
.Lx703_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx703_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx703_41
                        cmp              esi, 1
                                                                                        jne   .Lx703_55
                        mov              r8, rax
                                                                                        jmp   .Lx703_40
.Lx703_55:
                        cmp              esi, 2
                                                                                        jne   .Lx703_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx703_41
                        mov              r8, rax
                                                                                        jmp   .Lx703_40
.Lx703_56:
                        cmp              eax, 13
                                                                                        jne   .Lx703_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx703_41
                        cmp              rax, r8
                                                                                        je    .Lx703_41
                        mov              r8, rax
                                                                                        jmp   .Lx703_40
.Lx703_41:
                        lea              r9, [rbp + 1136]
.Lx703_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx703_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx703_43
                        cmp              esi, 1
                                                                                        jne   .Lx703_57
                        mov              r9, rax
                                                                                        jmp   .Lx703_42
.Lx703_57:
                        cmp              esi, 2
                                                                                        jne   .Lx703_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx703_43
                        mov              r9, rax
                                                                                        jmp   .Lx703_42
.Lx703_58:
                        cmp              eax, 13
                                                                                        jne   .Lx703_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx703_43
                        cmp              rax, r9
                                                                                        je    .Lx703_43
                        mov              r9, rax
                                                                                        jmp   .Lx703_42
.Lx703_43:
                        cmp              r8, r9
                                                                                        je    .Lx703_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx703_44
                        cmp              eax, 99
                                                                                        je    .Lx703_44
                        cmp              eax, 13
                                                                                        jne   .Lx703_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx703_44
                                                                                        jmp   .Lx703_45
.Lx703_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx703_53
                        cmp              eax, 99
                                                                                        je    .Lx703_53
                        cmp              eax, 13
                                                                                        jne   .Lx703_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx703_53
                                                                                        jmp   .Lx703_46
.Lx703_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx703_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx703_53
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
                                                                                        jmp   .Lx703_51
.Lx703_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx703_47
                        cmp              eax, 99
                                                                                        je    .Lx703_47
                        cmp              eax, 13
                                                                                        jne   .Lx703_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx703_47
                                                                                        jmp   .Lx703_48
.Lx703_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx703_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx703_53
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
                                                                                        jmp   .Lx703_51
.Lx703_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx703_49
                        cmp              edx, 14
                                                                                        je    .Lx703_53
                                                                                        jmp   .Lx703_52
.Lx703_49:
                        cmp              edx, 14
                                                                                        je    .Lx703_52
                        cmp              ecx, 7
                                                                                        je    .Lx703_53
                        cmp              edx, 7
                                                                                        je    .Lx703_53
                        cmp              ecx, 6
                                                                                        jne   .Lx703_50
                        cmp              edx, 6
                                                                                        jne   .Lx703_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx703_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx703_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx703_51
                                                                                        jmp   .Lx703_52
.Lx703_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx703_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx703_53
.Lx703_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx703_54
.Lx703_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx703_54
.Lx703_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx703_54:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n316_call_builtin_prolog_α
                                                                                        jmp   n301_var_ref_α
n300_call_builtin_prolog_β:
                                                                                        jmp   n316_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        add              rsp, 16
                                                                                        jmp   n302_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        add              rsp, 16
                                                                                        jmp   n303_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n303_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1040]
                        lea              r8, [rbp + 1040]
.Lx708_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx708_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx708_41
                        cmp              esi, 1
                                                                                        jne   .Lx708_55
                        mov              r8, rax
                                                                                        jmp   .Lx708_40
.Lx708_55:
                        cmp              esi, 2
                                                                                        jne   .Lx708_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx708_41
                        mov              r8, rax
                                                                                        jmp   .Lx708_40
.Lx708_56:
                        cmp              eax, 13
                                                                                        jne   .Lx708_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx708_41
                        cmp              rax, r8
                                                                                        je    .Lx708_41
                        mov              r8, rax
                                                                                        jmp   .Lx708_40
.Lx708_41:
                        lea              r9, [rbp + 1056]
.Lx708_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx708_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx708_43
                        cmp              esi, 1
                                                                                        jne   .Lx708_57
                        mov              r9, rax
                                                                                        jmp   .Lx708_42
.Lx708_57:
                        cmp              esi, 2
                                                                                        jne   .Lx708_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx708_43
                        mov              r9, rax
                                                                                        jmp   .Lx708_42
.Lx708_58:
                        cmp              eax, 13
                                                                                        jne   .Lx708_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx708_43
                        cmp              rax, r9
                                                                                        je    .Lx708_43
                        mov              r9, rax
                                                                                        jmp   .Lx708_42
.Lx708_43:
                        cmp              r8, r9
                                                                                        je    .Lx708_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx708_44
                        cmp              eax, 99
                                                                                        je    .Lx708_44
                        cmp              eax, 13
                                                                                        jne   .Lx708_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx708_44
                                                                                        jmp   .Lx708_45
.Lx708_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx708_53
                        cmp              eax, 99
                                                                                        je    .Lx708_53
                        cmp              eax, 13
                                                                                        jne   .Lx708_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx708_53
                                                                                        jmp   .Lx708_46
.Lx708_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx708_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx708_53
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
                                                                                        jmp   .Lx708_51
.Lx708_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx708_47
                        cmp              eax, 99
                                                                                        je    .Lx708_47
                        cmp              eax, 13
                                                                                        jne   .Lx708_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx708_47
                                                                                        jmp   .Lx708_48
.Lx708_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx708_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx708_53
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
                                                                                        jmp   .Lx708_51
.Lx708_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx708_49
                        cmp              edx, 14
                                                                                        je    .Lx708_53
                                                                                        jmp   .Lx708_52
.Lx708_49:
                        cmp              edx, 14
                                                                                        je    .Lx708_52
                        cmp              ecx, 7
                                                                                        je    .Lx708_53
                        cmp              edx, 7
                                                                                        je    .Lx708_53
                        cmp              ecx, 6
                                                                                        jne   .Lx708_50
                        cmp              edx, 6
                                                                                        jne   .Lx708_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx708_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx708_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx708_51
                                                                                        jmp   .Lx708_52
.Lx708_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx708_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx708_53
.Lx708_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx708_54
.Lx708_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx708_54
.Lx708_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx708_54:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n316_call_builtin_prolog_α
                                                                                        jmp   n304_var_ref_α
n303_call_builtin_prolog_β:
                                                                                        jmp   n316_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        add              rsp, 16
                                                                                        jmp   n305_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx711_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n306_var_ref_α
.Lx711_0:
                        .quad            .Lx711_0_s
.Lx711_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        add              rsp, 16
                                                                                        jmp   n307_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        add              rsp, 16
                                                                                        jmp   n308_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n308_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 904]
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
                                                                                        je    n316_call_builtin_prolog_α
                                                                                        jmp   n309_call_builtin_prolog_α
n308_call_builtin_prolog_β:
                                                                                        jmp   n316_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n309_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 848]
                        lea              r8, [rbp + 848]
.Lx717_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx717_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx717_41
                        cmp              esi, 1
                                                                                        jne   .Lx717_55
                        mov              r8, rax
                                                                                        jmp   .Lx717_40
.Lx717_55:
                        cmp              esi, 2
                                                                                        jne   .Lx717_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx717_41
                        mov              r8, rax
                                                                                        jmp   .Lx717_40
.Lx717_56:
                        cmp              eax, 13
                                                                                        jne   .Lx717_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx717_41
                        cmp              rax, r8
                                                                                        je    .Lx717_41
                        mov              r8, rax
                                                                                        jmp   .Lx717_40
.Lx717_41:
                        lea              r9, [rbp + 864]
.Lx717_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx717_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx717_43
                        cmp              esi, 1
                                                                                        jne   .Lx717_57
                        mov              r9, rax
                                                                                        jmp   .Lx717_42
.Lx717_57:
                        cmp              esi, 2
                                                                                        jne   .Lx717_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx717_43
                        mov              r9, rax
                                                                                        jmp   .Lx717_42
.Lx717_58:
                        cmp              eax, 13
                                                                                        jne   .Lx717_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx717_43
                        cmp              rax, r9
                                                                                        je    .Lx717_43
                        mov              r9, rax
                                                                                        jmp   .Lx717_42
.Lx717_43:
                        cmp              r8, r9
                                                                                        je    .Lx717_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx717_44
                        cmp              eax, 99
                                                                                        je    .Lx717_44
                        cmp              eax, 13
                                                                                        jne   .Lx717_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx717_44
                                                                                        jmp   .Lx717_45
.Lx717_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx717_53
                        cmp              eax, 99
                                                                                        je    .Lx717_53
                        cmp              eax, 13
                                                                                        jne   .Lx717_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx717_53
                                                                                        jmp   .Lx717_46
.Lx717_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx717_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx717_53
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
                                                                                        jmp   .Lx717_51
.Lx717_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx717_47
                        cmp              eax, 99
                                                                                        je    .Lx717_47
                        cmp              eax, 13
                                                                                        jne   .Lx717_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx717_47
                                                                                        jmp   .Lx717_48
.Lx717_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx717_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx717_53
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
                                                                                        jmp   .Lx717_51
.Lx717_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx717_49
                        cmp              edx, 14
                                                                                        je    .Lx717_53
                                                                                        jmp   .Lx717_52
.Lx717_49:
                        cmp              edx, 14
                                                                                        je    .Lx717_52
                        cmp              ecx, 7
                                                                                        je    .Lx717_53
                        cmp              edx, 7
                                                                                        je    .Lx717_53
                        cmp              ecx, 6
                                                                                        jne   .Lx717_50
                        cmp              edx, 6
                                                                                        jne   .Lx717_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx717_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx717_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx717_51
                                                                                        jmp   .Lx717_52
.Lx717_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx717_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx717_53
.Lx717_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx717_54
.Lx717_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx717_54
.Lx717_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx717_54:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n316_call_builtin_prolog_α
                                                                                        jmp   n310_cut_α
n309_call_builtin_prolog_β:
                                                                                        jmp   n316_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n310_cut_α:
                                                                                        jmp   n311_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        add              rsp, 16
                                                                                        jmp   n312_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        add              rsp, 16
                                                                                        jmp   n313_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        add              rsp, 16
                                                                                        jmp   n314_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n314_call_proc_staged_α:
                        lea              rsi, [rbp + 784]
                        lea              rdx, [rbp + 800]
                        lea              rcx, [rbp + 816]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx726_2
.Lx726_2:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n340_call_builtin_prolog_α
                                                                                        jmp   n315_move_label_α
n314_call_proc_staged_β:
                                                                                        jmp   n340_call_builtin_prolog_α
.Lx726_0:
                        .quad            .Lx726_0_s
.Lx726_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n315_move_label_α:
                        lea              rax, [rip + n314_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n316_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n317_var_ref_α
n316_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        add              rsp, 16
                                                                                        jmp   n318_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8160]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        add              rsp, 16
                                                                                        jmp   n319_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n319_call_builtin_prolog_α:
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
.Lx734_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx734_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx734_41
                        cmp              esi, 1
                                                                                        jne   .Lx734_55
                        mov              r8, rax
                                                                                        jmp   .Lx734_40
.Lx734_55:
                        cmp              esi, 2
                                                                                        jne   .Lx734_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx734_41
                        mov              r8, rax
                                                                                        jmp   .Lx734_40
.Lx734_56:
                        cmp              eax, 13
                                                                                        jne   .Lx734_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx734_41
                        cmp              rax, r8
                                                                                        je    .Lx734_41
                        mov              r8, rax
                                                                                        jmp   .Lx734_40
.Lx734_41:
                        lea              r9, [rbp + 624]
.Lx734_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx734_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx734_43
                        cmp              esi, 1
                                                                                        jne   .Lx734_57
                        mov              r9, rax
                                                                                        jmp   .Lx734_42
.Lx734_57:
                        cmp              esi, 2
                                                                                        jne   .Lx734_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx734_43
                        mov              r9, rax
                                                                                        jmp   .Lx734_42
.Lx734_58:
                        cmp              eax, 13
                                                                                        jne   .Lx734_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx734_43
                        cmp              rax, r9
                                                                                        je    .Lx734_43
                        mov              r9, rax
                                                                                        jmp   .Lx734_42
.Lx734_43:
                        cmp              r8, r9
                                                                                        je    .Lx734_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx734_44
                        cmp              eax, 99
                                                                                        je    .Lx734_44
                        cmp              eax, 13
                                                                                        jne   .Lx734_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx734_44
                                                                                        jmp   .Lx734_45
.Lx734_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx734_53
                        cmp              eax, 99
                                                                                        je    .Lx734_53
                        cmp              eax, 13
                                                                                        jne   .Lx734_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx734_53
                                                                                        jmp   .Lx734_46
.Lx734_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx734_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx734_53
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
                                                                                        jmp   .Lx734_51
.Lx734_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx734_47
                        cmp              eax, 99
                                                                                        je    .Lx734_47
                        cmp              eax, 13
                                                                                        jne   .Lx734_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx734_47
                                                                                        jmp   .Lx734_48
.Lx734_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx734_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx734_53
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
                                                                                        jmp   .Lx734_51
.Lx734_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx734_49
                        cmp              edx, 14
                                                                                        je    .Lx734_53
                                                                                        jmp   .Lx734_52
.Lx734_49:
                        cmp              edx, 14
                                                                                        je    .Lx734_52
                        cmp              ecx, 7
                                                                                        je    .Lx734_53
                        cmp              edx, 7
                                                                                        je    .Lx734_53
                        cmp              ecx, 6
                                                                                        jne   .Lx734_50
                        cmp              edx, 6
                                                                                        jne   .Lx734_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx734_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx734_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx734_51
                                                                                        jmp   .Lx734_52
.Lx734_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx734_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx734_53
.Lx734_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx734_54
.Lx734_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx734_54
.Lx734_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx734_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n328_call_builtin_prolog_α
                                                                                        jmp   n320_var_ref_α
n319_call_builtin_prolog_β:
                                                                                        jmp   n328_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n320_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        add              rsp, 16
                                                                                        jmp   n321_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8160]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        add              rsp, 16
                                                                                        jmp   n322_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n322_call_builtin_prolog_α:
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
.Lx739_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx739_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx739_41
                        cmp              esi, 1
                                                                                        jne   .Lx739_55
                        mov              r8, rax
                                                                                        jmp   .Lx739_40
.Lx739_55:
                        cmp              esi, 2
                                                                                        jne   .Lx739_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx739_41
                        mov              r8, rax
                                                                                        jmp   .Lx739_40
.Lx739_56:
                        cmp              eax, 13
                                                                                        jne   .Lx739_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx739_41
                        cmp              rax, r8
                                                                                        je    .Lx739_41
                        mov              r8, rax
                                                                                        jmp   .Lx739_40
.Lx739_41:
                        lea              r9, [rbp + 544]
.Lx739_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx739_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx739_43
                        cmp              esi, 1
                                                                                        jne   .Lx739_57
                        mov              r9, rax
                                                                                        jmp   .Lx739_42
.Lx739_57:
                        cmp              esi, 2
                                                                                        jne   .Lx739_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx739_43
                        mov              r9, rax
                                                                                        jmp   .Lx739_42
.Lx739_58:
                        cmp              eax, 13
                                                                                        jne   .Lx739_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx739_43
                        cmp              rax, r9
                                                                                        je    .Lx739_43
                        mov              r9, rax
                                                                                        jmp   .Lx739_42
.Lx739_43:
                        cmp              r8, r9
                                                                                        je    .Lx739_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx739_44
                        cmp              eax, 99
                                                                                        je    .Lx739_44
                        cmp              eax, 13
                                                                                        jne   .Lx739_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx739_44
                                                                                        jmp   .Lx739_45
.Lx739_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx739_53
                        cmp              eax, 99
                                                                                        je    .Lx739_53
                        cmp              eax, 13
                                                                                        jne   .Lx739_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx739_53
                                                                                        jmp   .Lx739_46
.Lx739_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx739_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx739_53
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
                                                                                        jmp   .Lx739_51
.Lx739_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx739_47
                        cmp              eax, 99
                                                                                        je    .Lx739_47
                        cmp              eax, 13
                                                                                        jne   .Lx739_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx739_47
                                                                                        jmp   .Lx739_48
.Lx739_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx739_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx739_53
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
                                                                                        jmp   .Lx739_51
.Lx739_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx739_49
                        cmp              edx, 14
                                                                                        je    .Lx739_53
                                                                                        jmp   .Lx739_52
.Lx739_49:
                        cmp              edx, 14
                                                                                        je    .Lx739_52
                        cmp              ecx, 7
                                                                                        je    .Lx739_53
                        cmp              edx, 7
                                                                                        je    .Lx739_53
                        cmp              ecx, 6
                                                                                        jne   .Lx739_50
                        cmp              edx, 6
                                                                                        jne   .Lx739_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx739_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx739_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx739_51
                                                                                        jmp   .Lx739_52
.Lx739_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx739_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx739_53
.Lx739_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx739_54
.Lx739_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx739_54
.Lx739_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx739_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n328_call_builtin_prolog_α
                                                                                        jmp   n323_var_ref_α
n322_call_builtin_prolog_β:
                                                                                        jmp   n328_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        add              rsp, 16
                                                                                        jmp   n324_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n325_call_builtin_prolog_α
.Lx742_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n325_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n328_call_builtin_prolog_α
                                                                                        jmp   n326_cut_α
n325_call_builtin_prolog_β:
                                                                                        jmp   n328_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n326_cut_α:
                                                                                        jmp   n327_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n327_move_label_α:
                        lea              rax, [rip + n328_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n328_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n329_var_ref_α
n328_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        add              rsp, 16
                                                                                        jmp   n330_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        add              rsp, 16
                                                                                        jmp   n331_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n331_call_builtin_prolog_α:
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
.Lx752_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx752_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx752_41
                        cmp              esi, 1
                                                                                        jne   .Lx752_55
                        mov              r8, rax
                                                                                        jmp   .Lx752_40
.Lx752_55:
                        cmp              esi, 2
                                                                                        jne   .Lx752_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx752_41
                        mov              r8, rax
                                                                                        jmp   .Lx752_40
.Lx752_56:
                        cmp              eax, 13
                                                                                        jne   .Lx752_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx752_41
                        cmp              rax, r8
                                                                                        je    .Lx752_41
                        mov              r8, rax
                                                                                        jmp   .Lx752_40
.Lx752_41:
                        lea              r9, [rbp + 352]
.Lx752_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx752_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx752_43
                        cmp              esi, 1
                                                                                        jne   .Lx752_57
                        mov              r9, rax
                                                                                        jmp   .Lx752_42
.Lx752_57:
                        cmp              esi, 2
                                                                                        jne   .Lx752_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx752_43
                        mov              r9, rax
                                                                                        jmp   .Lx752_42
.Lx752_58:
                        cmp              eax, 13
                                                                                        jne   .Lx752_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx752_43
                        cmp              rax, r9
                                                                                        je    .Lx752_43
                        mov              r9, rax
                                                                                        jmp   .Lx752_42
.Lx752_43:
                        cmp              r8, r9
                                                                                        je    .Lx752_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx752_44
                        cmp              eax, 99
                                                                                        je    .Lx752_44
                        cmp              eax, 13
                                                                                        jne   .Lx752_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx752_44
                                                                                        jmp   .Lx752_45
.Lx752_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx752_53
                        cmp              eax, 99
                                                                                        je    .Lx752_53
                        cmp              eax, 13
                                                                                        jne   .Lx752_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx752_53
                                                                                        jmp   .Lx752_46
.Lx752_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx752_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx752_53
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
                                                                                        jmp   .Lx752_51
.Lx752_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx752_47
                        cmp              eax, 99
                                                                                        je    .Lx752_47
                        cmp              eax, 13
                                                                                        jne   .Lx752_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx752_47
                                                                                        jmp   .Lx752_48
.Lx752_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx752_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx752_53
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
                                                                                        jmp   .Lx752_51
.Lx752_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx752_49
                        cmp              edx, 14
                                                                                        je    .Lx752_53
                                                                                        jmp   .Lx752_52
.Lx752_49:
                        cmp              edx, 14
                                                                                        je    .Lx752_52
                        cmp              ecx, 7
                                                                                        je    .Lx752_53
                        cmp              edx, 7
                                                                                        je    .Lx752_53
                        cmp              ecx, 6
                                                                                        jne   .Lx752_50
                        cmp              edx, 6
                                                                                        jne   .Lx752_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx752_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx752_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx752_51
                                                                                        jmp   .Lx752_52
.Lx752_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx752_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx752_53
.Lx752_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx752_54
.Lx752_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx752_54
.Lx752_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx752_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n340_call_builtin_prolog_α
                                                                                        jmp   n332_var_ref_α
n331_call_builtin_prolog_β:
                                                                                        jmp   n340_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        add              rsp, 16
                                                                                        jmp   n333_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        add              rsp, 16
                                                                                        jmp   n334_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n334_call_builtin_prolog_α:
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
.Lx757_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx757_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx757_41
                        cmp              esi, 1
                                                                                        jne   .Lx757_55
                        mov              r8, rax
                                                                                        jmp   .Lx757_40
.Lx757_55:
                        cmp              esi, 2
                                                                                        jne   .Lx757_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx757_41
                        mov              r8, rax
                                                                                        jmp   .Lx757_40
.Lx757_56:
                        cmp              eax, 13
                                                                                        jne   .Lx757_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx757_41
                        cmp              rax, r8
                                                                                        je    .Lx757_41
                        mov              r8, rax
                                                                                        jmp   .Lx757_40
.Lx757_41:
                        lea              r9, [rbp + 272]
.Lx757_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx757_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx757_43
                        cmp              esi, 1
                                                                                        jne   .Lx757_57
                        mov              r9, rax
                                                                                        jmp   .Lx757_42
.Lx757_57:
                        cmp              esi, 2
                                                                                        jne   .Lx757_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx757_43
                        mov              r9, rax
                                                                                        jmp   .Lx757_42
.Lx757_58:
                        cmp              eax, 13
                                                                                        jne   .Lx757_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx757_43
                        cmp              rax, r9
                                                                                        je    .Lx757_43
                        mov              r9, rax
                                                                                        jmp   .Lx757_42
.Lx757_43:
                        cmp              r8, r9
                                                                                        je    .Lx757_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx757_44
                        cmp              eax, 99
                                                                                        je    .Lx757_44
                        cmp              eax, 13
                                                                                        jne   .Lx757_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx757_44
                                                                                        jmp   .Lx757_45
.Lx757_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx757_53
                        cmp              eax, 99
                                                                                        je    .Lx757_53
                        cmp              eax, 13
                                                                                        jne   .Lx757_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx757_53
                                                                                        jmp   .Lx757_46
.Lx757_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx757_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx757_53
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
                                                                                        jmp   .Lx757_51
.Lx757_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx757_47
                        cmp              eax, 99
                                                                                        je    .Lx757_47
                        cmp              eax, 13
                                                                                        jne   .Lx757_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx757_47
                                                                                        jmp   .Lx757_48
.Lx757_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx757_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx757_53
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
                                                                                        jmp   .Lx757_51
.Lx757_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx757_49
                        cmp              edx, 14
                                                                                        je    .Lx757_53
                                                                                        jmp   .Lx757_52
.Lx757_49:
                        cmp              edx, 14
                                                                                        je    .Lx757_52
                        cmp              ecx, 7
                                                                                        je    .Lx757_53
                        cmp              edx, 7
                                                                                        je    .Lx757_53
                        cmp              ecx, 6
                                                                                        jne   .Lx757_50
                        cmp              edx, 6
                                                                                        jne   .Lx757_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx757_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx757_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx757_51
                                                                                        jmp   .Lx757_52
.Lx757_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx757_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx757_53
.Lx757_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx757_54
.Lx757_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx757_54
.Lx757_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx757_54:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n340_call_builtin_prolog_α
                                                                                        jmp   n335_var_ref_α
n334_call_builtin_prolog_β:
                                                                                        jmp   n340_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        add              rsp, 16
                                                                                        jmp   n336_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx760_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n337_call_builtin_prolog_α
.Lx760_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n337_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n340_call_builtin_prolog_α
                                                                                        jmp   n338_move_label_α
n337_call_builtin_prolog_β:
                                                                                        jmp   n340_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n338_move_label_α:
                        lea              rax, [rip + n340_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n339_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 80]
n339_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n340_call_builtin_prolog_α:
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
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   proc_d$2F3_ω
n340_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F3_β:
                                                                                        jmp   n339_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 8248]
                        lea              rsp, [rbp + 8272]
                        mov              rbp, [rbp + 8264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F3_ω:
                        mov              rax, [rbp + 8256]
                        lea              rsp, [rbp + 8272]
                        mov              rbp, [rbp + 8264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F3_dcα:
                        pop              r11
                        sub              rsp, 8288
                        mov              qword ptr [rsp + 8264], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 8240], r11
                        lea              rax, [rip + .Lx767_2]
                        mov              qword ptr [rbp + 8248], rax
                        lea              rax, [rip + .Lx767_3]
                        mov              qword ptr [rbp + 8256], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 8128
                        mov              edx, 8240
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_d$2F3_α_body
.Lx767_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -8272
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx767_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -8272
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_top$2F0_α
proc_top$2F0_α:
                        .global          proc_top$2F0_α
                        .global          proc_top$2F0_β
                        .global          proc_top$2F0_γ
                        .global          proc_top$2F0_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 112
                        mov              edx, 144
                        call             rt_jmp_frame_lexprep2@PLT
proc_top$2F0_α_body:
                        lea              rax, [rip + n770_suspend_β]
                        mov              qword ptr [rbp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n768_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx772_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx772_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx772_101
.Lx772_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx772_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_top$2F0_ω
                                                                                        jmp   n769_call_proc_staged_α
n768_call_builtin_prolog_β:
                                                                                        jmp   proc_top$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n769_call_proc_staged_α:
                        call             proc_ops8$2F0_dcα
                                                                                        jmp   .Lx774_2
.Lx774_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n771_call_builtin_prolog_α
                                                                                        jmp   n770_suspend_α
n769_call_proc_staged_β:
                                                                                        jmp   n771_call_builtin_prolog_α
.Lx774_0:
                        .quad            .Lx774_0_s
.Lx774_0_s:
                        .string          "ops8/0"
#-----------------------------------------------------------------------------------------------------------------------
n770_suspend_α:
                        lea              rax, [rip + n770_suspend_β]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_top$2F0_γ
n770_suspend_β:
                                                                                        jmp   n769_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n771_call_builtin_prolog_α:
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
                                                                                        je    proc_top$2F0_ω
                                                                                        jmp   proc_top$2F0_ω
n771_call_builtin_prolog_β:
                                                                                        jmp   proc_top$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_top$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_top$2F0_β:
                                                                                        jmp   qword ptr [rbp + 112]
#-----------------------------------------------------------------------------------------------------------------------
proc_top$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_top$2F0_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_top$2F0_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "ops8/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_ops8$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1024
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_ops8$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "d/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_d$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 8224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_d$2F3_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "top/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_top$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 128
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
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
                        sub              rsp, 296
                        mov              rdi, rsp
                        mov              ecx, 296
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 288], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n778_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx789_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx789_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx789_101
.Lx789_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx789_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n779_call_proc_staged_α
n778_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n779_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              edi, 2
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx791_1
                        lea              rcx, [rip + .Lx791_3]
                        lea              rdx, [rip + .Lx791_4]
                                                                                        jmp   rax
.Lx791_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx791_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx791_2
.Lx791_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx791_2
.Lx791_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx791_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx791_2
.Lx791_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx791_2
.Lx791_1:
                        call             rt_faildescr@PLT
.Lx791_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n782_lit_string_α
                                                                                        jmp   n780_lit_string_α
n779_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx791_0:
                        .quad            .Lx791_0_s
.Lx791_0_s:
                        .string          "top/0"
#-----------------------------------------------------------------------------------------------------------------------
n780_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n781_call_builtin_prolog_α
.Lx792_0:
                        .quad            .Lx792_0_s
.Lx792_0_s:
                        .string          "ok"
#-----------------------------------------------------------------------------------------------------------------------
n781_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn794:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn794]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n788_call_builtin_prolog_α
                                                                                        jmp   n784_lit_string_α
n781_call_builtin_prolog_β:
                                                                                        jmp   n788_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n782_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              dword ptr [rbp + 228], 6
                        mov              rax, qword ptr [rip + .Lx795_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n783_call_builtin_prolog_α
.Lx795_0:
                        .quad            .Lx795_0_s
.Lx795_0_s:
                        .string          "failed"
#-----------------------------------------------------------------------------------------------------------------------
n783_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn797:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn797]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n788_call_builtin_prolog_α
                                                                                        jmp   n784_lit_string_α
n783_call_builtin_prolog_β:
                                                                                        jmp   n788_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n784_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Lx798_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n785_call_builtin_prolog_α
.Lx798_0:
                        .quad            .Lx798_0_s
.Lx798_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n785_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn800:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn800]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n788_call_builtin_prolog_α
                                                                                        jmp   n786_move_label_α
n785_call_builtin_prolog_β:
                                                                                        jmp   n788_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n786_move_label_α:
                        lea              rax, [rip + n788_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n787_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 16]
n787_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n788_call_builtin_prolog_α:
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
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n788_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n787_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 288]
                        add              rsp, 296
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 288]
                        add              rsp, 296
                        ret
                        .section         .note.GNU-stack,"",@progbits
