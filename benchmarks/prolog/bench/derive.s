                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_divide10$2F0_α
proc_divide10$2F0_α:
                        .global          proc_divide10$2F0_α
                        .global          proc_divide10$2F0_β
                        .global          proc_divide10$2F0_γ
                        .global          proc_divide10$2F0_ω
                        sub              rsp, 1296
                        mov              [rsp + 1272], rcx
                        mov              [rsp + 1280], rdx
                        mov              [rsp + 1288], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1232
                        mov              edx, 1264
                        call             rt_jmp_frame_lexprep2@PLT
proc_divide10$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx35_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx35_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx35_101
.Lx35_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx35_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_divide10$2F0_ω
                                                                                        jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                                                                                        jmp   proc_divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              dword ptr [rbp + 1188], 1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n2_lit_string_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              dword ptr [rbp + 1076], 1
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n3_lit_string_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              dword ptr [rbp + 964], 1
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n4_lit_string_α
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              dword ptr [rbp + 852], 1
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n5_lit_string_α
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              dword ptr [rbp + 740], 1
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n6_lit_string_α
.Lx40_0:
                        .quad            .Lx40_0_s
.Lx40_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              dword ptr [rbp + 628], 1
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n7_lit_string_α
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              dword ptr [rbp + 516], 1
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n8_lit_string_α
.Lx42_0:
                        .quad            .Lx42_0_s
.Lx42_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n9_lit_string_α
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n10_lit_string_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              dword ptr [rbp + 180], 1
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n11_lit_string_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              dword ptr [rbp + 196], 1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n12_call_builtin_prolog_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
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
                                                                                        je    proc_divide10$2F0_ω
                                                                                        jmp   n13_lit_string_α
n12_call_builtin_prolog_β:
                                                                                        jmp   proc_divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n14_call_builtin_prolog_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    proc_divide10$2F0_ω
                                                                                        jmp   n15_lit_string_α
n14_call_builtin_prolog_β:
                                                                                        jmp   proc_divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n16_call_builtin_prolog_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    proc_divide10$2F0_ω
                                                                                        jmp   n17_lit_string_α
n16_call_builtin_prolog_β:
                                                                                        jmp   proc_divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              dword ptr [rbp + 532], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n18_call_builtin_prolog_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    proc_divide10$2F0_ω
                                                                                        jmp   n19_lit_string_α
n18_call_builtin_prolog_β:
                                                                                        jmp   proc_divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n20_call_builtin_prolog_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    proc_divide10$2F0_ω
                                                                                        jmp   n21_lit_string_α
n20_call_builtin_prolog_β:
                                                                                        jmp   proc_divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              dword ptr [rbp + 756], 1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n22_call_builtin_prolog_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    proc_divide10$2F0_ω
                                                                                        jmp   n23_lit_string_α
n22_call_builtin_prolog_β:
                                                                                        jmp   proc_divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              dword ptr [rbp + 868], 1
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n24_call_builtin_prolog_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    proc_divide10$2F0_ω
                                                                                        jmp   n25_lit_string_α
n24_call_builtin_prolog_β:
                                                                                        jmp   proc_divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              dword ptr [rbp + 980], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n26_call_builtin_prolog_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    proc_divide10$2F0_ω
                                                                                        jmp   n27_lit_string_α
n26_call_builtin_prolog_β:
                                                                                        jmp   proc_divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              dword ptr [rbp + 1092], 1
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n28_call_builtin_prolog_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n34_call_builtin_prolog_α
                                                                                        jmp   n29_lit_string_α
n28_call_builtin_prolog_β:
                                                                                        jmp   n34_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              dword ptr [rbp + 1204], 1
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n30_var_ref_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        add              rsp, 16
                                                                                        jmp   n31_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_proc_staged_α:
                        lea              rsi, [rbp + 1104]
                        lea              rdx, [rbp + 1200]
                        lea              rcx, [rbp + 1216]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx68_2
.Lx68_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n34_call_builtin_prolog_α
                                                                                        jmp   n32_move_label_α
n31_call_proc_staged_β:
                                                                                        jmp   n34_call_builtin_prolog_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n32_move_label_α:
                        lea              rax, [rip + n31_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_divide10$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n33_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 16]
n33_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   proc_divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
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
                                                                                        je    proc_divide10$2F0_ω
                                                                                        jmp   proc_divide10$2F0_ω
n34_call_builtin_prolog_β:
                                                                                        jmp   proc_divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_divide10$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_divide10$2F0_β:
                                                                                        jmp   n33_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_divide10$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1272]
                        lea              rsp, [rbp + 1296]
                        mov              rbp, [rbp + 1288]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_divide10$2F0_ω:
                        mov              rax, [rbp + 1280]
                        lea              rsp, [rbp + 1296]
                        mov              rbp, [rbp + 1288]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_divide10$2F0_dcα:
                        pop              r11
                        sub              rsp, 1312
                        mov              qword ptr [rsp + 1288], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1264], r11
                        lea              rax, [rip + .Lx74_2]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rax, [rip + .Lx74_3]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rdi, rbp
                        mov              esi, 1232
                        mov              edx, 1264
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_divide10$2F0_α_body
.Lx74_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1296
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx74_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1296
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_log10$2F0_α
proc_log10$2F0_α:
                        .global          proc_log10$2F0_α
                        .global          proc_log10$2F0_β
                        .global          proc_log10$2F0_γ
                        .global          proc_log10$2F0_ω
                        sub              rsp, 1088
                        mov              [rsp + 1064], rcx
                        mov              [rsp + 1072], rdx
                        mov              [rsp + 1080], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1024
                        mov              edx, 1056
                        call             rt_jmp_frame_lexprep2@PLT
proc_log10$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx103_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx103_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx103_101
.Lx103_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx103_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_log10$2F0_ω
                                                                                        jmp   n76_lit_string_α
n75_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              dword ptr [rbp + 980], 3
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n77_lit_string_α
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              dword ptr [rbp + 900], 3
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n78_lit_string_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              dword ptr [rbp + 820], 3
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n79_lit_string_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              dword ptr [rbp + 740], 3
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n80_lit_string_α
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              dword ptr [rbp + 660], 3
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n81_lit_string_α
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              dword ptr [rbp + 580], 3
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n82_lit_string_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              dword ptr [rbp + 500], 3
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n83_lit_string_α
.Lx110_0:
                        .quad            .Lx110_0_s
.Lx110_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              dword ptr [rbp + 420], 3
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n84_lit_string_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              dword ptr [rbp + 340], 3
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n85_lit_string_α
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              dword ptr [rbp + 260], 3
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n86_lit_string_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              dword ptr [rbp + 180], 1
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n87_call_builtin_prolog_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_prolog_α:
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
                                                                                        je    proc_log10$2F0_ω
                                                                                        jmp   n88_call_builtin_prolog_α
n87_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_log10$2F0_ω
                                                                                        jmp   n89_call_builtin_prolog_α
n88_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    proc_log10$2F0_ω
                                                                                        jmp   n90_call_builtin_prolog_α
n89_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    proc_log10$2F0_ω
                                                                                        jmp   n91_call_builtin_prolog_α
n90_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    proc_log10$2F0_ω
                                                                                        jmp   n92_call_builtin_prolog_α
n91_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    proc_log10$2F0_ω
                                                                                        jmp   n93_call_builtin_prolog_α
n92_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    proc_log10$2F0_ω
                                                                                        jmp   n94_call_builtin_prolog_α
n93_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 768]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    proc_log10$2F0_ω
                                                                                        jmp   n95_call_builtin_prolog_α
n94_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    proc_log10$2F0_ω
                                                                                        jmp   n96_call_builtin_prolog_α
n95_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n102_call_builtin_prolog_α
                                                                                        jmp   n97_lit_string_α
n96_call_builtin_prolog_β:
                                                                                        jmp   n102_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n98_var_ref_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        add              rsp, 16
                                                                                        jmp   n99_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_proc_staged_α:
                        lea              rsi, [rbp + 912]
                        lea              rdx, [rbp + 992]
                        lea              rcx, [rbp + 1008]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx129_2
.Lx129_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n102_call_builtin_prolog_α
                                                                                        jmp   n100_move_label_α
n99_call_proc_staged_β:
                                                                                        jmp   n102_call_builtin_prolog_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n100_move_label_α:
                        lea              rax, [rip + n99_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_log10$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n101_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 16]
n101_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_prolog_α:
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
                                                                                        je    proc_log10$2F0_ω
                                                                                        jmp   proc_log10$2F0_ω
n102_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_log10$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_log10$2F0_β:
                                                                                        jmp   n101_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_log10$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1064]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_log10$2F0_ω:
                        mov              rax, [rbp + 1072]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_log10$2F0_dcα:
                        pop              r11
                        sub              rsp, 1104
                        mov              qword ptr [rsp + 1080], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1056], r11
                        lea              rax, [rip + .Lx135_2]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rax, [rip + .Lx135_3]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rdi, rbp
                        mov              esi, 1024
                        mov              edx, 1056
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_log10$2F0_α_body
.Lx135_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1088
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx135_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1088
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
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
n136_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx165_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx165_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx165_101
.Lx165_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx165_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_ops8$2F0_ω
                                                                                        jmp   n137_lit_string_α
n136_call_builtin_prolog_β:
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              dword ptr [rbp + 964], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n138_lit_string_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n139_lit_string_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              dword ptr [rbp + 180], 1
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n140_lit_integer_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n141_call_builtin_prolog_α
.Lx169_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_prolog_α:
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
                                                                                        jmp   n142_lit_string_α
n141_call_builtin_prolog_β:
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              dword ptr [rbp + 868], 1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n143_lit_string_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              dword ptr [rbp + 532], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n144_lit_string_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n145_lit_string_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n146_lit_integer_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n147_call_builtin_prolog_α
.Lx175_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_prolog_α:
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
                                                                                        jmp   n148_lit_integer_α
n147_call_builtin_prolog_β:
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n149_call_builtin_prolog_α
.Lx177_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_prolog_α:
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
                                                                                        jmp   n150_lit_string_α
n149_call_builtin_prolog_β:
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n151_lit_string_α
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              dword ptr [rbp + 660], 1
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n152_lit_string_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              dword ptr [rbp + 548], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n153_lit_integer_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n154_call_builtin_prolog_α
.Lx182_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n154_call_builtin_prolog_α:
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
                                                                                        jmp   n155_lit_integer_α
n154_call_builtin_prolog_β:
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n156_call_builtin_prolog_α
.Lx184_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n156_call_builtin_prolog_α:
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
                                                                                        jmp   n157_call_builtin_prolog_α
n156_call_builtin_prolog_β:
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n157_call_builtin_prolog_α:
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
                                                                                        jmp   n158_call_builtin_prolog_α
n157_call_builtin_prolog_β:
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_prolog_α:
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
                                                                                        je    n164_call_builtin_prolog_α
                                                                                        jmp   n159_lit_string_α
n158_call_builtin_prolog_β:
                                                                                        jmp   n164_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              dword ptr [rbp + 980], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n160_var_ref_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        add              rsp, 16
                                                                                        jmp   n161_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n161_call_proc_staged_α:
                        lea              rsi, [rbp + 880]
                        lea              rdx, [rbp + 976]
                        lea              rcx, [rbp + 992]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx192_2
.Lx192_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n164_call_builtin_prolog_α
                                                                                        jmp   n162_move_label_α
n161_call_proc_staged_β:
                                                                                        jmp   n164_call_builtin_prolog_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n162_move_label_α:
                        lea              rax, [rip + n161_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_ops8$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n163_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 16]
n163_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_prolog_α:
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
n164_call_builtin_prolog_β:
                                                                                        jmp   proc_ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ops8$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_ops8$2F0_β:
                                                                                        jmp   n163_disjunction_α
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
                        lea              rax, [rip + .Lx198_2]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rax, [rip + .Lx198_3]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rdi, rbp
                        mov              esi, 1008
                        mov              edx, 1040
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_ops8$2F0_α_body
.Lx198_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1072
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx198_3:
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
n199_call_builtin_prolog_α:
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
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx477_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n200_var_ref_α
n199_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 8080], rax
                        mov              qword ptr [rbp + 8088], rdx
                        add              rsp, 16
                                                                                        jmp   n201_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:
                        mov              qword ptr [rbp + 8096], 6
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rbp + 8104], rax
                                                                                        jmp   n202_lit_string_α
.Lx480_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rbp + 8112], 1
                        mov              dword ptr [rbp + 8116], 1
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rbp + 8120], rax
                                                                                        jmp   n203_call_builtin_prolog_α
.Lx481_0:
                        .quad            .Lx481_0_s
.Lx481_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n203_call_builtin_prolog_α:
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
                                                                                        je    n230_var_ref_α
                                                                                        jmp   n204_var_ref_α
n203_call_builtin_prolog_β:
                                                                                        jmp   n230_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7872], rax
                        mov              qword ptr [rbp + 7880], rdx
                        add              rsp, 16
                                                                                        jmp   n205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:
                        mov              qword ptr [rbp + 8000], 1
                        mov              dword ptr [rbp + 8004], 1
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rbp + 8008], rax
                                                                                        jmp   n206_var_ref_α
.Lx485_0:
                        .quad            .Lx485_0_s
.Lx485_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7888], rax
                        mov              qword ptr [rbp + 7896], rdx
                        add              rsp, 16
                                                                                        jmp   n207_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7904], rax
                        mov              qword ptr [rbp + 7912], rdx
                        add              rsp, 16
                                                                                        jmp   n208_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_builtin_prolog_α:
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
                                                                                        je    n229_call_builtin_prolog_α
                                                                                        jmp   n209_call_builtin_prolog_α
n208_call_builtin_prolog_β:
                                                                                        jmp   n229_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_prolog_α:
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
.Lx491_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx491_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx491_41
                        cmp              esi, 1
                                                                                        jne   .Lx491_55
                        mov              r8, rax
                                                                                        jmp   .Lx491_40
.Lx491_55:
                        cmp              esi, 2
                                                                                        jne   .Lx491_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx491_41
                        mov              r8, rax
                                                                                        jmp   .Lx491_40
.Lx491_56:
                        cmp              eax, 13
                                                                                        jne   .Lx491_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx491_41
                        cmp              rax, r8
                                                                                        je    .Lx491_41
                        mov              r8, rax
                                                                                        jmp   .Lx491_40
.Lx491_41:
                        lea              r9, [rbp + 7856]
.Lx491_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx491_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx491_43
                        cmp              esi, 1
                                                                                        jne   .Lx491_57
                        mov              r9, rax
                                                                                        jmp   .Lx491_42
.Lx491_57:
                        cmp              esi, 2
                                                                                        jne   .Lx491_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx491_43
                        mov              r9, rax
                                                                                        jmp   .Lx491_42
.Lx491_58:
                        cmp              eax, 13
                                                                                        jne   .Lx491_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx491_43
                        cmp              rax, r9
                                                                                        je    .Lx491_43
                        mov              r9, rax
                                                                                        jmp   .Lx491_42
.Lx491_43:
                        cmp              r8, r9
                                                                                        je    .Lx491_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx491_44
                        cmp              eax, 99
                                                                                        je    .Lx491_44
                        cmp              eax, 13
                                                                                        jne   .Lx491_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx491_44
                                                                                        jmp   .Lx491_45
.Lx491_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx491_53
                        cmp              eax, 99
                                                                                        je    .Lx491_53
                        cmp              eax, 13
                                                                                        jne   .Lx491_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx491_53
                                                                                        jmp   .Lx491_46
.Lx491_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx491_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx491_53
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
                                                                                        jmp   .Lx491_51
.Lx491_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx491_47
                        cmp              eax, 99
                                                                                        je    .Lx491_47
                        cmp              eax, 13
                                                                                        jne   .Lx491_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx491_47
                                                                                        jmp   .Lx491_48
.Lx491_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx491_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx491_53
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
                                                                                        jmp   .Lx491_51
.Lx491_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx491_49
                        cmp              edx, 14
                                                                                        je    .Lx491_53
                                                                                        jmp   .Lx491_52
.Lx491_49:
                        cmp              edx, 14
                                                                                        je    .Lx491_52
                        cmp              ecx, 7
                                                                                        je    .Lx491_53
                        cmp              edx, 7
                                                                                        je    .Lx491_53
                        cmp              ecx, 6
                                                                                        jne   .Lx491_50
                        cmp              edx, 6
                                                                                        jne   .Lx491_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx491_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx491_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx491_51
                                                                                        jmp   .Lx491_52
.Lx491_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx491_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx491_53
.Lx491_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx491_54
.Lx491_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx491_54
.Lx491_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx491_54:
                        mov              qword ptr [rbp + 7824], rax
                        mov              qword ptr [rbp + 7832], rdx
                        cmp              eax, 99
                                                                                        je    n229_call_builtin_prolog_α
                                                                                        jmp   n210_var_ref_α
n209_call_builtin_prolog_β:
                                                                                        jmp   n229_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7792], rax
                        mov              qword ptr [rbp + 7800], rdx
                        add              rsp, 16
                                                                                        jmp   n211_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7808], rax
                        mov              qword ptr [rbp + 7816], rdx
                        add              rsp, 16
                                                                                        jmp   n212_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n212_call_builtin_prolog_α:
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
.Lx496_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx496_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx496_41
                        cmp              esi, 1
                                                                                        jne   .Lx496_55
                        mov              r8, rax
                                                                                        jmp   .Lx496_40
.Lx496_55:
                        cmp              esi, 2
                                                                                        jne   .Lx496_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx496_41
                        mov              r8, rax
                                                                                        jmp   .Lx496_40
.Lx496_56:
                        cmp              eax, 13
                                                                                        jne   .Lx496_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx496_41
                        cmp              rax, r8
                                                                                        je    .Lx496_41
                        mov              r8, rax
                                                                                        jmp   .Lx496_40
.Lx496_41:
                        lea              r9, [rbp + 7776]
.Lx496_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx496_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx496_43
                        cmp              esi, 1
                                                                                        jne   .Lx496_57
                        mov              r9, rax
                                                                                        jmp   .Lx496_42
.Lx496_57:
                        cmp              esi, 2
                                                                                        jne   .Lx496_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx496_43
                        mov              r9, rax
                                                                                        jmp   .Lx496_42
.Lx496_58:
                        cmp              eax, 13
                                                                                        jne   .Lx496_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx496_43
                        cmp              rax, r9
                                                                                        je    .Lx496_43
                        mov              r9, rax
                                                                                        jmp   .Lx496_42
.Lx496_43:
                        cmp              r8, r9
                                                                                        je    .Lx496_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx496_44
                        cmp              eax, 99
                                                                                        je    .Lx496_44
                        cmp              eax, 13
                                                                                        jne   .Lx496_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx496_44
                                                                                        jmp   .Lx496_45
.Lx496_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx496_53
                        cmp              eax, 99
                                                                                        je    .Lx496_53
                        cmp              eax, 13
                                                                                        jne   .Lx496_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx496_53
                                                                                        jmp   .Lx496_46
.Lx496_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx496_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx496_53
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
                                                                                        jmp   .Lx496_51
.Lx496_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx496_47
                        cmp              eax, 99
                                                                                        je    .Lx496_47
                        cmp              eax, 13
                                                                                        jne   .Lx496_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx496_47
                                                                                        jmp   .Lx496_48
.Lx496_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx496_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx496_53
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
                                                                                        jmp   .Lx496_51
.Lx496_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx496_49
                        cmp              edx, 14
                                                                                        je    .Lx496_53
                                                                                        jmp   .Lx496_52
.Lx496_49:
                        cmp              edx, 14
                                                                                        je    .Lx496_52
                        cmp              ecx, 7
                                                                                        je    .Lx496_53
                        cmp              edx, 7
                                                                                        je    .Lx496_53
                        cmp              ecx, 6
                                                                                        jne   .Lx496_50
                        cmp              edx, 6
                                                                                        jne   .Lx496_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx496_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx496_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx496_51
                                                                                        jmp   .Lx496_52
.Lx496_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx496_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx496_53
.Lx496_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx496_54
.Lx496_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx496_54
.Lx496_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx496_54:
                        mov              qword ptr [rbp + 7744], rax
                        mov              qword ptr [rbp + 7752], rdx
                        cmp              eax, 99
                                                                                        je    n229_call_builtin_prolog_α
                                                                                        jmp   n213_var_ref_α
n212_call_builtin_prolog_β:
                                                                                        jmp   n229_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7600], rax
                        mov              qword ptr [rbp + 7608], rdx
                        add              rsp, 16
                                                                                        jmp   n214_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:
                        mov              qword ptr [rbp + 7728], 1
                        mov              dword ptr [rbp + 7732], 1
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rbp + 7736], rax
                                                                                        jmp   n215_var_ref_α
.Lx499_0:
                        .quad            .Lx499_0_s
.Lx499_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 7616], rax
                        mov              qword ptr [rbp + 7624], rdx
                        add              rsp, 16
                                                                                        jmp   n216_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx
                        add              rsp, 16
                                                                                        jmp   n217_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n217_call_builtin_prolog_α:
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
                                                                                        je    n229_call_builtin_prolog_α
                                                                                        jmp   n218_call_builtin_prolog_α
n217_call_builtin_prolog_β:
                                                                                        jmp   n229_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n218_call_builtin_prolog_α:
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
.Lx505_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx505_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx505_41
                        cmp              esi, 1
                                                                                        jne   .Lx505_55
                        mov              r8, rax
                                                                                        jmp   .Lx505_40
.Lx505_55:
                        cmp              esi, 2
                                                                                        jne   .Lx505_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx505_41
                        mov              r8, rax
                                                                                        jmp   .Lx505_40
.Lx505_56:
                        cmp              eax, 13
                                                                                        jne   .Lx505_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx505_41
                        cmp              rax, r8
                                                                                        je    .Lx505_41
                        mov              r8, rax
                                                                                        jmp   .Lx505_40
.Lx505_41:
                        lea              r9, [rbp + 7584]
.Lx505_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx505_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx505_43
                        cmp              esi, 1
                                                                                        jne   .Lx505_57
                        mov              r9, rax
                                                                                        jmp   .Lx505_42
.Lx505_57:
                        cmp              esi, 2
                                                                                        jne   .Lx505_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx505_43
                        mov              r9, rax
                                                                                        jmp   .Lx505_42
.Lx505_58:
                        cmp              eax, 13
                                                                                        jne   .Lx505_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx505_43
                        cmp              rax, r9
                                                                                        je    .Lx505_43
                        mov              r9, rax
                                                                                        jmp   .Lx505_42
.Lx505_43:
                        cmp              r8, r9
                                                                                        je    .Lx505_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx505_44
                        cmp              eax, 99
                                                                                        je    .Lx505_44
                        cmp              eax, 13
                                                                                        jne   .Lx505_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx505_44
                                                                                        jmp   .Lx505_45
.Lx505_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx505_53
                        cmp              eax, 99
                                                                                        je    .Lx505_53
                        cmp              eax, 13
                                                                                        jne   .Lx505_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx505_53
                                                                                        jmp   .Lx505_46
.Lx505_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx505_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx505_53
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
                                                                                        jmp   .Lx505_51
.Lx505_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx505_47
                        cmp              eax, 99
                                                                                        je    .Lx505_47
                        cmp              eax, 13
                                                                                        jne   .Lx505_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx505_47
                                                                                        jmp   .Lx505_48
.Lx505_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx505_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx505_53
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
                                                                                        jmp   .Lx505_51
.Lx505_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx505_49
                        cmp              edx, 14
                                                                                        je    .Lx505_53
                                                                                        jmp   .Lx505_52
.Lx505_49:
                        cmp              edx, 14
                                                                                        je    .Lx505_52
                        cmp              ecx, 7
                                                                                        je    .Lx505_53
                        cmp              edx, 7
                                                                                        je    .Lx505_53
                        cmp              ecx, 6
                                                                                        jne   .Lx505_50
                        cmp              edx, 6
                                                                                        jne   .Lx505_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx505_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx505_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx505_51
                                                                                        jmp   .Lx505_52
.Lx505_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx505_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx505_53
.Lx505_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx505_54
.Lx505_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx505_54
.Lx505_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx505_54:
                        mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                        cmp              eax, 99
                                                                                        je    n229_call_builtin_prolog_α
                                                                                        jmp   n219_cut_α
n218_call_builtin_prolog_β:
                                                                                        jmp   n229_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n219_cut_α:
                                                                                        jmp   n220_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7504], rax
                        mov              qword ptr [rbp + 7512], rdx
                        add              rsp, 16
                                                                                        jmp   n221_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx
                        add              rsp, 16
                                                                                        jmp   n222_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx
                        add              rsp, 16
                                                                                        jmp   n223_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        lea              rsi, [rbp + 7504]
                        lea              rdx, [rbp + 7520]
                        lea              rcx, [rbp + 7536]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx514_2
.Lx514_2:
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                        cmp              eax, 99
                                                                                        je    n476_call_builtin_prolog_α
                                                                                        jmp   n224_var_ref_α
n223_call_proc_staged_β:
                                                                                        jmp   n476_call_builtin_prolog_α
.Lx514_0:
                        .quad            .Lx514_0_s
.Lx514_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7376], rax
                        mov              qword ptr [rbp + 7384], rdx
                        add              rsp, 16
                                                                                        jmp   n225_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx
                        add              rsp, 16
                                                                                        jmp   n226_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 7408], rax
                        mov              qword ptr [rbp + 7416], rdx
                        add              rsp, 16
                                                                                        jmp   n227_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n227_call_proc_staged_α:
                        lea              rsi, [rbp + 7376]
                        lea              rdx, [rbp + 7392]
                        lea              rcx, [rbp + 7408]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx522_2
.Lx522_2:
                        mov              qword ptr [rbp + 7296], rax
                        mov              qword ptr [rbp + 7304], rdx
                        cmp              eax, 99
                                                                                        je    n223_call_proc_staged_β
                                                                                        jmp   n228_move_label_α
n227_call_proc_staged_β:
                                                                                        jmp   n223_call_proc_staged_β
.Lx522_0:
                        .quad            .Lx522_0_s
.Lx522_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n228_move_label_α:
                        lea              rax, [rip + n227_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n229_call_builtin_prolog_α:
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
                                                                                        jmp   n230_var_ref_α
n229_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7216], rax
                        mov              qword ptr [rbp + 7224], rdx
                        add              rsp, 16
                                                                                        jmp   n231_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:
                        mov              qword ptr [rbp + 7232], 6
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n232_lit_string_α
.Lx528_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_string_α:
                        mov              qword ptr [rbp + 7248], 1
                        mov              dword ptr [rbp + 7252], 1
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rbp + 7256], rax
                                                                                        jmp   n233_call_builtin_prolog_α
.Lx529_0:
                        .quad            .Lx529_0_s
.Lx529_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n233_call_builtin_prolog_α:
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
                                                                                        je    n260_var_ref_α
                                                                                        jmp   n234_var_ref_α
n233_call_builtin_prolog_β:
                                                                                        jmp   n260_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7008], rax
                        mov              qword ptr [rbp + 7016], rdx
                        add              rsp, 16
                                                                                        jmp   n235_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:
                        mov              qword ptr [rbp + 7136], 1
                        mov              dword ptr [rbp + 7140], 1
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rbp + 7144], rax
                                                                                        jmp   n236_var_ref_α
.Lx533_0:
                        .quad            .Lx533_0_s
.Lx533_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7024], rax
                        mov              qword ptr [rbp + 7032], rdx
                        add              rsp, 16
                                                                                        jmp   n237_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7040], rax
                        mov              qword ptr [rbp + 7048], rdx
                        add              rsp, 16
                                                                                        jmp   n238_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_prolog_α:
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
                                                                                        je    n259_call_builtin_prolog_α
                                                                                        jmp   n239_call_builtin_prolog_α
n238_call_builtin_prolog_β:
                                                                                        jmp   n259_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n239_call_builtin_prolog_α:
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
.Lx539_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx539_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx539_41
                        cmp              esi, 1
                                                                                        jne   .Lx539_55
                        mov              r8, rax
                                                                                        jmp   .Lx539_40
.Lx539_55:
                        cmp              esi, 2
                                                                                        jne   .Lx539_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx539_41
                        mov              r8, rax
                                                                                        jmp   .Lx539_40
.Lx539_56:
                        cmp              eax, 13
                                                                                        jne   .Lx539_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx539_41
                        cmp              rax, r8
                                                                                        je    .Lx539_41
                        mov              r8, rax
                                                                                        jmp   .Lx539_40
.Lx539_41:
                        lea              r9, [rbp + 6992]
.Lx539_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx539_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx539_43
                        cmp              esi, 1
                                                                                        jne   .Lx539_57
                        mov              r9, rax
                                                                                        jmp   .Lx539_42
.Lx539_57:
                        cmp              esi, 2
                                                                                        jne   .Lx539_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx539_43
                        mov              r9, rax
                                                                                        jmp   .Lx539_42
.Lx539_58:
                        cmp              eax, 13
                                                                                        jne   .Lx539_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx539_43
                        cmp              rax, r9
                                                                                        je    .Lx539_43
                        mov              r9, rax
                                                                                        jmp   .Lx539_42
.Lx539_43:
                        cmp              r8, r9
                                                                                        je    .Lx539_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx539_44
                        cmp              eax, 99
                                                                                        je    .Lx539_44
                        cmp              eax, 13
                                                                                        jne   .Lx539_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx539_44
                                                                                        jmp   .Lx539_45
.Lx539_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx539_53
                        cmp              eax, 99
                                                                                        je    .Lx539_53
                        cmp              eax, 13
                                                                                        jne   .Lx539_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx539_53
                                                                                        jmp   .Lx539_46
.Lx539_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx539_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx539_53
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
                                                                                        jmp   .Lx539_51
.Lx539_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx539_47
                        cmp              eax, 99
                                                                                        je    .Lx539_47
                        cmp              eax, 13
                                                                                        jne   .Lx539_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx539_47
                                                                                        jmp   .Lx539_48
.Lx539_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx539_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx539_53
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
                                                                                        jmp   .Lx539_51
.Lx539_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx539_49
                        cmp              edx, 14
                                                                                        je    .Lx539_53
                                                                                        jmp   .Lx539_52
.Lx539_49:
                        cmp              edx, 14
                                                                                        je    .Lx539_52
                        cmp              ecx, 7
                                                                                        je    .Lx539_53
                        cmp              edx, 7
                                                                                        je    .Lx539_53
                        cmp              ecx, 6
                                                                                        jne   .Lx539_50
                        cmp              edx, 6
                                                                                        jne   .Lx539_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx539_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx539_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx539_51
                                                                                        jmp   .Lx539_52
.Lx539_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx539_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx539_53
.Lx539_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx539_54
.Lx539_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx539_54
.Lx539_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx539_54:
                        mov              qword ptr [rbp + 6960], rax
                        mov              qword ptr [rbp + 6968], rdx
                        cmp              eax, 99
                                                                                        je    n259_call_builtin_prolog_α
                                                                                        jmp   n240_var_ref_α
n239_call_builtin_prolog_β:
                                                                                        jmp   n259_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6928], rax
                        mov              qword ptr [rbp + 6936], rdx
                        add              rsp, 16
                                                                                        jmp   n241_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx
                        add              rsp, 16
                                                                                        jmp   n242_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_prolog_α:
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
.Lx544_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx544_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx544_41
                        cmp              esi, 1
                                                                                        jne   .Lx544_55
                        mov              r8, rax
                                                                                        jmp   .Lx544_40
.Lx544_55:
                        cmp              esi, 2
                                                                                        jne   .Lx544_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx544_41
                        mov              r8, rax
                                                                                        jmp   .Lx544_40
.Lx544_56:
                        cmp              eax, 13
                                                                                        jne   .Lx544_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx544_41
                        cmp              rax, r8
                                                                                        je    .Lx544_41
                        mov              r8, rax
                                                                                        jmp   .Lx544_40
.Lx544_41:
                        lea              r9, [rbp + 6912]
.Lx544_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx544_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx544_43
                        cmp              esi, 1
                                                                                        jne   .Lx544_57
                        mov              r9, rax
                                                                                        jmp   .Lx544_42
.Lx544_57:
                        cmp              esi, 2
                                                                                        jne   .Lx544_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx544_43
                        mov              r9, rax
                                                                                        jmp   .Lx544_42
.Lx544_58:
                        cmp              eax, 13
                                                                                        jne   .Lx544_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx544_43
                        cmp              rax, r9
                                                                                        je    .Lx544_43
                        mov              r9, rax
                                                                                        jmp   .Lx544_42
.Lx544_43:
                        cmp              r8, r9
                                                                                        je    .Lx544_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx544_44
                        cmp              eax, 99
                                                                                        je    .Lx544_44
                        cmp              eax, 13
                                                                                        jne   .Lx544_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx544_44
                                                                                        jmp   .Lx544_45
.Lx544_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx544_53
                        cmp              eax, 99
                                                                                        je    .Lx544_53
                        cmp              eax, 13
                                                                                        jne   .Lx544_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx544_53
                                                                                        jmp   .Lx544_46
.Lx544_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx544_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx544_53
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
                                                                                        jmp   .Lx544_51
.Lx544_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx544_47
                        cmp              eax, 99
                                                                                        je    .Lx544_47
                        cmp              eax, 13
                                                                                        jne   .Lx544_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx544_47
                                                                                        jmp   .Lx544_48
.Lx544_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx544_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx544_53
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
                                                                                        jmp   .Lx544_51
.Lx544_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx544_49
                        cmp              edx, 14
                                                                                        je    .Lx544_53
                                                                                        jmp   .Lx544_52
.Lx544_49:
                        cmp              edx, 14
                                                                                        je    .Lx544_52
                        cmp              ecx, 7
                                                                                        je    .Lx544_53
                        cmp              edx, 7
                                                                                        je    .Lx544_53
                        cmp              ecx, 6
                                                                                        jne   .Lx544_50
                        cmp              edx, 6
                                                                                        jne   .Lx544_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx544_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx544_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx544_51
                                                                                        jmp   .Lx544_52
.Lx544_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx544_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx544_53
.Lx544_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx544_54
.Lx544_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx544_54
.Lx544_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx544_54:
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx
                        cmp              eax, 99
                                                                                        je    n259_call_builtin_prolog_α
                                                                                        jmp   n243_var_ref_α
n242_call_builtin_prolog_β:
                                                                                        jmp   n259_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx
                        add              rsp, 16
                                                                                        jmp   n244_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:
                        mov              qword ptr [rbp + 6864], 1
                        mov              dword ptr [rbp + 6868], 1
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rbp + 6872], rax
                                                                                        jmp   n245_var_ref_α
.Lx547_0:
                        .quad            .Lx547_0_s
.Lx547_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx
                        add              rsp, 16
                                                                                        jmp   n246_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n246_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 6768], rax
                        mov              qword ptr [rbp + 6776], rdx
                        add              rsp, 16
                                                                                        jmp   n247_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n247_call_builtin_prolog_α:
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
                                                                                        je    n259_call_builtin_prolog_α
                                                                                        jmp   n248_call_builtin_prolog_α
n247_call_builtin_prolog_β:
                                                                                        jmp   n259_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_prolog_α:
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
.Lx553_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx553_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx553_41
                        cmp              esi, 1
                                                                                        jne   .Lx553_55
                        mov              r8, rax
                                                                                        jmp   .Lx553_40
.Lx553_55:
                        cmp              esi, 2
                                                                                        jne   .Lx553_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx553_41
                        mov              r8, rax
                                                                                        jmp   .Lx553_40
.Lx553_56:
                        cmp              eax, 13
                                                                                        jne   .Lx553_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx553_41
                        cmp              rax, r8
                                                                                        je    .Lx553_41
                        mov              r8, rax
                                                                                        jmp   .Lx553_40
.Lx553_41:
                        lea              r9, [rbp + 6720]
.Lx553_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx553_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx553_43
                        cmp              esi, 1
                                                                                        jne   .Lx553_57
                        mov              r9, rax
                                                                                        jmp   .Lx553_42
.Lx553_57:
                        cmp              esi, 2
                                                                                        jne   .Lx553_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx553_43
                        mov              r9, rax
                                                                                        jmp   .Lx553_42
.Lx553_58:
                        cmp              eax, 13
                                                                                        jne   .Lx553_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx553_43
                        cmp              rax, r9
                                                                                        je    .Lx553_43
                        mov              r9, rax
                                                                                        jmp   .Lx553_42
.Lx553_43:
                        cmp              r8, r9
                                                                                        je    .Lx553_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx553_44
                        cmp              eax, 99
                                                                                        je    .Lx553_44
                        cmp              eax, 13
                                                                                        jne   .Lx553_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx553_44
                                                                                        jmp   .Lx553_45
.Lx553_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx553_53
                        cmp              eax, 99
                                                                                        je    .Lx553_53
                        cmp              eax, 13
                                                                                        jne   .Lx553_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx553_53
                                                                                        jmp   .Lx553_46
.Lx553_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx553_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx553_53
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
                                                                                        jmp   .Lx553_51
.Lx553_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx553_47
                        cmp              eax, 99
                                                                                        je    .Lx553_47
                        cmp              eax, 13
                                                                                        jne   .Lx553_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx553_47
                                                                                        jmp   .Lx553_48
.Lx553_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx553_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx553_53
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
                                                                                        jmp   .Lx553_51
.Lx553_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx553_49
                        cmp              edx, 14
                                                                                        je    .Lx553_53
                                                                                        jmp   .Lx553_52
.Lx553_49:
                        cmp              edx, 14
                                                                                        je    .Lx553_52
                        cmp              ecx, 7
                                                                                        je    .Lx553_53
                        cmp              edx, 7
                                                                                        je    .Lx553_53
                        cmp              ecx, 6
                                                                                        jne   .Lx553_50
                        cmp              edx, 6
                                                                                        jne   .Lx553_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx553_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx553_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx553_51
                                                                                        jmp   .Lx553_52
.Lx553_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx553_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx553_53
.Lx553_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx553_54
.Lx553_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx553_54
.Lx553_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx553_54:
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                        cmp              eax, 99
                                                                                        je    n259_call_builtin_prolog_α
                                                                                        jmp   n249_cut_α
n248_call_builtin_prolog_β:
                                                                                        jmp   n259_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n249_cut_α:
                                                                                        jmp   n250_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 6640], rax
                        mov              qword ptr [rbp + 6648], rdx
                        add              rsp, 16
                                                                                        jmp   n251_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6656], rax
                        mov              qword ptr [rbp + 6664], rdx
                        add              rsp, 16
                                                                                        jmp   n252_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 6672], rax
                        mov              qword ptr [rbp + 6680], rdx
                        add              rsp, 16
                                                                                        jmp   n253_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n253_call_proc_staged_α:
                        lea              rsi, [rbp + 6640]
                        lea              rdx, [rbp + 6656]
                        lea              rcx, [rbp + 6672]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx562_2
.Lx562_2:
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx
                        cmp              eax, 99
                                                                                        je    n476_call_builtin_prolog_α
                                                                                        jmp   n254_var_ref_α
n253_call_proc_staged_β:
                                                                                        jmp   n476_call_builtin_prolog_α
.Lx562_0:
                        .quad            .Lx562_0_s
.Lx562_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx
                        add              rsp, 16
                                                                                        jmp   n255_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx
                        add              rsp, 16
                                                                                        jmp   n256_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx
                        add              rsp, 16
                                                                                        jmp   n257_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n257_call_proc_staged_α:
                        lea              rsi, [rbp + 6512]
                        lea              rdx, [rbp + 6528]
                        lea              rcx, [rbp + 6544]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx570_2
.Lx570_2:
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                        cmp              eax, 99
                                                                                        je    n253_call_proc_staged_β
                                                                                        jmp   n258_move_label_α
n257_call_proc_staged_β:
                                                                                        jmp   n253_call_proc_staged_β
.Lx570_0:
                        .quad            .Lx570_0_s
.Lx570_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n258_move_label_α:
                        lea              rax, [rip + n257_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n259_call_builtin_prolog_α:
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
                                                                                        jmp   n260_var_ref_α
n259_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx
                        add              rsp, 16
                                                                                        jmp   n261_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_integer_α:
                        mov              qword ptr [rbp + 6368], 6
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rbp + 6376], rax
                                                                                        jmp   n262_lit_string_α
.Lx576_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:
                        mov              qword ptr [rbp + 6384], 1
                        mov              dword ptr [rbp + 6388], 1
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rbp + 6392], rax
                                                                                        jmp   n263_call_builtin_prolog_α
.Lx577_0:
                        .quad            .Lx577_0_s
.Lx577_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n263_call_builtin_prolog_α:
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
                                                                                        je    n296_var_ref_α
                                                                                        jmp   n264_var_ref_α
n263_call_builtin_prolog_β:
                                                                                        jmp   n296_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n264_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx
                        add              rsp, 16
                                                                                        jmp   n265_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:
                        mov              qword ptr [rbp + 6272], 1
                        mov              dword ptr [rbp + 6276], 1
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rbp + 6280], rax
                                                                                        jmp   n266_var_ref_α
.Lx581_0:
                        .quad            .Lx581_0_s
.Lx581_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx
                        add              rsp, 16
                                                                                        jmp   n267_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 6176], rax
                        mov              qword ptr [rbp + 6184], rdx
                        add              rsp, 16
                                                                                        jmp   n268_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_prolog_α:
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
                                                                                        je    n295_call_builtin_prolog_α
                                                                                        jmp   n269_call_builtin_prolog_α
n268_call_builtin_prolog_β:
                                                                                        jmp   n295_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n269_call_builtin_prolog_α:
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
.Lx587_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx587_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx587_41
                        cmp              esi, 1
                                                                                        jne   .Lx587_55
                        mov              r8, rax
                                                                                        jmp   .Lx587_40
.Lx587_55:
                        cmp              esi, 2
                                                                                        jne   .Lx587_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx587_41
                        mov              r8, rax
                                                                                        jmp   .Lx587_40
.Lx587_56:
                        cmp              eax, 13
                                                                                        jne   .Lx587_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx587_41
                        cmp              rax, r8
                                                                                        je    .Lx587_41
                        mov              r8, rax
                                                                                        jmp   .Lx587_40
.Lx587_41:
                        lea              r9, [rbp + 6128]
.Lx587_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx587_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx587_43
                        cmp              esi, 1
                                                                                        jne   .Lx587_57
                        mov              r9, rax
                                                                                        jmp   .Lx587_42
.Lx587_57:
                        cmp              esi, 2
                                                                                        jne   .Lx587_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx587_43
                        mov              r9, rax
                                                                                        jmp   .Lx587_42
.Lx587_58:
                        cmp              eax, 13
                                                                                        jne   .Lx587_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx587_43
                        cmp              rax, r9
                                                                                        je    .Lx587_43
                        mov              r9, rax
                                                                                        jmp   .Lx587_42
.Lx587_43:
                        cmp              r8, r9
                                                                                        je    .Lx587_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx587_44
                        cmp              eax, 99
                                                                                        je    .Lx587_44
                        cmp              eax, 13
                                                                                        jne   .Lx587_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx587_44
                                                                                        jmp   .Lx587_45
.Lx587_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx587_53
                        cmp              eax, 99
                                                                                        je    .Lx587_53
                        cmp              eax, 13
                                                                                        jne   .Lx587_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx587_53
                                                                                        jmp   .Lx587_46
.Lx587_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx587_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx587_53
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
                                                                                        jmp   .Lx587_51
.Lx587_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx587_47
                        cmp              eax, 99
                                                                                        je    .Lx587_47
                        cmp              eax, 13
                                                                                        jne   .Lx587_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx587_47
                                                                                        jmp   .Lx587_48
.Lx587_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx587_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx587_53
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
                                                                                        jmp   .Lx587_51
.Lx587_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx587_49
                        cmp              edx, 14
                                                                                        je    .Lx587_53
                                                                                        jmp   .Lx587_52
.Lx587_49:
                        cmp              edx, 14
                                                                                        je    .Lx587_52
                        cmp              ecx, 7
                                                                                        je    .Lx587_53
                        cmp              edx, 7
                                                                                        je    .Lx587_53
                        cmp              ecx, 6
                                                                                        jne   .Lx587_50
                        cmp              edx, 6
                                                                                        jne   .Lx587_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx587_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx587_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx587_51
                                                                                        jmp   .Lx587_52
.Lx587_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx587_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx587_53
.Lx587_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx587_54
.Lx587_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx587_54
.Lx587_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx587_54:
                        mov              qword ptr [rbp + 6096], rax
                        mov              qword ptr [rbp + 6104], rdx
                        cmp              eax, 99
                                                                                        je    n295_call_builtin_prolog_α
                                                                                        jmp   n270_var_ref_α
n269_call_builtin_prolog_β:
                                                                                        jmp   n295_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n270_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx
                        add              rsp, 16
                                                                                        jmp   n271_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6080], rax
                        mov              qword ptr [rbp + 6088], rdx
                        add              rsp, 16
                                                                                        jmp   n272_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n272_call_builtin_prolog_α:
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
                        lea              r9, [rbp + 6048]
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
                        mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx
                        cmp              eax, 99
                                                                                        je    n295_call_builtin_prolog_α
                                                                                        jmp   n273_var_ref_α
n272_call_builtin_prolog_β:
                                                                                        jmp   n295_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                        add              rsp, 16
                                                                                        jmp   n274_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:
                        mov              qword ptr [rbp + 6000], 1
                        mov              dword ptr [rbp + 6004], 1
                        mov              rax, qword ptr [rip + .Lx595_0]
                        mov              qword ptr [rbp + 6008], rax
                                                                                        jmp   n275_lit_string_α
.Lx595_0:
                        .quad            .Lx595_0_s
.Lx595_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:
                        mov              qword ptr [rbp + 5776], 1
                        mov              dword ptr [rbp + 5780], 1
                        mov              rax, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rbp + 5784], rax
                                                                                        jmp   n276_var_ref_α
.Lx596_0:
                        .quad            .Lx596_0_s
.Lx596_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n276_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                        add              rsp, 16
                                                                                        jmp   n277_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx
                        add              rsp, 16
                                                                                        jmp   n278_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n278_call_builtin_prolog_α:
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
                                                                                        jmp   n279_lit_string_α
n278_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:
                        mov              qword ptr [rbp + 5904], 1
                        mov              dword ptr [rbp + 5908], 1
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rbp + 5912], rax
                                                                                        jmp   n280_var_ref_α
.Lx602_0:
                        .quad            .Lx602_0_s
.Lx602_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                        add              rsp, 16
                                                                                        jmp   n281_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 5808], rax
                        mov              qword ptr [rbp + 5816], rdx
                        add              rsp, 16
                                                                                        jmp   n282_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n282_call_builtin_prolog_α:
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
                                                                                        jmp   n283_call_builtin_prolog_α
n282_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n283_call_builtin_prolog_α:
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
                                                                                        je    n295_call_builtin_prolog_α
                                                                                        jmp   n284_call_builtin_prolog_α
n283_call_builtin_prolog_β:
                                                                                        jmp   n295_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n284_call_builtin_prolog_α:
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
.Lx609_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx609_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx609_41
                        cmp              esi, 1
                                                                                        jne   .Lx609_55
                        mov              r8, rax
                                                                                        jmp   .Lx609_40
.Lx609_55:
                        cmp              esi, 2
                                                                                        jne   .Lx609_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx609_41
                        mov              r8, rax
                                                                                        jmp   .Lx609_40
.Lx609_56:
                        cmp              eax, 13
                                                                                        jne   .Lx609_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx609_41
                        cmp              rax, r8
                                                                                        je    .Lx609_41
                        mov              r8, rax
                                                                                        jmp   .Lx609_40
.Lx609_41:
                        lea              r9, [rbp + 5632]
.Lx609_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx609_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx609_43
                        cmp              esi, 1
                                                                                        jne   .Lx609_57
                        mov              r9, rax
                                                                                        jmp   .Lx609_42
.Lx609_57:
                        cmp              esi, 2
                                                                                        jne   .Lx609_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx609_43
                        mov              r9, rax
                                                                                        jmp   .Lx609_42
.Lx609_58:
                        cmp              eax, 13
                                                                                        jne   .Lx609_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx609_43
                        cmp              rax, r9
                                                                                        je    .Lx609_43
                        mov              r9, rax
                                                                                        jmp   .Lx609_42
.Lx609_43:
                        cmp              r8, r9
                                                                                        je    .Lx609_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx609_44
                        cmp              eax, 99
                                                                                        je    .Lx609_44
                        cmp              eax, 13
                                                                                        jne   .Lx609_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx609_44
                                                                                        jmp   .Lx609_45
.Lx609_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx609_53
                        cmp              eax, 99
                                                                                        je    .Lx609_53
                        cmp              eax, 13
                                                                                        jne   .Lx609_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx609_53
                                                                                        jmp   .Lx609_46
.Lx609_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx609_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx609_53
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
                                                                                        jmp   .Lx609_51
.Lx609_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx609_47
                        cmp              eax, 99
                                                                                        je    .Lx609_47
                        cmp              eax, 13
                                                                                        jne   .Lx609_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx609_47
                                                                                        jmp   .Lx609_48
.Lx609_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx609_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx609_53
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
                                                                                        jmp   .Lx609_51
.Lx609_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx609_49
                        cmp              edx, 14
                                                                                        je    .Lx609_53
                                                                                        jmp   .Lx609_52
.Lx609_49:
                        cmp              edx, 14
                                                                                        je    .Lx609_52
                        cmp              ecx, 7
                                                                                        je    .Lx609_53
                        cmp              edx, 7
                                                                                        je    .Lx609_53
                        cmp              ecx, 6
                                                                                        jne   .Lx609_50
                        cmp              edx, 6
                                                                                        jne   .Lx609_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx609_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx609_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx609_51
                                                                                        jmp   .Lx609_52
.Lx609_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx609_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx609_53
.Lx609_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx609_54
.Lx609_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx609_54
.Lx609_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx609_54:
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                        cmp              eax, 99
                                                                                        je    n295_call_builtin_prolog_α
                                                                                        jmp   n285_cut_α
n284_call_builtin_prolog_β:
                                                                                        jmp   n295_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n285_cut_α:
                                                                                        jmp   n286_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx
                        add              rsp, 16
                                                                                        jmp   n287_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                        add              rsp, 16
                                                                                        jmp   n288_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx
                        add              rsp, 16
                                                                                        jmp   n289_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n289_call_proc_staged_α:
                        lea              rsi, [rbp + 5552]
                        lea              rdx, [rbp + 5568]
                        lea              rcx, [rbp + 5584]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx618_2
.Lx618_2:
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              eax, 99
                                                                                        je    n476_call_builtin_prolog_α
                                                                                        jmp   n290_var_ref_α
n289_call_proc_staged_β:
                                                                                        jmp   n476_call_builtin_prolog_α
.Lx618_0:
                        .quad            .Lx618_0_s
.Lx618_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx
                        add              rsp, 16
                                                                                        jmp   n291_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n291_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 5440], rax
                        mov              qword ptr [rbp + 5448], rdx
                        add              rsp, 16
                                                                                        jmp   n292_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx
                        add              rsp, 16
                                                                                        jmp   n293_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n293_call_proc_staged_α:
                        lea              rsi, [rbp + 5424]
                        lea              rdx, [rbp + 5440]
                        lea              rcx, [rbp + 5456]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx626_2
.Lx626_2:
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                        cmp              eax, 99
                                                                                        je    n289_call_proc_staged_β
                                                                                        jmp   n294_move_label_α
n293_call_proc_staged_β:
                                                                                        jmp   n289_call_proc_staged_β
.Lx626_0:
                        .quad            .Lx626_0_s
.Lx626_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n294_move_label_α:
                        lea              rax, [rip + n293_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n295_call_builtin_prolog_α:
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
                                                                                        jmp   n296_var_ref_α
n295_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx
                        add              rsp, 16
                                                                                        jmp   n297_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_integer_α:
                        mov              qword ptr [rbp + 5280], 6
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rbp + 5288], rax
                                                                                        jmp   n298_lit_string_α
.Lx632_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:
                        mov              qword ptr [rbp + 5296], 1
                        mov              dword ptr [rbp + 5300], 1
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rbp + 5304], rax
                                                                                        jmp   n299_call_builtin_prolog_α
.Lx633_0:
                        .quad            .Lx633_0_s
.Lx633_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n299_call_builtin_prolog_α:
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
                                                                                        je    n338_var_ref_α
                                                                                        jmp   n300_var_ref_α
n299_call_builtin_prolog_β:
                                                                                        jmp   n338_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx
                        add              rsp, 16
                                                                                        jmp   n301_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_string_α:
                        mov              qword ptr [rbp + 5184], 1
                        mov              dword ptr [rbp + 5188], 1
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rbp + 5192], rax
                                                                                        jmp   n302_var_ref_α
.Lx637_0:
                        .quad            .Lx637_0_s
.Lx637_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                        add              rsp, 16
                                                                                        jmp   n303_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx
                        add              rsp, 16
                                                                                        jmp   n304_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_builtin_prolog_α:
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
                                                                                        je    n337_call_builtin_prolog_α
                                                                                        jmp   n305_call_builtin_prolog_α
n304_call_builtin_prolog_β:
                                                                                        jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n305_call_builtin_prolog_α:
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
.Lx643_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx643_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx643_41
                        cmp              esi, 1
                                                                                        jne   .Lx643_55
                        mov              r8, rax
                                                                                        jmp   .Lx643_40
.Lx643_55:
                        cmp              esi, 2
                                                                                        jne   .Lx643_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx643_41
                        mov              r8, rax
                                                                                        jmp   .Lx643_40
.Lx643_56:
                        cmp              eax, 13
                                                                                        jne   .Lx643_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx643_41
                        cmp              rax, r8
                                                                                        je    .Lx643_41
                        mov              r8, rax
                                                                                        jmp   .Lx643_40
.Lx643_41:
                        lea              r9, [rbp + 5040]
.Lx643_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx643_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx643_43
                        cmp              esi, 1
                                                                                        jne   .Lx643_57
                        mov              r9, rax
                                                                                        jmp   .Lx643_42
.Lx643_57:
                        cmp              esi, 2
                                                                                        jne   .Lx643_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx643_43
                        mov              r9, rax
                                                                                        jmp   .Lx643_42
.Lx643_58:
                        cmp              eax, 13
                                                                                        jne   .Lx643_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx643_43
                        cmp              rax, r9
                                                                                        je    .Lx643_43
                        mov              r9, rax
                                                                                        jmp   .Lx643_42
.Lx643_43:
                        cmp              r8, r9
                                                                                        je    .Lx643_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx643_44
                        cmp              eax, 99
                                                                                        je    .Lx643_44
                        cmp              eax, 13
                                                                                        jne   .Lx643_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx643_44
                                                                                        jmp   .Lx643_45
.Lx643_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx643_53
                        cmp              eax, 99
                                                                                        je    .Lx643_53
                        cmp              eax, 13
                                                                                        jne   .Lx643_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx643_53
                                                                                        jmp   .Lx643_46
.Lx643_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx643_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx643_53
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
                                                                                        jmp   .Lx643_51
.Lx643_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx643_47
                        cmp              eax, 99
                                                                                        je    .Lx643_47
                        cmp              eax, 13
                                                                                        jne   .Lx643_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx643_47
                                                                                        jmp   .Lx643_48
.Lx643_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx643_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx643_53
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
                                                                                        jmp   .Lx643_51
.Lx643_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx643_49
                        cmp              edx, 14
                                                                                        je    .Lx643_53
                                                                                        jmp   .Lx643_52
.Lx643_49:
                        cmp              edx, 14
                                                                                        je    .Lx643_52
                        cmp              ecx, 7
                                                                                        je    .Lx643_53
                        cmp              edx, 7
                                                                                        je    .Lx643_53
                        cmp              ecx, 6
                                                                                        jne   .Lx643_50
                        cmp              edx, 6
                                                                                        jne   .Lx643_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx643_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx643_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx643_51
                                                                                        jmp   .Lx643_52
.Lx643_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx643_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx643_53
.Lx643_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx643_54
.Lx643_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx643_54
.Lx643_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx643_54:
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                        cmp              eax, 99
                                                                                        je    n337_call_builtin_prolog_α
                                                                                        jmp   n306_var_ref_α
n305_call_builtin_prolog_β:
                                                                                        jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                        add              rsp, 16
                                                                                        jmp   n307_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                        add              rsp, 16
                                                                                        jmp   n308_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n308_call_builtin_prolog_α:
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
.Lx648_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx648_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx648_41
                        cmp              esi, 1
                                                                                        jne   .Lx648_55
                        mov              r8, rax
                                                                                        jmp   .Lx648_40
.Lx648_55:
                        cmp              esi, 2
                                                                                        jne   .Lx648_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx648_41
                        mov              r8, rax
                                                                                        jmp   .Lx648_40
.Lx648_56:
                        cmp              eax, 13
                                                                                        jne   .Lx648_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx648_41
                        cmp              rax, r8
                                                                                        je    .Lx648_41
                        mov              r8, rax
                                                                                        jmp   .Lx648_40
.Lx648_41:
                        lea              r9, [rbp + 4960]
.Lx648_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx648_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx648_43
                        cmp              esi, 1
                                                                                        jne   .Lx648_57
                        mov              r9, rax
                                                                                        jmp   .Lx648_42
.Lx648_57:
                        cmp              esi, 2
                                                                                        jne   .Lx648_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx648_43
                        mov              r9, rax
                                                                                        jmp   .Lx648_42
.Lx648_58:
                        cmp              eax, 13
                                                                                        jne   .Lx648_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx648_43
                        cmp              rax, r9
                                                                                        je    .Lx648_43
                        mov              r9, rax
                                                                                        jmp   .Lx648_42
.Lx648_43:
                        cmp              r8, r9
                                                                                        je    .Lx648_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx648_44
                        cmp              eax, 99
                                                                                        je    .Lx648_44
                        cmp              eax, 13
                                                                                        jne   .Lx648_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx648_44
                                                                                        jmp   .Lx648_45
.Lx648_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx648_53
                        cmp              eax, 99
                                                                                        je    .Lx648_53
                        cmp              eax, 13
                                                                                        jne   .Lx648_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx648_53
                                                                                        jmp   .Lx648_46
.Lx648_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx648_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx648_53
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
                                                                                        jmp   .Lx648_51
.Lx648_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx648_47
                        cmp              eax, 99
                                                                                        je    .Lx648_47
                        cmp              eax, 13
                                                                                        jne   .Lx648_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx648_47
                                                                                        jmp   .Lx648_48
.Lx648_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx648_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx648_53
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
                                                                                        jmp   .Lx648_51
.Lx648_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx648_49
                        cmp              edx, 14
                                                                                        je    .Lx648_53
                                                                                        jmp   .Lx648_52
.Lx648_49:
                        cmp              edx, 14
                                                                                        je    .Lx648_52
                        cmp              ecx, 7
                                                                                        je    .Lx648_53
                        cmp              edx, 7
                                                                                        je    .Lx648_53
                        cmp              ecx, 6
                                                                                        jne   .Lx648_50
                        cmp              edx, 6
                                                                                        jne   .Lx648_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx648_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx648_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx648_51
                                                                                        jmp   .Lx648_52
.Lx648_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx648_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx648_53
.Lx648_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx648_54
.Lx648_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx648_54
.Lx648_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx648_54:
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                        cmp              eax, 99
                                                                                        je    n337_call_builtin_prolog_α
                                                                                        jmp   n309_var_ref_α
n308_call_builtin_prolog_β:
                                                                                        jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                        add              rsp, 16
                                                                                        jmp   n310_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:
                        mov              qword ptr [rbp + 4912], 1
                        mov              dword ptr [rbp + 4916], 1
                        mov              rax, qword ptr [rip + .Lx651_0]
                        mov              qword ptr [rbp + 4920], rax
                                                                                        jmp   n311_lit_string_α
.Lx651_0:
                        .quad            .Lx651_0_s
.Lx651_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:
                        mov              qword ptr [rbp + 4688], 1
                        mov              dword ptr [rbp + 4692], 1
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rbp + 4696], rax
                                                                                        jmp   n312_lit_string_α
.Lx652_0:
                        .quad            .Lx652_0_s
.Lx652_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:
                        mov              qword ptr [rbp + 4464], 1
                        mov              dword ptr [rbp + 4468], 1
                        mov              rax, qword ptr [rip + .Lx653_0]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n313_var_ref_α
.Lx653_0:
                        .quad            .Lx653_0_s
.Lx653_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        add              rsp, 16
                                                                                        jmp   n314_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                        add              rsp, 16
                                                                                        jmp   n315_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_prolog_α:
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
                                                                                        jmp   n316_lit_string_α
n315_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:
                        mov              qword ptr [rbp + 4592], 1
                        mov              dword ptr [rbp + 4596], 1
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n317_var_ref_α
.Lx659_0:
                        .quad            .Lx659_0_s
.Lx659_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                        add              rsp, 16
                                                                                        jmp   n318_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                        add              rsp, 16
                                                                                        jmp   n319_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n319_call_builtin_prolog_α:
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
                                                                                        jmp   n320_call_builtin_prolog_α
n319_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n320_call_builtin_prolog_α:
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
                                                                                        jmp   n321_lit_string_α
n320_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:
                        mov              qword ptr [rbp + 4816], 1
                        mov              dword ptr [rbp + 4820], 1
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rbp + 4824], rax
                                                                                        jmp   n322_var_ref_α
.Lx666_0:
                        .quad            .Lx666_0_s
.Lx666_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        add              rsp, 16
                                                                                        jmp   n323_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_integer_α:
                        mov              qword ptr [rbp + 4720], 6
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rbp + 4728], rax
                                                                                        jmp   n324_call_builtin_prolog_α
.Lx669_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n324_call_builtin_prolog_α:
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
                                                                                        jmp   n325_call_builtin_prolog_α
n324_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n325_call_builtin_prolog_α:
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
                                                                                        je    n337_call_builtin_prolog_α
                                                                                        jmp   n326_call_builtin_prolog_α
n325_call_builtin_prolog_β:
                                                                                        jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n326_call_builtin_prolog_α:
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
.Lx672_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx672_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx672_41
                        cmp              esi, 1
                                                                                        jne   .Lx672_55
                        mov              r8, rax
                                                                                        jmp   .Lx672_40
.Lx672_55:
                        cmp              esi, 2
                                                                                        jne   .Lx672_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx672_41
                        mov              r8, rax
                                                                                        jmp   .Lx672_40
.Lx672_56:
                        cmp              eax, 13
                                                                                        jne   .Lx672_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx672_41
                        cmp              rax, r8
                                                                                        je    .Lx672_41
                        mov              r8, rax
                                                                                        jmp   .Lx672_40
.Lx672_41:
                        lea              r9, [rbp + 4320]
.Lx672_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx672_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx672_43
                        cmp              esi, 1
                                                                                        jne   .Lx672_57
                        mov              r9, rax
                                                                                        jmp   .Lx672_42
.Lx672_57:
                        cmp              esi, 2
                                                                                        jne   .Lx672_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx672_43
                        mov              r9, rax
                                                                                        jmp   .Lx672_42
.Lx672_58:
                        cmp              eax, 13
                                                                                        jne   .Lx672_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx672_43
                        cmp              rax, r9
                                                                                        je    .Lx672_43
                        mov              r9, rax
                                                                                        jmp   .Lx672_42
.Lx672_43:
                        cmp              r8, r9
                                                                                        je    .Lx672_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx672_44
                        cmp              eax, 99
                                                                                        je    .Lx672_44
                        cmp              eax, 13
                                                                                        jne   .Lx672_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx672_44
                                                                                        jmp   .Lx672_45
.Lx672_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx672_53
                        cmp              eax, 99
                                                                                        je    .Lx672_53
                        cmp              eax, 13
                                                                                        jne   .Lx672_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx672_53
                                                                                        jmp   .Lx672_46
.Lx672_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx672_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx672_53
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
                                                                                        jmp   .Lx672_51
.Lx672_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx672_47
                        cmp              eax, 99
                                                                                        je    .Lx672_47
                        cmp              eax, 13
                                                                                        jne   .Lx672_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx672_47
                                                                                        jmp   .Lx672_48
.Lx672_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx672_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx672_53
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
                                                                                        jmp   .Lx672_51
.Lx672_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx672_49
                        cmp              edx, 14
                                                                                        je    .Lx672_53
                                                                                        jmp   .Lx672_52
.Lx672_49:
                        cmp              edx, 14
                                                                                        je    .Lx672_52
                        cmp              ecx, 7
                                                                                        je    .Lx672_53
                        cmp              edx, 7
                                                                                        je    .Lx672_53
                        cmp              ecx, 6
                                                                                        jne   .Lx672_50
                        cmp              edx, 6
                                                                                        jne   .Lx672_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx672_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx672_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx672_51
                                                                                        jmp   .Lx672_52
.Lx672_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx672_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx672_53
.Lx672_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx672_54
.Lx672_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx672_54
.Lx672_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx672_54:
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              eax, 99
                                                                                        je    n337_call_builtin_prolog_α
                                                                                        jmp   n327_cut_α
n326_call_builtin_prolog_β:
                                                                                        jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n327_cut_α:
                                                                                        jmp   n328_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                        add              rsp, 16
                                                                                        jmp   n329_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        add              rsp, 16
                                                                                        jmp   n330_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        add              rsp, 16
                                                                                        jmp   n331_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n331_call_proc_staged_α:
                        lea              rsi, [rbp + 4240]
                        lea              rdx, [rbp + 4256]
                        lea              rcx, [rbp + 4272]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx681_2
.Lx681_2:
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              eax, 99
                                                                                        je    n476_call_builtin_prolog_α
                                                                                        jmp   n332_var_ref_α
n331_call_proc_staged_β:
                                                                                        jmp   n476_call_builtin_prolog_α
.Lx681_0:
                        .quad            .Lx681_0_s
.Lx681_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                        add              rsp, 16
                                                                                        jmp   n333_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                        add              rsp, 16
                                                                                        jmp   n334_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        add              rsp, 16
                                                                                        jmp   n335_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n335_call_proc_staged_α:
                        lea              rsi, [rbp + 4112]
                        lea              rdx, [rbp + 4128]
                        lea              rcx, [rbp + 4144]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx689_2
.Lx689_2:
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        cmp              eax, 99
                                                                                        je    n331_call_proc_staged_β
                                                                                        jmp   n336_move_label_α
n335_call_proc_staged_β:
                                                                                        jmp   n331_call_proc_staged_β
.Lx689_0:
                        .quad            .Lx689_0_s
.Lx689_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n336_move_label_α:
                        lea              rax, [rip + n335_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n337_call_builtin_prolog_α:
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
                                                                                        jmp   n338_var_ref_α
n337_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        add              rsp, 16
                                                                                        jmp   n339_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_integer_α:
                        mov              qword ptr [rbp + 3968], 6
                        mov              rax, qword ptr [rip + .Lx695_0]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n340_lit_string_α
.Lx695_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:
                        mov              qword ptr [rbp + 3984], 1
                        mov              dword ptr [rbp + 3988], 1
                        mov              rax, qword ptr [rip + .Lx696_0]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n341_call_builtin_prolog_α
.Lx696_0:
                        .quad            .Lx696_0_s
.Lx696_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n341_call_builtin_prolog_α:
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
                                                                                        je    n377_var_ref_α
                                                                                        jmp   n342_var_ref_α
n341_call_builtin_prolog_β:
                                                                                        jmp   n377_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        add              rsp, 16
                                                                                        jmp   n343_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:
                        mov              qword ptr [rbp + 3872], 1
                        mov              dword ptr [rbp + 3876], 1
                        mov              rax, qword ptr [rip + .Lx700_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n344_var_ref_α
.Lx700_0:
                        .quad            .Lx700_0_s
.Lx700_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                        add              rsp, 16
                                                                                        jmp   n345_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        add              rsp, 16
                                                                                        jmp   n346_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n346_call_builtin_prolog_α:
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
                                                                                        je    n376_call_builtin_prolog_α
                                                                                        jmp   n347_call_builtin_prolog_α
n346_call_builtin_prolog_β:
                                                                                        jmp   n376_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n347_call_builtin_prolog_α:
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
.Lx706_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx706_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx706_41
                        cmp              esi, 1
                                                                                        jne   .Lx706_55
                        mov              r8, rax
                                                                                        jmp   .Lx706_40
.Lx706_55:
                        cmp              esi, 2
                                                                                        jne   .Lx706_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx706_41
                        mov              r8, rax
                                                                                        jmp   .Lx706_40
.Lx706_56:
                        cmp              eax, 13
                                                                                        jne   .Lx706_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx706_41
                        cmp              rax, r8
                                                                                        je    .Lx706_41
                        mov              r8, rax
                                                                                        jmp   .Lx706_40
.Lx706_41:
                        lea              r9, [rbp + 3728]
.Lx706_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx706_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx706_43
                        cmp              esi, 1
                                                                                        jne   .Lx706_57
                        mov              r9, rax
                                                                                        jmp   .Lx706_42
.Lx706_57:
                        cmp              esi, 2
                                                                                        jne   .Lx706_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx706_43
                        mov              r9, rax
                                                                                        jmp   .Lx706_42
.Lx706_58:
                        cmp              eax, 13
                                                                                        jne   .Lx706_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx706_43
                        cmp              rax, r9
                                                                                        je    .Lx706_43
                        mov              r9, rax
                                                                                        jmp   .Lx706_42
.Lx706_43:
                        cmp              r8, r9
                                                                                        je    .Lx706_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx706_44
                        cmp              eax, 99
                                                                                        je    .Lx706_44
                        cmp              eax, 13
                                                                                        jne   .Lx706_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx706_44
                                                                                        jmp   .Lx706_45
.Lx706_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx706_53
                        cmp              eax, 99
                                                                                        je    .Lx706_53
                        cmp              eax, 13
                                                                                        jne   .Lx706_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx706_53
                                                                                        jmp   .Lx706_46
.Lx706_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx706_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx706_53
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
                                                                                        jmp   .Lx706_51
.Lx706_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx706_47
                        cmp              eax, 99
                                                                                        je    .Lx706_47
                        cmp              eax, 13
                                                                                        jne   .Lx706_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx706_47
                                                                                        jmp   .Lx706_48
.Lx706_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx706_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx706_53
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
                                                                                        jmp   .Lx706_51
.Lx706_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx706_49
                        cmp              edx, 14
                                                                                        je    .Lx706_53
                                                                                        jmp   .Lx706_52
.Lx706_49:
                        cmp              edx, 14
                                                                                        je    .Lx706_52
                        cmp              ecx, 7
                                                                                        je    .Lx706_53
                        cmp              edx, 7
                                                                                        je    .Lx706_53
                        cmp              ecx, 6
                                                                                        jne   .Lx706_50
                        cmp              edx, 6
                                                                                        jne   .Lx706_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx706_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx706_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx706_51
                                                                                        jmp   .Lx706_52
.Lx706_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx706_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx706_53
.Lx706_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx706_54
.Lx706_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx706_54
.Lx706_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx706_54:
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              eax, 99
                                                                                        je    n376_call_builtin_prolog_α
                                                                                        jmp   n348_var_ref_α
n347_call_builtin_prolog_β:
                                                                                        jmp   n376_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        add              rsp, 16
                                                                                        jmp   n349_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        add              rsp, 16
                                                                                        jmp   n350_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n350_call_builtin_prolog_α:
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
.Lx711_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx711_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx711_41
                        cmp              esi, 1
                                                                                        jne   .Lx711_55
                        mov              r8, rax
                                                                                        jmp   .Lx711_40
.Lx711_55:
                        cmp              esi, 2
                                                                                        jne   .Lx711_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx711_41
                        mov              r8, rax
                                                                                        jmp   .Lx711_40
.Lx711_56:
                        cmp              eax, 13
                                                                                        jne   .Lx711_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx711_41
                        cmp              rax, r8
                                                                                        je    .Lx711_41
                        mov              r8, rax
                                                                                        jmp   .Lx711_40
.Lx711_41:
                        lea              r9, [rbp + 3648]
.Lx711_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx711_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx711_43
                        cmp              esi, 1
                                                                                        jne   .Lx711_57
                        mov              r9, rax
                                                                                        jmp   .Lx711_42
.Lx711_57:
                        cmp              esi, 2
                                                                                        jne   .Lx711_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx711_43
                        mov              r9, rax
                                                                                        jmp   .Lx711_42
.Lx711_58:
                        cmp              eax, 13
                                                                                        jne   .Lx711_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx711_43
                        cmp              rax, r9
                                                                                        je    .Lx711_43
                        mov              r9, rax
                                                                                        jmp   .Lx711_42
.Lx711_43:
                        cmp              r8, r9
                                                                                        je    .Lx711_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx711_44
                        cmp              eax, 99
                                                                                        je    .Lx711_44
                        cmp              eax, 13
                                                                                        jne   .Lx711_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx711_44
                                                                                        jmp   .Lx711_45
.Lx711_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx711_53
                        cmp              eax, 99
                                                                                        je    .Lx711_53
                        cmp              eax, 13
                                                                                        jne   .Lx711_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx711_53
                                                                                        jmp   .Lx711_46
.Lx711_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx711_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx711_53
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
                                                                                        jmp   .Lx711_51
.Lx711_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx711_47
                        cmp              eax, 99
                                                                                        je    .Lx711_47
                        cmp              eax, 13
                                                                                        jne   .Lx711_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx711_47
                                                                                        jmp   .Lx711_48
.Lx711_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx711_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx711_53
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
                                                                                        jmp   .Lx711_51
.Lx711_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx711_49
                        cmp              edx, 14
                                                                                        je    .Lx711_53
                                                                                        jmp   .Lx711_52
.Lx711_49:
                        cmp              edx, 14
                                                                                        je    .Lx711_52
                        cmp              ecx, 7
                                                                                        je    .Lx711_53
                        cmp              edx, 7
                                                                                        je    .Lx711_53
                        cmp              ecx, 6
                                                                                        jne   .Lx711_50
                        cmp              edx, 6
                                                                                        jne   .Lx711_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx711_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx711_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx711_51
                                                                                        jmp   .Lx711_52
.Lx711_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx711_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx711_53
.Lx711_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx711_54
.Lx711_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx711_54
.Lx711_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx711_54:
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 99
                                                                                        je    n376_call_builtin_prolog_α
                                                                                        jmp   n351_var_ref_α
n350_call_builtin_prolog_β:
                                                                                        jmp   n376_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        add              rsp, 16
                                                                                        jmp   n352_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              dword ptr [rbp + 3604], 1
                        mov              rax, qword ptr [rip + .Lx714_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n353_lit_string_α
.Lx714_0:
                        .quad            .Lx714_0_s
.Lx714_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:
                        mov              qword ptr [rbp + 3376], 1
                        mov              dword ptr [rbp + 3380], 1
                        mov              rax, qword ptr [rip + .Lx715_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n354_var_ref_α
.Lx715_0:
                        .quad            .Lx715_0_s
.Lx715_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        add              rsp, 16
                                                                                        jmp   n355_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                        add              rsp, 16
                                                                                        jmp   n356_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n356_call_builtin_prolog_α:
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
                                                                                        jmp   n357_lit_string_α
n356_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:
                        mov              qword ptr [rbp + 3504], 1
                        mov              dword ptr [rbp + 3508], 1
                        mov              rax, qword ptr [rip + .Lx721_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n358_var_ref_α
.Lx721_0:
                        .quad            .Lx721_0_s
.Lx721_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        add              rsp, 16
                                                                                        jmp   n359_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        add              rsp, 16
                                                                                        jmp   n360_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n360_call_builtin_prolog_α:
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
                                                                                        jmp   n361_call_builtin_prolog_α
n360_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n361_call_builtin_prolog_α:
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
                                                                                        je    n376_call_builtin_prolog_α
                                                                                        jmp   n362_call_builtin_prolog_α
n361_call_builtin_prolog_β:
                                                                                        jmp   n376_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n362_call_builtin_prolog_α:
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
.Lx728_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx728_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx728_41
                        cmp              esi, 1
                                                                                        jne   .Lx728_55
                        mov              r8, rax
                                                                                        jmp   .Lx728_40
.Lx728_55:
                        cmp              esi, 2
                                                                                        jne   .Lx728_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx728_41
                        mov              r8, rax
                                                                                        jmp   .Lx728_40
.Lx728_56:
                        cmp              eax, 13
                                                                                        jne   .Lx728_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx728_41
                        cmp              rax, r8
                                                                                        je    .Lx728_41
                        mov              r8, rax
                                                                                        jmp   .Lx728_40
.Lx728_41:
                        lea              r9, [rbp + 3232]
.Lx728_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx728_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx728_43
                        cmp              esi, 1
                                                                                        jne   .Lx728_57
                        mov              r9, rax
                                                                                        jmp   .Lx728_42
.Lx728_57:
                        cmp              esi, 2
                                                                                        jne   .Lx728_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx728_43
                        mov              r9, rax
                                                                                        jmp   .Lx728_42
.Lx728_58:
                        cmp              eax, 13
                                                                                        jne   .Lx728_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx728_43
                        cmp              rax, r9
                                                                                        je    .Lx728_43
                        mov              r9, rax
                                                                                        jmp   .Lx728_42
.Lx728_43:
                        cmp              r8, r9
                                                                                        je    .Lx728_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx728_44
                        cmp              eax, 99
                                                                                        je    .Lx728_44
                        cmp              eax, 13
                                                                                        jne   .Lx728_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx728_44
                                                                                        jmp   .Lx728_45
.Lx728_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx728_53
                        cmp              eax, 99
                                                                                        je    .Lx728_53
                        cmp              eax, 13
                                                                                        jne   .Lx728_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx728_53
                                                                                        jmp   .Lx728_46
.Lx728_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx728_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx728_53
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
                                                                                        jmp   .Lx728_51
.Lx728_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx728_47
                        cmp              eax, 99
                                                                                        je    .Lx728_47
                        cmp              eax, 13
                                                                                        jne   .Lx728_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx728_47
                                                                                        jmp   .Lx728_48
.Lx728_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx728_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx728_53
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
                                                                                        jmp   .Lx728_51
.Lx728_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx728_49
                        cmp              edx, 14
                                                                                        je    .Lx728_53
                                                                                        jmp   .Lx728_52
.Lx728_49:
                        cmp              edx, 14
                                                                                        je    .Lx728_52
                        cmp              ecx, 7
                                                                                        je    .Lx728_53
                        cmp              edx, 7
                                                                                        je    .Lx728_53
                        cmp              ecx, 6
                                                                                        jne   .Lx728_50
                        cmp              edx, 6
                                                                                        jne   .Lx728_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx728_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx728_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx728_51
                                                                                        jmp   .Lx728_52
.Lx728_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx728_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx728_53
.Lx728_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx728_54
.Lx728_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx728_54
.Lx728_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx728_54:
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 99
                                                                                        je    n376_call_builtin_prolog_α
                                                                                        jmp   n363_cut_α
n362_call_builtin_prolog_β:
                                                                                        jmp   n376_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n363_cut_α:
                                                                                        jmp   n364_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        add              rsp, 16
                                                                                        jmp   n365_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3176], rax
                        .section         .rodata
.Lrkfn733:              .string          "$tt_integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn733]
                        lea              rsi, [rbp + 3168]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 99
                                                                                        je    n476_call_builtin_prolog_α
                                                                                        jmp   n366_var_ref_α
n365_call_builtin_prolog_β:
                                                                                        jmp   n476_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        add              rsp, 16
                                                                                        jmp   n367_var_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:
                        mov              rax, qword ptr [rbp + 8128]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 8136]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n368_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_integer_α:
                        mov              qword ptr [rbp + 3136], 6
                        mov              rax, qword ptr [rip + .Lx738_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n369_call_builtin_prolog_α
.Lx738_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n369_call_builtin_prolog_α:
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
                                                                                        je    n476_call_builtin_prolog_α
                                                                                        jmp   n370_call_builtin_prolog_α
n369_call_builtin_prolog_β:
                                                                                        jmp   n476_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n370_call_builtin_prolog_α:
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
                                                                                        je    n476_call_builtin_prolog_α
                                                                                        jmp   n371_var_ref_α
n370_call_builtin_prolog_β:
                                                                                        jmp   n476_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n371_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        add              rsp, 16
                                                                                        jmp   n372_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n372_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        add              rsp, 16
                                                                                        jmp   n373_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n373_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        add              rsp, 16
                                                                                        jmp   n374_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n374_call_proc_staged_α:
                        lea              rsi, [rbp + 2944]
                        lea              rdx, [rbp + 2960]
                        lea              rcx, [rbp + 2976]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx748_2
.Lx748_2:
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n476_call_builtin_prolog_α
                                                                                        jmp   n375_move_label_α
n374_call_proc_staged_β:
                                                                                        jmp   n476_call_builtin_prolog_α
.Lx748_0:
                        .quad            .Lx748_0_s
.Lx748_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n375_move_label_α:
                        lea              rax, [rip + n374_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n376_call_builtin_prolog_α:
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
                                                                                        jmp   n377_var_ref_α
n376_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n377_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        add              rsp, 16
                                                                                        jmp   n378_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_integer_α:
                        mov              qword ptr [rbp + 2800], 6
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n379_lit_string_α
.Lx754_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:
                        mov              qword ptr [rbp + 2816], 1
                        mov              dword ptr [rbp + 2820], 1
                        mov              rax, qword ptr [rip + .Lx755_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n380_call_builtin_prolog_α
.Lx755_0:
                        .quad            .Lx755_0_s
.Lx755_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n380_call_builtin_prolog_α:
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
                                                                                        je    n401_var_ref_α
                                                                                        jmp   n381_var_ref_α
n380_call_builtin_prolog_β:
                                                                                        jmp   n401_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n381_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        add              rsp, 16
                                                                                        jmp   n382_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              dword ptr [rbp + 2708], 1
                        mov              rax, qword ptr [rip + .Lx759_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n383_var_ref_α
.Lx759_0:
                        .quad            .Lx759_0_s
.Lx759_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        add              rsp, 16
                                                                                        jmp   n384_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n384_call_builtin_prolog_α:
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
                                                                                        je    n400_call_builtin_prolog_α
                                                                                        jmp   n385_call_builtin_prolog_α
n384_call_builtin_prolog_β:
                                                                                        jmp   n400_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n385_call_builtin_prolog_α:
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
.Lx763_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx763_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx763_41
                        cmp              esi, 1
                                                                                        jne   .Lx763_55
                        mov              r8, rax
                                                                                        jmp   .Lx763_40
.Lx763_55:
                        cmp              esi, 2
                                                                                        jne   .Lx763_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx763_41
                        mov              r8, rax
                                                                                        jmp   .Lx763_40
.Lx763_56:
                        cmp              eax, 13
                                                                                        jne   .Lx763_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx763_41
                        cmp              rax, r8
                                                                                        je    .Lx763_41
                        mov              r8, rax
                                                                                        jmp   .Lx763_40
.Lx763_41:
                        lea              r9, [rbp + 2592]
.Lx763_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx763_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx763_43
                        cmp              esi, 1
                                                                                        jne   .Lx763_57
                        mov              r9, rax
                                                                                        jmp   .Lx763_42
.Lx763_57:
                        cmp              esi, 2
                                                                                        jne   .Lx763_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx763_43
                        mov              r9, rax
                                                                                        jmp   .Lx763_42
.Lx763_58:
                        cmp              eax, 13
                                                                                        jne   .Lx763_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx763_43
                        cmp              rax, r9
                                                                                        je    .Lx763_43
                        mov              r9, rax
                                                                                        jmp   .Lx763_42
.Lx763_43:
                        cmp              r8, r9
                                                                                        je    .Lx763_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx763_44
                        cmp              eax, 99
                                                                                        je    .Lx763_44
                        cmp              eax, 13
                                                                                        jne   .Lx763_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx763_44
                                                                                        jmp   .Lx763_45
.Lx763_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx763_53
                        cmp              eax, 99
                                                                                        je    .Lx763_53
                        cmp              eax, 13
                                                                                        jne   .Lx763_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx763_53
                                                                                        jmp   .Lx763_46
.Lx763_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx763_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx763_53
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
                                                                                        jmp   .Lx763_51
.Lx763_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx763_47
                        cmp              eax, 99
                                                                                        je    .Lx763_47
                        cmp              eax, 13
                                                                                        jne   .Lx763_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx763_47
                                                                                        jmp   .Lx763_48
.Lx763_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx763_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx763_53
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
                                                                                        jmp   .Lx763_51
.Lx763_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx763_49
                        cmp              edx, 14
                                                                                        je    .Lx763_53
                                                                                        jmp   .Lx763_52
.Lx763_49:
                        cmp              edx, 14
                                                                                        je    .Lx763_52
                        cmp              ecx, 7
                                                                                        je    .Lx763_53
                        cmp              edx, 7
                                                                                        je    .Lx763_53
                        cmp              ecx, 6
                                                                                        jne   .Lx763_50
                        cmp              edx, 6
                                                                                        jne   .Lx763_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx763_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx763_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx763_51
                                                                                        jmp   .Lx763_52
.Lx763_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx763_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx763_53
.Lx763_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx763_54
.Lx763_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx763_54
.Lx763_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx763_54:
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    n400_call_builtin_prolog_α
                                                                                        jmp   n386_var_ref_α
n385_call_builtin_prolog_β:
                                                                                        jmp   n400_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        add              rsp, 16
                                                                                        jmp   n387_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n387_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        add              rsp, 16
                                                                                        jmp   n388_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n388_call_builtin_prolog_α:
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
.Lx768_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx768_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx768_41
                        cmp              esi, 1
                                                                                        jne   .Lx768_55
                        mov              r8, rax
                                                                                        jmp   .Lx768_40
.Lx768_55:
                        cmp              esi, 2
                                                                                        jne   .Lx768_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx768_41
                        mov              r8, rax
                                                                                        jmp   .Lx768_40
.Lx768_56:
                        cmp              eax, 13
                                                                                        jne   .Lx768_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx768_41
                        cmp              rax, r8
                                                                                        je    .Lx768_41
                        mov              r8, rax
                                                                                        jmp   .Lx768_40
.Lx768_41:
                        lea              r9, [rbp + 2512]
.Lx768_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx768_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx768_43
                        cmp              esi, 1
                                                                                        jne   .Lx768_57
                        mov              r9, rax
                                                                                        jmp   .Lx768_42
.Lx768_57:
                        cmp              esi, 2
                                                                                        jne   .Lx768_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx768_43
                        mov              r9, rax
                                                                                        jmp   .Lx768_42
.Lx768_58:
                        cmp              eax, 13
                                                                                        jne   .Lx768_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx768_43
                        cmp              rax, r9
                                                                                        je    .Lx768_43
                        mov              r9, rax
                                                                                        jmp   .Lx768_42
.Lx768_43:
                        cmp              r8, r9
                                                                                        je    .Lx768_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx768_44
                        cmp              eax, 99
                                                                                        je    .Lx768_44
                        cmp              eax, 13
                                                                                        jne   .Lx768_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx768_44
                                                                                        jmp   .Lx768_45
.Lx768_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx768_53
                        cmp              eax, 99
                                                                                        je    .Lx768_53
                        cmp              eax, 13
                                                                                        jne   .Lx768_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx768_53
                                                                                        jmp   .Lx768_46
.Lx768_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx768_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx768_53
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
                                                                                        jmp   .Lx768_51
.Lx768_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx768_47
                        cmp              eax, 99
                                                                                        je    .Lx768_47
                        cmp              eax, 13
                                                                                        jne   .Lx768_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx768_47
                                                                                        jmp   .Lx768_48
.Lx768_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx768_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx768_53
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
                                                                                        jmp   .Lx768_51
.Lx768_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx768_49
                        cmp              edx, 14
                                                                                        je    .Lx768_53
                                                                                        jmp   .Lx768_52
.Lx768_49:
                        cmp              edx, 14
                                                                                        je    .Lx768_52
                        cmp              ecx, 7
                                                                                        je    .Lx768_53
                        cmp              edx, 7
                                                                                        je    .Lx768_53
                        cmp              ecx, 6
                                                                                        jne   .Lx768_50
                        cmp              edx, 6
                                                                                        jne   .Lx768_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx768_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx768_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx768_51
                                                                                        jmp   .Lx768_52
.Lx768_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx768_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx768_53
.Lx768_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx768_54
.Lx768_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx768_54
.Lx768_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx768_54:
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    n400_call_builtin_prolog_α
                                                                                        jmp   n389_var_ref_α
n388_call_builtin_prolog_β:
                                                                                        jmp   n400_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n389_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        add              rsp, 16
                                                                                        jmp   n390_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              dword ptr [rbp + 2468], 1
                        mov              rax, qword ptr [rip + .Lx771_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n391_var_ref_α
.Lx771_0:
                        .quad            .Lx771_0_s
.Lx771_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n391_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        add              rsp, 16
                                                                                        jmp   n392_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n392_call_builtin_prolog_α:
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
                                                                                        je    n400_call_builtin_prolog_α
                                                                                        jmp   n393_call_builtin_prolog_α
n392_call_builtin_prolog_β:
                                                                                        jmp   n400_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n393_call_builtin_prolog_α:
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
.Lx775_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx775_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx775_41
                        cmp              esi, 1
                                                                                        jne   .Lx775_55
                        mov              r8, rax
                                                                                        jmp   .Lx775_40
.Lx775_55:
                        cmp              esi, 2
                                                                                        jne   .Lx775_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx775_41
                        mov              r8, rax
                                                                                        jmp   .Lx775_40
.Lx775_56:
                        cmp              eax, 13
                                                                                        jne   .Lx775_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx775_41
                        cmp              rax, r8
                                                                                        je    .Lx775_41
                        mov              r8, rax
                                                                                        jmp   .Lx775_40
.Lx775_41:
                        lea              r9, [rbp + 2352]
.Lx775_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx775_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx775_43
                        cmp              esi, 1
                                                                                        jne   .Lx775_57
                        mov              r9, rax
                                                                                        jmp   .Lx775_42
.Lx775_57:
                        cmp              esi, 2
                                                                                        jne   .Lx775_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx775_43
                        mov              r9, rax
                                                                                        jmp   .Lx775_42
.Lx775_58:
                        cmp              eax, 13
                                                                                        jne   .Lx775_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx775_43
                        cmp              rax, r9
                                                                                        je    .Lx775_43
                        mov              r9, rax
                                                                                        jmp   .Lx775_42
.Lx775_43:
                        cmp              r8, r9
                                                                                        je    .Lx775_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx775_44
                        cmp              eax, 99
                                                                                        je    .Lx775_44
                        cmp              eax, 13
                                                                                        jne   .Lx775_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx775_44
                                                                                        jmp   .Lx775_45
.Lx775_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx775_53
                        cmp              eax, 99
                                                                                        je    .Lx775_53
                        cmp              eax, 13
                                                                                        jne   .Lx775_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx775_53
                                                                                        jmp   .Lx775_46
.Lx775_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx775_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx775_53
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
                                                                                        jmp   .Lx775_51
.Lx775_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx775_47
                        cmp              eax, 99
                                                                                        je    .Lx775_47
                        cmp              eax, 13
                                                                                        jne   .Lx775_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx775_47
                                                                                        jmp   .Lx775_48
.Lx775_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx775_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx775_53
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
                                                                                        jmp   .Lx775_51
.Lx775_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx775_49
                        cmp              edx, 14
                                                                                        je    .Lx775_53
                                                                                        jmp   .Lx775_52
.Lx775_49:
                        cmp              edx, 14
                                                                                        je    .Lx775_52
                        cmp              ecx, 7
                                                                                        je    .Lx775_53
                        cmp              edx, 7
                                                                                        je    .Lx775_53
                        cmp              ecx, 6
                                                                                        jne   .Lx775_50
                        cmp              edx, 6
                                                                                        jne   .Lx775_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx775_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx775_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx775_51
                                                                                        jmp   .Lx775_52
.Lx775_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx775_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx775_53
.Lx775_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx775_54
.Lx775_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx775_54
.Lx775_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx775_54:
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    n400_call_builtin_prolog_α
                                                                                        jmp   n394_cut_α
n393_call_builtin_prolog_β:
                                                                                        jmp   n400_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n394_cut_α:
                                                                                        jmp   n395_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n395_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        add              rsp, 16
                                                                                        jmp   n396_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n396_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        add              rsp, 16
                                                                                        jmp   n397_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n397_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        add              rsp, 16
                                                                                        jmp   n398_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n398_call_proc_staged_α:
                        lea              rsi, [rbp + 2272]
                        lea              rdx, [rbp + 2288]
                        lea              rcx, [rbp + 2304]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx784_2
.Lx784_2:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n476_call_builtin_prolog_α
                                                                                        jmp   n399_move_label_α
n398_call_proc_staged_β:
                                                                                        jmp   n476_call_builtin_prolog_α
.Lx784_0:
                        .quad            .Lx784_0_s
.Lx784_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n399_move_label_α:
                        lea              rax, [rip + n398_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n400_call_builtin_prolog_α:
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
                                                                                        jmp   n401_var_ref_α
n400_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n401_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        add              rsp, 16
                                                                                        jmp   n402_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_integer_α:
                        mov              qword ptr [rbp + 2128], 6
                        mov              rax, qword ptr [rip + .Lx790_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n403_lit_string_α
.Lx790_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              dword ptr [rbp + 2148], 3
                        mov              rax, qword ptr [rip + .Lx791_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n404_call_builtin_prolog_α
.Lx791_0:
                        .quad            .Lx791_0_s
.Lx791_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n404_call_builtin_prolog_α:
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
                                                                                        je    n428_var_ref_α
                                                                                        jmp   n405_var_ref_α
n404_call_builtin_prolog_β:
                                                                                        jmp   n428_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n405_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        add              rsp, 16
                                                                                        jmp   n406_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              dword ptr [rbp + 2036], 3
                        mov              rax, qword ptr [rip + .Lx795_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n407_var_ref_α
.Lx795_0:
                        .quad            .Lx795_0_s
.Lx795_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n407_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        add              rsp, 16
                                                                                        jmp   n408_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n408_call_builtin_prolog_α:
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
                                                                                        je    n427_call_builtin_prolog_α
                                                                                        jmp   n409_call_builtin_prolog_α
n408_call_builtin_prolog_β:
                                                                                        jmp   n427_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n409_call_builtin_prolog_α:
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
.Lx799_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx799_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx799_41
                        cmp              esi, 1
                                                                                        jne   .Lx799_55
                        mov              r8, rax
                                                                                        jmp   .Lx799_40
.Lx799_55:
                        cmp              esi, 2
                                                                                        jne   .Lx799_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx799_41
                        mov              r8, rax
                                                                                        jmp   .Lx799_40
.Lx799_56:
                        cmp              eax, 13
                                                                                        jne   .Lx799_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx799_41
                        cmp              rax, r8
                                                                                        je    .Lx799_41
                        mov              r8, rax
                                                                                        jmp   .Lx799_40
.Lx799_41:
                        lea              r9, [rbp + 1920]
.Lx799_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx799_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx799_43
                        cmp              esi, 1
                                                                                        jne   .Lx799_57
                        mov              r9, rax
                                                                                        jmp   .Lx799_42
.Lx799_57:
                        cmp              esi, 2
                                                                                        jne   .Lx799_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx799_43
                        mov              r9, rax
                                                                                        jmp   .Lx799_42
.Lx799_58:
                        cmp              eax, 13
                                                                                        jne   .Lx799_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx799_43
                        cmp              rax, r9
                                                                                        je    .Lx799_43
                        mov              r9, rax
                                                                                        jmp   .Lx799_42
.Lx799_43:
                        cmp              r8, r9
                                                                                        je    .Lx799_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx799_44
                        cmp              eax, 99
                                                                                        je    .Lx799_44
                        cmp              eax, 13
                                                                                        jne   .Lx799_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx799_44
                                                                                        jmp   .Lx799_45
.Lx799_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx799_53
                        cmp              eax, 99
                                                                                        je    .Lx799_53
                        cmp              eax, 13
                                                                                        jne   .Lx799_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx799_53
                                                                                        jmp   .Lx799_46
.Lx799_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx799_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx799_53
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
                                                                                        jmp   .Lx799_51
.Lx799_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx799_47
                        cmp              eax, 99
                                                                                        je    .Lx799_47
                        cmp              eax, 13
                                                                                        jne   .Lx799_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx799_47
                                                                                        jmp   .Lx799_48
.Lx799_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx799_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx799_53
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
                                                                                        jmp   .Lx799_51
.Lx799_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx799_49
                        cmp              edx, 14
                                                                                        je    .Lx799_53
                                                                                        jmp   .Lx799_52
.Lx799_49:
                        cmp              edx, 14
                                                                                        je    .Lx799_52
                        cmp              ecx, 7
                                                                                        je    .Lx799_53
                        cmp              edx, 7
                                                                                        je    .Lx799_53
                        cmp              ecx, 6
                                                                                        jne   .Lx799_50
                        cmp              edx, 6
                                                                                        jne   .Lx799_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx799_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx799_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx799_51
                                                                                        jmp   .Lx799_52
.Lx799_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx799_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx799_53
.Lx799_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx799_54
.Lx799_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx799_54
.Lx799_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx799_54:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n427_call_builtin_prolog_α
                                                                                        jmp   n410_var_ref_α
n409_call_builtin_prolog_β:
                                                                                        jmp   n427_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n410_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        add              rsp, 16
                                                                                        jmp   n411_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n411_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        add              rsp, 16
                                                                                        jmp   n412_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n412_call_builtin_prolog_α:
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
.Lx804_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx804_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx804_41
                        cmp              esi, 1
                                                                                        jne   .Lx804_55
                        mov              r8, rax
                                                                                        jmp   .Lx804_40
.Lx804_55:
                        cmp              esi, 2
                                                                                        jne   .Lx804_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx804_41
                        mov              r8, rax
                                                                                        jmp   .Lx804_40
.Lx804_56:
                        cmp              eax, 13
                                                                                        jne   .Lx804_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx804_41
                        cmp              rax, r8
                                                                                        je    .Lx804_41
                        mov              r8, rax
                                                                                        jmp   .Lx804_40
.Lx804_41:
                        lea              r9, [rbp + 1840]
.Lx804_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx804_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx804_43
                        cmp              esi, 1
                                                                                        jne   .Lx804_57
                        mov              r9, rax
                                                                                        jmp   .Lx804_42
.Lx804_57:
                        cmp              esi, 2
                                                                                        jne   .Lx804_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx804_43
                        mov              r9, rax
                                                                                        jmp   .Lx804_42
.Lx804_58:
                        cmp              eax, 13
                                                                                        jne   .Lx804_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx804_43
                        cmp              rax, r9
                                                                                        je    .Lx804_43
                        mov              r9, rax
                                                                                        jmp   .Lx804_42
.Lx804_43:
                        cmp              r8, r9
                                                                                        je    .Lx804_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx804_44
                        cmp              eax, 99
                                                                                        je    .Lx804_44
                        cmp              eax, 13
                                                                                        jne   .Lx804_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx804_44
                                                                                        jmp   .Lx804_45
.Lx804_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx804_53
                        cmp              eax, 99
                                                                                        je    .Lx804_53
                        cmp              eax, 13
                                                                                        jne   .Lx804_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx804_53
                                                                                        jmp   .Lx804_46
.Lx804_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx804_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx804_53
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
                                                                                        jmp   .Lx804_51
.Lx804_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx804_47
                        cmp              eax, 99
                                                                                        je    .Lx804_47
                        cmp              eax, 13
                                                                                        jne   .Lx804_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx804_47
                                                                                        jmp   .Lx804_48
.Lx804_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx804_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx804_53
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
                                                                                        jmp   .Lx804_51
.Lx804_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx804_49
                        cmp              edx, 14
                                                                                        je    .Lx804_53
                                                                                        jmp   .Lx804_52
.Lx804_49:
                        cmp              edx, 14
                                                                                        je    .Lx804_52
                        cmp              ecx, 7
                                                                                        je    .Lx804_53
                        cmp              edx, 7
                                                                                        je    .Lx804_53
                        cmp              ecx, 6
                                                                                        jne   .Lx804_50
                        cmp              edx, 6
                                                                                        jne   .Lx804_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx804_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx804_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx804_51
                                                                                        jmp   .Lx804_52
.Lx804_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx804_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx804_53
.Lx804_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx804_54
.Lx804_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx804_54
.Lx804_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx804_54:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n427_call_builtin_prolog_α
                                                                                        jmp   n413_var_ref_α
n412_call_builtin_prolog_β:
                                                                                        jmp   n427_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n413_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        add              rsp, 16
                                                                                        jmp   n414_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              dword ptr [rbp + 1796], 1
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n415_lit_string_α
.Lx807_0:
                        .quad            .Lx807_0_s
.Lx807_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              dword ptr [rbp + 1684], 3
                        mov              rax, qword ptr [rip + .Lx808_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n416_var_ref_α
.Lx808_0:
                        .quad            .Lx808_0_s
.Lx808_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n416_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        add              rsp, 16
                                                                                        jmp   n417_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n417_call_builtin_prolog_α:
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
                                                                                        jmp   n418_var_ref_α
n417_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n418_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        add              rsp, 16
                                                                                        jmp   n419_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n419_call_builtin_prolog_α:
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
                                                                                        je    n427_call_builtin_prolog_α
                                                                                        jmp   n420_call_builtin_prolog_α
n419_call_builtin_prolog_β:
                                                                                        jmp   n427_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n420_call_builtin_prolog_α:
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
.Lx815_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx815_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx815_41
                        cmp              esi, 1
                                                                                        jne   .Lx815_55
                        mov              r8, rax
                                                                                        jmp   .Lx815_40
.Lx815_55:
                        cmp              esi, 2
                                                                                        jne   .Lx815_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx815_41
                        mov              r8, rax
                                                                                        jmp   .Lx815_40
.Lx815_56:
                        cmp              eax, 13
                                                                                        jne   .Lx815_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx815_41
                        cmp              rax, r8
                                                                                        je    .Lx815_41
                        mov              r8, rax
                                                                                        jmp   .Lx815_40
.Lx815_41:
                        lea              r9, [rbp + 1568]
.Lx815_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx815_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx815_43
                        cmp              esi, 1
                                                                                        jne   .Lx815_57
                        mov              r9, rax
                                                                                        jmp   .Lx815_42
.Lx815_57:
                        cmp              esi, 2
                                                                                        jne   .Lx815_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx815_43
                        mov              r9, rax
                                                                                        jmp   .Lx815_42
.Lx815_58:
                        cmp              eax, 13
                                                                                        jne   .Lx815_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx815_43
                        cmp              rax, r9
                                                                                        je    .Lx815_43
                        mov              r9, rax
                                                                                        jmp   .Lx815_42
.Lx815_43:
                        cmp              r8, r9
                                                                                        je    .Lx815_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx815_44
                        cmp              eax, 99
                                                                                        je    .Lx815_44
                        cmp              eax, 13
                                                                                        jne   .Lx815_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx815_44
                                                                                        jmp   .Lx815_45
.Lx815_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx815_53
                        cmp              eax, 99
                                                                                        je    .Lx815_53
                        cmp              eax, 13
                                                                                        jne   .Lx815_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx815_53
                                                                                        jmp   .Lx815_46
.Lx815_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx815_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx815_53
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
                                                                                        jmp   .Lx815_51
.Lx815_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx815_47
                        cmp              eax, 99
                                                                                        je    .Lx815_47
                        cmp              eax, 13
                                                                                        jne   .Lx815_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx815_47
                                                                                        jmp   .Lx815_48
.Lx815_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx815_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx815_53
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
                                                                                        jmp   .Lx815_51
.Lx815_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx815_49
                        cmp              edx, 14
                                                                                        je    .Lx815_53
                                                                                        jmp   .Lx815_52
.Lx815_49:
                        cmp              edx, 14
                                                                                        je    .Lx815_52
                        cmp              ecx, 7
                                                                                        je    .Lx815_53
                        cmp              edx, 7
                                                                                        je    .Lx815_53
                        cmp              ecx, 6
                                                                                        jne   .Lx815_50
                        cmp              edx, 6
                                                                                        jne   .Lx815_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx815_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx815_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx815_51
                                                                                        jmp   .Lx815_52
.Lx815_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx815_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx815_53
.Lx815_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx815_54
.Lx815_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx815_54
.Lx815_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx815_54:
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    n427_call_builtin_prolog_α
                                                                                        jmp   n421_cut_α
n420_call_builtin_prolog_β:
                                                                                        jmp   n427_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n421_cut_α:
                                                                                        jmp   n422_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n422_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        add              rsp, 16
                                                                                        jmp   n423_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n423_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        add              rsp, 16
                                                                                        jmp   n424_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n424_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        add              rsp, 16
                                                                                        jmp   n425_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n425_call_proc_staged_α:
                        lea              rsi, [rbp + 1488]
                        lea              rdx, [rbp + 1504]
                        lea              rcx, [rbp + 1520]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx824_2
.Lx824_2:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n476_call_builtin_prolog_α
                                                                                        jmp   n426_move_label_α
n425_call_proc_staged_β:
                                                                                        jmp   n476_call_builtin_prolog_α
.Lx824_0:
                        .quad            .Lx824_0_s
.Lx824_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n426_move_label_α:
                        lea              rax, [rip + n425_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n427_call_builtin_prolog_α:
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
                                                                                        jmp   n428_var_ref_α
n427_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n428_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        add              rsp, 16
                                                                                        jmp   n429_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 6
                        mov              rax, qword ptr [rip + .Lx830_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n430_lit_string_α
.Lx830_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              dword ptr [rbp + 1364], 3
                        mov              rax, qword ptr [rip + .Lx831_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n431_call_builtin_prolog_α
.Lx831_0:
                        .quad            .Lx831_0_s
.Lx831_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n431_call_builtin_prolog_α:
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
                                                                                        je    n453_var_ref_α
                                                                                        jmp   n432_var_ref_α
n431_call_builtin_prolog_β:
                                                                                        jmp   n453_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        add              rsp, 16
                                                                                        jmp   n433_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              dword ptr [rbp + 1252], 3
                        mov              rax, qword ptr [rip + .Lx835_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n434_var_ref_α
.Lx835_0:
                        .quad            .Lx835_0_s
.Lx835_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n434_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        add              rsp, 16
                                                                                        jmp   n435_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n435_call_builtin_prolog_α:
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
                                                                                        je    n452_call_builtin_prolog_α
                                                                                        jmp   n436_call_builtin_prolog_α
n435_call_builtin_prolog_β:
                                                                                        jmp   n452_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n436_call_builtin_prolog_α:
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
.Lx839_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx839_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx839_41
                        cmp              esi, 1
                                                                                        jne   .Lx839_55
                        mov              r8, rax
                                                                                        jmp   .Lx839_40
.Lx839_55:
                        cmp              esi, 2
                                                                                        jne   .Lx839_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx839_41
                        mov              r8, rax
                                                                                        jmp   .Lx839_40
.Lx839_56:
                        cmp              eax, 13
                                                                                        jne   .Lx839_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx839_41
                        cmp              rax, r8
                                                                                        je    .Lx839_41
                        mov              r8, rax
                                                                                        jmp   .Lx839_40
.Lx839_41:
                        lea              r9, [rbp + 1136]
.Lx839_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx839_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx839_43
                        cmp              esi, 1
                                                                                        jne   .Lx839_57
                        mov              r9, rax
                                                                                        jmp   .Lx839_42
.Lx839_57:
                        cmp              esi, 2
                                                                                        jne   .Lx839_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx839_43
                        mov              r9, rax
                                                                                        jmp   .Lx839_42
.Lx839_58:
                        cmp              eax, 13
                                                                                        jne   .Lx839_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx839_43
                        cmp              rax, r9
                                                                                        je    .Lx839_43
                        mov              r9, rax
                                                                                        jmp   .Lx839_42
.Lx839_43:
                        cmp              r8, r9
                                                                                        je    .Lx839_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx839_44
                        cmp              eax, 99
                                                                                        je    .Lx839_44
                        cmp              eax, 13
                                                                                        jne   .Lx839_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx839_44
                                                                                        jmp   .Lx839_45
.Lx839_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx839_53
                        cmp              eax, 99
                                                                                        je    .Lx839_53
                        cmp              eax, 13
                                                                                        jne   .Lx839_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx839_53
                                                                                        jmp   .Lx839_46
.Lx839_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx839_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx839_53
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
                                                                                        jmp   .Lx839_51
.Lx839_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx839_47
                        cmp              eax, 99
                                                                                        je    .Lx839_47
                        cmp              eax, 13
                                                                                        jne   .Lx839_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx839_47
                                                                                        jmp   .Lx839_48
.Lx839_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx839_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx839_53
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
                                                                                        jmp   .Lx839_51
.Lx839_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx839_49
                        cmp              edx, 14
                                                                                        je    .Lx839_53
                                                                                        jmp   .Lx839_52
.Lx839_49:
                        cmp              edx, 14
                                                                                        je    .Lx839_52
                        cmp              ecx, 7
                                                                                        je    .Lx839_53
                        cmp              edx, 7
                                                                                        je    .Lx839_53
                        cmp              ecx, 6
                                                                                        jne   .Lx839_50
                        cmp              edx, 6
                                                                                        jne   .Lx839_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx839_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx839_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx839_51
                                                                                        jmp   .Lx839_52
.Lx839_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx839_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx839_53
.Lx839_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx839_54
.Lx839_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx839_54
.Lx839_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx839_54:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n452_call_builtin_prolog_α
                                                                                        jmp   n437_var_ref_α
n436_call_builtin_prolog_β:
                                                                                        jmp   n452_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n437_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        add              rsp, 16
                                                                                        jmp   n438_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n438_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        add              rsp, 16
                                                                                        jmp   n439_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n439_call_builtin_prolog_α:
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
.Lx844_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx844_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx844_41
                        cmp              esi, 1
                                                                                        jne   .Lx844_55
                        mov              r8, rax
                                                                                        jmp   .Lx844_40
.Lx844_55:
                        cmp              esi, 2
                                                                                        jne   .Lx844_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx844_41
                        mov              r8, rax
                                                                                        jmp   .Lx844_40
.Lx844_56:
                        cmp              eax, 13
                                                                                        jne   .Lx844_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx844_41
                        cmp              rax, r8
                                                                                        je    .Lx844_41
                        mov              r8, rax
                                                                                        jmp   .Lx844_40
.Lx844_41:
                        lea              r9, [rbp + 1056]
.Lx844_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx844_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx844_43
                        cmp              esi, 1
                                                                                        jne   .Lx844_57
                        mov              r9, rax
                                                                                        jmp   .Lx844_42
.Lx844_57:
                        cmp              esi, 2
                                                                                        jne   .Lx844_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx844_43
                        mov              r9, rax
                                                                                        jmp   .Lx844_42
.Lx844_58:
                        cmp              eax, 13
                                                                                        jne   .Lx844_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx844_43
                        cmp              rax, r9
                                                                                        je    .Lx844_43
                        mov              r9, rax
                                                                                        jmp   .Lx844_42
.Lx844_43:
                        cmp              r8, r9
                                                                                        je    .Lx844_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx844_44
                        cmp              eax, 99
                                                                                        je    .Lx844_44
                        cmp              eax, 13
                                                                                        jne   .Lx844_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx844_44
                                                                                        jmp   .Lx844_45
.Lx844_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx844_53
                        cmp              eax, 99
                                                                                        je    .Lx844_53
                        cmp              eax, 13
                                                                                        jne   .Lx844_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx844_53
                                                                                        jmp   .Lx844_46
.Lx844_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx844_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx844_53
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
                                                                                        jmp   .Lx844_51
.Lx844_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx844_47
                        cmp              eax, 99
                                                                                        je    .Lx844_47
                        cmp              eax, 13
                                                                                        jne   .Lx844_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx844_47
                                                                                        jmp   .Lx844_48
.Lx844_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx844_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx844_53
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
                                                                                        jmp   .Lx844_51
.Lx844_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx844_49
                        cmp              edx, 14
                                                                                        je    .Lx844_53
                                                                                        jmp   .Lx844_52
.Lx844_49:
                        cmp              edx, 14
                                                                                        je    .Lx844_52
                        cmp              ecx, 7
                                                                                        je    .Lx844_53
                        cmp              edx, 7
                                                                                        je    .Lx844_53
                        cmp              ecx, 6
                                                                                        jne   .Lx844_50
                        cmp              edx, 6
                                                                                        jne   .Lx844_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx844_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx844_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx844_51
                                                                                        jmp   .Lx844_52
.Lx844_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx844_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx844_53
.Lx844_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx844_54
.Lx844_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx844_54
.Lx844_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx844_54:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n452_call_builtin_prolog_α
                                                                                        jmp   n440_var_ref_α
n439_call_builtin_prolog_β:
                                                                                        jmp   n452_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        add              rsp, 16
                                                                                        jmp   n441_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx847_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n442_var_ref_α
.Lx847_0:
                        .quad            .Lx847_0_s
.Lx847_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        add              rsp, 16
                                                                                        jmp   n443_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        add              rsp, 16
                                                                                        jmp   n444_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n444_call_builtin_prolog_α:
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
                                                                                        je    n452_call_builtin_prolog_α
                                                                                        jmp   n445_call_builtin_prolog_α
n444_call_builtin_prolog_β:
                                                                                        jmp   n452_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n445_call_builtin_prolog_α:
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
.Lx853_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx853_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx853_41
                        cmp              esi, 1
                                                                                        jne   .Lx853_55
                        mov              r8, rax
                                                                                        jmp   .Lx853_40
.Lx853_55:
                        cmp              esi, 2
                                                                                        jne   .Lx853_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx853_41
                        mov              r8, rax
                                                                                        jmp   .Lx853_40
.Lx853_56:
                        cmp              eax, 13
                                                                                        jne   .Lx853_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx853_41
                        cmp              rax, r8
                                                                                        je    .Lx853_41
                        mov              r8, rax
                                                                                        jmp   .Lx853_40
.Lx853_41:
                        lea              r9, [rbp + 864]
.Lx853_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx853_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx853_43
                        cmp              esi, 1
                                                                                        jne   .Lx853_57
                        mov              r9, rax
                                                                                        jmp   .Lx853_42
.Lx853_57:
                        cmp              esi, 2
                                                                                        jne   .Lx853_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx853_43
                        mov              r9, rax
                                                                                        jmp   .Lx853_42
.Lx853_58:
                        cmp              eax, 13
                                                                                        jne   .Lx853_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx853_43
                        cmp              rax, r9
                                                                                        je    .Lx853_43
                        mov              r9, rax
                                                                                        jmp   .Lx853_42
.Lx853_43:
                        cmp              r8, r9
                                                                                        je    .Lx853_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx853_44
                        cmp              eax, 99
                                                                                        je    .Lx853_44
                        cmp              eax, 13
                                                                                        jne   .Lx853_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx853_44
                                                                                        jmp   .Lx853_45
.Lx853_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx853_53
                        cmp              eax, 99
                                                                                        je    .Lx853_53
                        cmp              eax, 13
                                                                                        jne   .Lx853_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx853_53
                                                                                        jmp   .Lx853_46
.Lx853_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx853_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx853_53
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
                                                                                        jmp   .Lx853_51
.Lx853_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx853_47
                        cmp              eax, 99
                                                                                        je    .Lx853_47
                        cmp              eax, 13
                                                                                        jne   .Lx853_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx853_47
                                                                                        jmp   .Lx853_48
.Lx853_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx853_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx853_53
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
                                                                                        jmp   .Lx853_51
.Lx853_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx853_49
                        cmp              edx, 14
                                                                                        je    .Lx853_53
                                                                                        jmp   .Lx853_52
.Lx853_49:
                        cmp              edx, 14
                                                                                        je    .Lx853_52
                        cmp              ecx, 7
                                                                                        je    .Lx853_53
                        cmp              edx, 7
                                                                                        je    .Lx853_53
                        cmp              ecx, 6
                                                                                        jne   .Lx853_50
                        cmp              edx, 6
                                                                                        jne   .Lx853_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx853_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx853_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx853_51
                                                                                        jmp   .Lx853_52
.Lx853_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx853_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx853_53
.Lx853_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx853_54
.Lx853_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx853_54
.Lx853_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx853_54:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n452_call_builtin_prolog_α
                                                                                        jmp   n446_cut_α
n445_call_builtin_prolog_β:
                                                                                        jmp   n452_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n446_cut_α:
                                                                                        jmp   n447_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n447_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        add              rsp, 16
                                                                                        jmp   n448_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n448_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        add              rsp, 16
                                                                                        jmp   n449_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        add              rsp, 16
                                                                                        jmp   n450_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n450_call_proc_staged_α:
                        lea              rsi, [rbp + 784]
                        lea              rdx, [rbp + 800]
                        lea              rcx, [rbp + 816]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx862_2
.Lx862_2:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n476_call_builtin_prolog_α
                                                                                        jmp   n451_move_label_α
n450_call_proc_staged_β:
                                                                                        jmp   n476_call_builtin_prolog_α
.Lx862_0:
                        .quad            .Lx862_0_s
.Lx862_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n451_move_label_α:
                        lea              rax, [rip + n450_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n452_call_builtin_prolog_α:
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
                                                                                        jmp   n453_var_ref_α
n452_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n453_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        add              rsp, 16
                                                                                        jmp   n454_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n454_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8160]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        add              rsp, 16
                                                                                        jmp   n455_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n455_call_builtin_prolog_α:
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
.Lx870_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx870_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx870_41
                        cmp              esi, 1
                                                                                        jne   .Lx870_55
                        mov              r8, rax
                                                                                        jmp   .Lx870_40
.Lx870_55:
                        cmp              esi, 2
                                                                                        jne   .Lx870_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx870_41
                        mov              r8, rax
                                                                                        jmp   .Lx870_40
.Lx870_56:
                        cmp              eax, 13
                                                                                        jne   .Lx870_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx870_41
                        cmp              rax, r8
                                                                                        je    .Lx870_41
                        mov              r8, rax
                                                                                        jmp   .Lx870_40
.Lx870_41:
                        lea              r9, [rbp + 624]
.Lx870_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx870_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx870_43
                        cmp              esi, 1
                                                                                        jne   .Lx870_57
                        mov              r9, rax
                                                                                        jmp   .Lx870_42
.Lx870_57:
                        cmp              esi, 2
                                                                                        jne   .Lx870_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx870_43
                        mov              r9, rax
                                                                                        jmp   .Lx870_42
.Lx870_58:
                        cmp              eax, 13
                                                                                        jne   .Lx870_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx870_43
                        cmp              rax, r9
                                                                                        je    .Lx870_43
                        mov              r9, rax
                                                                                        jmp   .Lx870_42
.Lx870_43:
                        cmp              r8, r9
                                                                                        je    .Lx870_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx870_44
                        cmp              eax, 99
                                                                                        je    .Lx870_44
                        cmp              eax, 13
                                                                                        jne   .Lx870_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx870_44
                                                                                        jmp   .Lx870_45
.Lx870_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx870_53
                        cmp              eax, 99
                                                                                        je    .Lx870_53
                        cmp              eax, 13
                                                                                        jne   .Lx870_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx870_53
                                                                                        jmp   .Lx870_46
.Lx870_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx870_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx870_53
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
                                                                                        jmp   .Lx870_51
.Lx870_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx870_47
                        cmp              eax, 99
                                                                                        je    .Lx870_47
                        cmp              eax, 13
                                                                                        jne   .Lx870_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx870_47
                                                                                        jmp   .Lx870_48
.Lx870_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx870_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx870_53
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
                                                                                        jmp   .Lx870_51
.Lx870_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx870_49
                        cmp              edx, 14
                                                                                        je    .Lx870_53
                                                                                        jmp   .Lx870_52
.Lx870_49:
                        cmp              edx, 14
                                                                                        je    .Lx870_52
                        cmp              ecx, 7
                                                                                        je    .Lx870_53
                        cmp              edx, 7
                                                                                        je    .Lx870_53
                        cmp              ecx, 6
                                                                                        jne   .Lx870_50
                        cmp              edx, 6
                                                                                        jne   .Lx870_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx870_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx870_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx870_51
                                                                                        jmp   .Lx870_52
.Lx870_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx870_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx870_53
.Lx870_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx870_54
.Lx870_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx870_54
.Lx870_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx870_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n464_call_builtin_prolog_α
                                                                                        jmp   n456_var_ref_α
n455_call_builtin_prolog_β:
                                                                                        jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        add              rsp, 16
                                                                                        jmp   n457_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8160]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        add              rsp, 16
                                                                                        jmp   n458_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n458_call_builtin_prolog_α:
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
.Lx875_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx875_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx875_41
                        cmp              esi, 1
                                                                                        jne   .Lx875_55
                        mov              r8, rax
                                                                                        jmp   .Lx875_40
.Lx875_55:
                        cmp              esi, 2
                                                                                        jne   .Lx875_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx875_41
                        mov              r8, rax
                                                                                        jmp   .Lx875_40
.Lx875_56:
                        cmp              eax, 13
                                                                                        jne   .Lx875_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx875_41
                        cmp              rax, r8
                                                                                        je    .Lx875_41
                        mov              r8, rax
                                                                                        jmp   .Lx875_40
.Lx875_41:
                        lea              r9, [rbp + 544]
.Lx875_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx875_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx875_43
                        cmp              esi, 1
                                                                                        jne   .Lx875_57
                        mov              r9, rax
                                                                                        jmp   .Lx875_42
.Lx875_57:
                        cmp              esi, 2
                                                                                        jne   .Lx875_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx875_43
                        mov              r9, rax
                                                                                        jmp   .Lx875_42
.Lx875_58:
                        cmp              eax, 13
                                                                                        jne   .Lx875_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx875_43
                        cmp              rax, r9
                                                                                        je    .Lx875_43
                        mov              r9, rax
                                                                                        jmp   .Lx875_42
.Lx875_43:
                        cmp              r8, r9
                                                                                        je    .Lx875_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx875_44
                        cmp              eax, 99
                                                                                        je    .Lx875_44
                        cmp              eax, 13
                                                                                        jne   .Lx875_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx875_44
                                                                                        jmp   .Lx875_45
.Lx875_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx875_53
                        cmp              eax, 99
                                                                                        je    .Lx875_53
                        cmp              eax, 13
                                                                                        jne   .Lx875_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx875_53
                                                                                        jmp   .Lx875_46
.Lx875_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx875_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx875_53
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
                                                                                        jmp   .Lx875_51
.Lx875_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx875_47
                        cmp              eax, 99
                                                                                        je    .Lx875_47
                        cmp              eax, 13
                                                                                        jne   .Lx875_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx875_47
                                                                                        jmp   .Lx875_48
.Lx875_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx875_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx875_53
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
                                                                                        jmp   .Lx875_51
.Lx875_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx875_49
                        cmp              edx, 14
                                                                                        je    .Lx875_53
                                                                                        jmp   .Lx875_52
.Lx875_49:
                        cmp              edx, 14
                                                                                        je    .Lx875_52
                        cmp              ecx, 7
                                                                                        je    .Lx875_53
                        cmp              edx, 7
                                                                                        je    .Lx875_53
                        cmp              ecx, 6
                                                                                        jne   .Lx875_50
                        cmp              edx, 6
                                                                                        jne   .Lx875_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx875_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx875_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx875_51
                                                                                        jmp   .Lx875_52
.Lx875_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx875_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx875_53
.Lx875_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx875_54
.Lx875_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx875_54
.Lx875_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx875_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n464_call_builtin_prolog_α
                                                                                        jmp   n459_var_ref_α
n458_call_builtin_prolog_β:
                                                                                        jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n459_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        add              rsp, 16
                                                                                        jmp   n460_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n461_call_builtin_prolog_α
.Lx878_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n461_call_builtin_prolog_α:
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
                                                                                        je    n464_call_builtin_prolog_α
                                                                                        jmp   n462_cut_α
n461_call_builtin_prolog_β:
                                                                                        jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n462_cut_α:
                                                                                        jmp   n463_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n463_move_label_α:
                        lea              rax, [rip + n464_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n464_call_builtin_prolog_α:
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
                                                                                        jmp   n465_var_ref_α
n464_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n465_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        add              rsp, 16
                                                                                        jmp   n466_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n466_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        add              rsp, 16
                                                                                        jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n467_call_builtin_prolog_α:
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
.Lx888_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx888_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx888_41
                        cmp              esi, 1
                                                                                        jne   .Lx888_55
                        mov              r8, rax
                                                                                        jmp   .Lx888_40
.Lx888_55:
                        cmp              esi, 2
                                                                                        jne   .Lx888_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx888_41
                        mov              r8, rax
                                                                                        jmp   .Lx888_40
.Lx888_56:
                        cmp              eax, 13
                                                                                        jne   .Lx888_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx888_41
                        cmp              rax, r8
                                                                                        je    .Lx888_41
                        mov              r8, rax
                                                                                        jmp   .Lx888_40
.Lx888_41:
                        lea              r9, [rbp + 352]
.Lx888_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx888_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx888_43
                        cmp              esi, 1
                                                                                        jne   .Lx888_57
                        mov              r9, rax
                                                                                        jmp   .Lx888_42
.Lx888_57:
                        cmp              esi, 2
                                                                                        jne   .Lx888_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx888_43
                        mov              r9, rax
                                                                                        jmp   .Lx888_42
.Lx888_58:
                        cmp              eax, 13
                                                                                        jne   .Lx888_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx888_43
                        cmp              rax, r9
                                                                                        je    .Lx888_43
                        mov              r9, rax
                                                                                        jmp   .Lx888_42
.Lx888_43:
                        cmp              r8, r9
                                                                                        je    .Lx888_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx888_44
                        cmp              eax, 99
                                                                                        je    .Lx888_44
                        cmp              eax, 13
                                                                                        jne   .Lx888_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx888_44
                                                                                        jmp   .Lx888_45
.Lx888_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx888_53
                        cmp              eax, 99
                                                                                        je    .Lx888_53
                        cmp              eax, 13
                                                                                        jne   .Lx888_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx888_53
                                                                                        jmp   .Lx888_46
.Lx888_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx888_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx888_53
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
                                                                                        jmp   .Lx888_51
.Lx888_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx888_47
                        cmp              eax, 99
                                                                                        je    .Lx888_47
                        cmp              eax, 13
                                                                                        jne   .Lx888_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx888_47
                                                                                        jmp   .Lx888_48
.Lx888_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx888_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx888_53
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
                                                                                        jmp   .Lx888_51
.Lx888_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx888_49
                        cmp              edx, 14
                                                                                        je    .Lx888_53
                                                                                        jmp   .Lx888_52
.Lx888_49:
                        cmp              edx, 14
                                                                                        je    .Lx888_52
                        cmp              ecx, 7
                                                                                        je    .Lx888_53
                        cmp              edx, 7
                                                                                        je    .Lx888_53
                        cmp              ecx, 6
                                                                                        jne   .Lx888_50
                        cmp              edx, 6
                                                                                        jne   .Lx888_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx888_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx888_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx888_51
                                                                                        jmp   .Lx888_52
.Lx888_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx888_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx888_53
.Lx888_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx888_54
.Lx888_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx888_54
.Lx888_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx888_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n476_call_builtin_prolog_α
                                                                                        jmp   n468_var_ref_α
n467_call_builtin_prolog_β:
                                                                                        jmp   n476_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n468_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        add              rsp, 16
                                                                                        jmp   n469_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n469_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        add              rsp, 16
                                                                                        jmp   n470_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n470_call_builtin_prolog_α:
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
.Lx893_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx893_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx893_41
                        cmp              esi, 1
                                                                                        jne   .Lx893_55
                        mov              r8, rax
                                                                                        jmp   .Lx893_40
.Lx893_55:
                        cmp              esi, 2
                                                                                        jne   .Lx893_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx893_41
                        mov              r8, rax
                                                                                        jmp   .Lx893_40
.Lx893_56:
                        cmp              eax, 13
                                                                                        jne   .Lx893_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx893_41
                        cmp              rax, r8
                                                                                        je    .Lx893_41
                        mov              r8, rax
                                                                                        jmp   .Lx893_40
.Lx893_41:
                        lea              r9, [rbp + 272]
.Lx893_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx893_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx893_43
                        cmp              esi, 1
                                                                                        jne   .Lx893_57
                        mov              r9, rax
                                                                                        jmp   .Lx893_42
.Lx893_57:
                        cmp              esi, 2
                                                                                        jne   .Lx893_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx893_43
                        mov              r9, rax
                                                                                        jmp   .Lx893_42
.Lx893_58:
                        cmp              eax, 13
                                                                                        jne   .Lx893_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx893_43
                        cmp              rax, r9
                                                                                        je    .Lx893_43
                        mov              r9, rax
                                                                                        jmp   .Lx893_42
.Lx893_43:
                        cmp              r8, r9
                                                                                        je    .Lx893_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx893_44
                        cmp              eax, 99
                                                                                        je    .Lx893_44
                        cmp              eax, 13
                                                                                        jne   .Lx893_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx893_44
                                                                                        jmp   .Lx893_45
.Lx893_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx893_53
                        cmp              eax, 99
                                                                                        je    .Lx893_53
                        cmp              eax, 13
                                                                                        jne   .Lx893_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx893_53
                                                                                        jmp   .Lx893_46
.Lx893_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx893_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx893_53
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
                                                                                        jmp   .Lx893_51
.Lx893_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx893_47
                        cmp              eax, 99
                                                                                        je    .Lx893_47
                        cmp              eax, 13
                                                                                        jne   .Lx893_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx893_47
                                                                                        jmp   .Lx893_48
.Lx893_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx893_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx893_53
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
                                                                                        jmp   .Lx893_51
.Lx893_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx893_49
                        cmp              edx, 14
                                                                                        je    .Lx893_53
                                                                                        jmp   .Lx893_52
.Lx893_49:
                        cmp              edx, 14
                                                                                        je    .Lx893_52
                        cmp              ecx, 7
                                                                                        je    .Lx893_53
                        cmp              edx, 7
                                                                                        je    .Lx893_53
                        cmp              ecx, 6
                                                                                        jne   .Lx893_50
                        cmp              edx, 6
                                                                                        jne   .Lx893_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx893_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx893_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx893_51
                                                                                        jmp   .Lx893_52
.Lx893_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx893_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx893_53
.Lx893_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx893_54
.Lx893_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx893_54
.Lx893_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx893_54:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n476_call_builtin_prolog_α
                                                                                        jmp   n471_var_ref_α
n470_call_builtin_prolog_β:
                                                                                        jmp   n476_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n471_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        add              rsp, 16
                                                                                        jmp   n472_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx896_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n473_call_builtin_prolog_α
.Lx896_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n473_call_builtin_prolog_α:
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
                                                                                        je    n476_call_builtin_prolog_α
                                                                                        jmp   n474_move_label_α
n473_call_builtin_prolog_β:
                                                                                        jmp   n476_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n474_move_label_α:
                        lea              rax, [rip + n476_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n475_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 80]
n475_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n476_call_builtin_prolog_α:
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
n476_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F3_β:
                                                                                        jmp   n475_disjunction_α
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
                        lea              rax, [rip + .Lx903_2]
                        mov              qword ptr [rbp + 8248], rax
                        lea              rax, [rip + .Lx903_3]
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
.Lx903_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -8272
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx903_3:
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
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_top$2F0_α_body:
                        lea              rax, [rip + n908_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n904_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx910_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx910_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx910_101
.Lx910_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx910_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_top$2F0_ω
                                                                                        jmp   n905_call_proc_staged_α
n904_call_builtin_prolog_β:
                                                                                        jmp   proc_top$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n905_call_proc_staged_α:
                        call             proc_ops8$2F0_dcα
                                                                                        jmp   .Lx912_2
.Lx912_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n909_call_builtin_prolog_α
                                                                                        jmp   n906_call_proc_staged_α
n905_call_proc_staged_β:
                                                                                        jmp   n909_call_builtin_prolog_α
.Lx912_0:
                        .quad            .Lx912_0_s
.Lx912_0_s:
                        .string          "ops8/0"
#-----------------------------------------------------------------------------------------------------------------------
n906_call_proc_staged_α:
                        call             proc_log10$2F0_dcα
                                                                                        jmp   .Lx914_2
.Lx914_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n905_call_proc_staged_β
                                                                                        jmp   n907_call_proc_staged_α
n906_call_proc_staged_β:
                                                                                        jmp   n905_call_proc_staged_β
.Lx914_0:
                        .quad            .Lx914_0_s
.Lx914_0_s:
                        .string          "log10/0"
#-----------------------------------------------------------------------------------------------------------------------
n907_call_proc_staged_α:
                        call             proc_divide10$2F0_dcα
                                                                                        jmp   .Lx916_2
.Lx916_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n906_call_proc_staged_β
                                                                                        jmp   n908_suspend_α
n907_call_proc_staged_β:
                                                                                        jmp   n906_call_proc_staged_β
.Lx916_0:
                        .quad            .Lx916_0_s
.Lx916_0_s:
                        .string          "divide10/0"
#-----------------------------------------------------------------------------------------------------------------------
n908_suspend_α:
                        lea              rax, [rip + n908_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_top$2F0_γ
n908_suspend_β:
                                                                                        jmp   n907_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n909_call_builtin_prolog_α:
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
n909_call_builtin_prolog_β:
                                                                                        jmp   proc_top$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_top$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_top$2F0_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_top$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_top$2F0_res]
                        push             rax
                        mov              rax, [rbp + 216]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_top$2F0_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "divide10/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_divide10$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1248
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_divide10$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "log10/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_log10$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1040
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_log10$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "ops8/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_ops8$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1024
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_ops8$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "d/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_d$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 8224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_d$2F3_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "top/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_top$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
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
n920_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx931_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx931_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx931_101
.Lx931_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx931_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n921_call_proc_staged_α
n920_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n921_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              edi, 4
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx933_1
                        lea              rcx, [rip + .Lx933_3]
                        lea              rdx, [rip + .Lx933_4]
                                                                                        jmp   rax
.Lx933_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx933_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx933_2
.Lx933_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx933_2
.Lx933_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx933_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx933_2
.Lx933_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx933_2
.Lx933_1:
                        call             rt_faildescr@PLT
.Lx933_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n924_lit_string_α
                                                                                        jmp   n922_lit_string_α
n921_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx933_0:
                        .quad            .Lx933_0_s
.Lx933_0_s:
                        .string          "top/0"
#-----------------------------------------------------------------------------------------------------------------------
n922_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Lx934_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n923_call_builtin_prolog_α
.Lx934_0:
                        .quad            .Lx934_0_s
.Lx934_0_s:
                        .string          "ok"
#-----------------------------------------------------------------------------------------------------------------------
n923_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn936:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn936]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n930_call_builtin_prolog_α
                                                                                        jmp   n926_lit_string_α
n923_call_builtin_prolog_β:
                                                                                        jmp   n930_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n924_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              dword ptr [rbp + 228], 6
                        mov              rax, qword ptr [rip + .Lx937_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n925_call_builtin_prolog_α
.Lx937_0:
                        .quad            .Lx937_0_s
.Lx937_0_s:
                        .string          "failed"
#-----------------------------------------------------------------------------------------------------------------------
n925_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn939:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn939]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n930_call_builtin_prolog_α
                                                                                        jmp   n926_lit_string_α
n925_call_builtin_prolog_β:
                                                                                        jmp   n930_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n926_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Lx940_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n927_call_builtin_prolog_α
.Lx940_0:
                        .quad            .Lx940_0_s
.Lx940_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n927_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn942:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn942]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n930_call_builtin_prolog_α
                                                                                        jmp   n928_move_label_α
n927_call_builtin_prolog_β:
                                                                                        jmp   n930_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n928_move_label_α:
                        lea              rax, [rip + n930_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n929_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 16]
n929_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n930_call_builtin_prolog_α:
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
n930_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n929_disjunction_α
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
