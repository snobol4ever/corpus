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
n75_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx353_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx353_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx353_101
.Lx353_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx353_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n76_var_ref_α
n75_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 8080], rax
                        mov              qword ptr [rbp + 8088], rdx
                        add              rsp, 16
                                                                                        jmp   n77_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:
                        mov              qword ptr [rbp + 8096], 6
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rbp + 8104], rax
                                                                                        jmp   n78_lit_string_α
.Lx356_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 8112], 1
                        mov              dword ptr [rbp + 8116], 1
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rbp + 8120], rax
                                                                                        jmp   n79_call_builtin_prolog_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
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
                                                                                        je    n106_var_ref_α
                                                                                        jmp   n80_var_ref_α
n79_call_builtin_prolog_β:
                                                                                        jmp   n106_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7872], rax
                        mov              qword ptr [rbp + 7880], rdx
                        add              rsp, 16
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 8000], 1
                        mov              dword ptr [rbp + 8004], 1
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rbp + 8008], rax
                                                                                        jmp   n82_var_ref_α
.Lx361_0:
                        .quad            .Lx361_0_s
.Lx361_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7888], rax
                        mov              qword ptr [rbp + 7896], rdx
                        add              rsp, 16
                                                                                        jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7904], rax
                        mov              qword ptr [rbp + 7912], rdx
                        add              rsp, 16
                                                                                        jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
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
                                                                                        je    n105_call_builtin_prolog_α
                                                                                        jmp   n85_call_builtin_prolog_α
n84_call_builtin_prolog_β:
                                                                                        jmp   n105_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_prolog_α:
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
.Lx367_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx367_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx367_41
                        cmp              esi, 1
                                                                                        jne   .Lx367_55
                        mov              r8, rax
                                                                                        jmp   .Lx367_40
.Lx367_55:
                        cmp              esi, 2
                                                                                        jne   .Lx367_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx367_41
                        mov              r8, rax
                                                                                        jmp   .Lx367_40
.Lx367_56:
                        cmp              eax, 13
                                                                                        jne   .Lx367_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx367_41
                        cmp              rax, r8
                                                                                        je    .Lx367_41
                        mov              r8, rax
                                                                                        jmp   .Lx367_40
.Lx367_41:
                        lea              r9, [rbp + 7856]
.Lx367_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx367_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx367_43
                        cmp              esi, 1
                                                                                        jne   .Lx367_57
                        mov              r9, rax
                                                                                        jmp   .Lx367_42
.Lx367_57:
                        cmp              esi, 2
                                                                                        jne   .Lx367_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx367_43
                        mov              r9, rax
                                                                                        jmp   .Lx367_42
.Lx367_58:
                        cmp              eax, 13
                                                                                        jne   .Lx367_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx367_43
                        cmp              rax, r9
                                                                                        je    .Lx367_43
                        mov              r9, rax
                                                                                        jmp   .Lx367_42
.Lx367_43:
                        cmp              r8, r9
                                                                                        je    .Lx367_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx367_44
                        cmp              eax, 99
                                                                                        je    .Lx367_44
                        cmp              eax, 13
                                                                                        jne   .Lx367_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx367_44
                                                                                        jmp   .Lx367_45
.Lx367_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx367_53
                        cmp              eax, 99
                                                                                        je    .Lx367_53
                        cmp              eax, 13
                                                                                        jne   .Lx367_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx367_53
                                                                                        jmp   .Lx367_46
.Lx367_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx367_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx367_53
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
                                                                                        jmp   .Lx367_51
.Lx367_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx367_47
                        cmp              eax, 99
                                                                                        je    .Lx367_47
                        cmp              eax, 13
                                                                                        jne   .Lx367_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx367_47
                                                                                        jmp   .Lx367_48
.Lx367_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx367_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx367_53
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
                                                                                        jmp   .Lx367_51
.Lx367_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx367_49
                        cmp              edx, 14
                                                                                        je    .Lx367_53
                                                                                        jmp   .Lx367_52
.Lx367_49:
                        cmp              edx, 14
                                                                                        je    .Lx367_52
                        cmp              ecx, 7
                                                                                        je    .Lx367_53
                        cmp              edx, 7
                                                                                        je    .Lx367_53
                        cmp              ecx, 6
                                                                                        jne   .Lx367_50
                        cmp              edx, 6
                                                                                        jne   .Lx367_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx367_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx367_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx367_51
                                                                                        jmp   .Lx367_52
.Lx367_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx367_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx367_53
.Lx367_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx367_54
.Lx367_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx367_54
.Lx367_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx367_54:
                        mov              qword ptr [rbp + 7824], rax
                        mov              qword ptr [rbp + 7832], rdx
                        cmp              eax, 99
                                                                                        je    n105_call_builtin_prolog_α
                                                                                        jmp   n86_var_ref_α
n85_call_builtin_prolog_β:
                                                                                        jmp   n105_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7792], rax
                        mov              qword ptr [rbp + 7800], rdx
                        add              rsp, 16
                                                                                        jmp   n87_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7808], rax
                        mov              qword ptr [rbp + 7816], rdx
                        add              rsp, 16
                                                                                        jmp   n88_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
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
.Lx372_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx372_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx372_41
                        cmp              esi, 1
                                                                                        jne   .Lx372_55
                        mov              r8, rax
                                                                                        jmp   .Lx372_40
.Lx372_55:
                        cmp              esi, 2
                                                                                        jne   .Lx372_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx372_41
                        mov              r8, rax
                                                                                        jmp   .Lx372_40
.Lx372_56:
                        cmp              eax, 13
                                                                                        jne   .Lx372_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx372_41
                        cmp              rax, r8
                                                                                        je    .Lx372_41
                        mov              r8, rax
                                                                                        jmp   .Lx372_40
.Lx372_41:
                        lea              r9, [rbp + 7776]
.Lx372_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx372_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx372_43
                        cmp              esi, 1
                                                                                        jne   .Lx372_57
                        mov              r9, rax
                                                                                        jmp   .Lx372_42
.Lx372_57:
                        cmp              esi, 2
                                                                                        jne   .Lx372_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx372_43
                        mov              r9, rax
                                                                                        jmp   .Lx372_42
.Lx372_58:
                        cmp              eax, 13
                                                                                        jne   .Lx372_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx372_43
                        cmp              rax, r9
                                                                                        je    .Lx372_43
                        mov              r9, rax
                                                                                        jmp   .Lx372_42
.Lx372_43:
                        cmp              r8, r9
                                                                                        je    .Lx372_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx372_44
                        cmp              eax, 99
                                                                                        je    .Lx372_44
                        cmp              eax, 13
                                                                                        jne   .Lx372_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx372_44
                                                                                        jmp   .Lx372_45
.Lx372_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx372_53
                        cmp              eax, 99
                                                                                        je    .Lx372_53
                        cmp              eax, 13
                                                                                        jne   .Lx372_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx372_53
                                                                                        jmp   .Lx372_46
.Lx372_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx372_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx372_53
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
                                                                                        jmp   .Lx372_51
.Lx372_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx372_47
                        cmp              eax, 99
                                                                                        je    .Lx372_47
                        cmp              eax, 13
                                                                                        jne   .Lx372_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx372_47
                                                                                        jmp   .Lx372_48
.Lx372_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx372_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx372_53
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
                                                                                        jmp   .Lx372_51
.Lx372_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx372_49
                        cmp              edx, 14
                                                                                        je    .Lx372_53
                                                                                        jmp   .Lx372_52
.Lx372_49:
                        cmp              edx, 14
                                                                                        je    .Lx372_52
                        cmp              ecx, 7
                                                                                        je    .Lx372_53
                        cmp              edx, 7
                                                                                        je    .Lx372_53
                        cmp              ecx, 6
                                                                                        jne   .Lx372_50
                        cmp              edx, 6
                                                                                        jne   .Lx372_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx372_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx372_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx372_51
                                                                                        jmp   .Lx372_52
.Lx372_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx372_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx372_53
.Lx372_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx372_54
.Lx372_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx372_54
.Lx372_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx372_54:
                        mov              qword ptr [rbp + 7744], rax
                        mov              qword ptr [rbp + 7752], rdx
                        cmp              eax, 99
                                                                                        je    n105_call_builtin_prolog_α
                                                                                        jmp   n89_var_ref_α
n88_call_builtin_prolog_β:
                                                                                        jmp   n105_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7600], rax
                        mov              qword ptr [rbp + 7608], rdx
                        add              rsp, 16
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 7728], 1
                        mov              dword ptr [rbp + 7732], 1
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rbp + 7736], rax
                                                                                        jmp   n91_var_ref_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 7616], rax
                        mov              qword ptr [rbp + 7624], rdx
                        add              rsp, 16
                                                                                        jmp   n92_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx
                        add              rsp, 16
                                                                                        jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
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
                                                                                        je    n105_call_builtin_prolog_α
                                                                                        jmp   n94_call_builtin_prolog_α
n93_call_builtin_prolog_β:
                                                                                        jmp   n105_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_prolog_α:
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
.Lx381_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx381_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx381_41
                        cmp              rax, r8
                                                                                        je    .Lx381_41
                        mov              r8, rax
                                                                                        jmp   .Lx381_40
.Lx381_41:
                        lea              r9, [rbp + 7584]
.Lx381_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx381_44
                        cmp              eax, 13
                                                                                        jne   .Lx381_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx381_44
                                                                                        jmp   .Lx381_45
.Lx381_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx381_53
                        cmp              eax, 99
                                                                                        je    .Lx381_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx381_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx381_49
                        cmp              edx, 14
                                                                                        je    .Lx381_53
                                                                                        jmp   .Lx381_52
.Lx381_49:
                        cmp              edx, 14
                                                                                        je    .Lx381_52
                        cmp              ecx, 7
                                                                                        je    .Lx381_53
                        cmp              edx, 7
                                                                                        je    .Lx381_53
                        cmp              ecx, 6
                                                                                        jne   .Lx381_50
                        cmp              edx, 6
                                                                                        jne   .Lx381_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx381_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx381_54
.Lx381_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx381_54:
                        mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                        cmp              eax, 99
                                                                                        je    n105_call_builtin_prolog_α
                                                                                        jmp   n95_cut_α
n94_call_builtin_prolog_β:
                                                                                        jmp   n105_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n95_cut_α:
                                                                                        jmp   n96_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7504], rax
                        mov              qword ptr [rbp + 7512], rdx
                        add              rsp, 16
                                                                                        jmp   n97_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx
                        add              rsp, 16
                                                                                        jmp   n98_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx
                        add              rsp, 16
                                                                                        jmp   n99_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_proc_staged_α:
                        lea              rsi, [rbp + 7504]
                        lea              rdx, [rbp + 7520]
                        lea              rcx, [rbp + 7536]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx390_2
.Lx390_2:
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                        cmp              eax, 99
                                                                                        je    n352_call_builtin_prolog_α
                                                                                        jmp   n100_var_ref_α
n99_call_proc_staged_β:
                                                                                        jmp   n352_call_builtin_prolog_α
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7376], rax
                        mov              qword ptr [rbp + 7384], rdx
                        add              rsp, 16
                                                                                        jmp   n101_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx
                        add              rsp, 16
                                                                                        jmp   n102_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 7408], rax
                        mov              qword ptr [rbp + 7416], rdx
                        add              rsp, 16
                                                                                        jmp   n103_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_proc_staged_α:
                        lea              rsi, [rbp + 7376]
                        lea              rdx, [rbp + 7392]
                        lea              rcx, [rbp + 7408]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx398_2
.Lx398_2:
                        mov              qword ptr [rbp + 7296], rax
                        mov              qword ptr [rbp + 7304], rdx
                        cmp              eax, 99
                                                                                        je    n99_call_proc_staged_β
                                                                                        jmp   n104_move_label_α
n103_call_proc_staged_β:
                                                                                        jmp   n99_call_proc_staged_β
.Lx398_0:
                        .quad            .Lx398_0_s
.Lx398_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n104_move_label_α:
                        lea              rax, [rip + n103_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_prolog_α:
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
                                                                                        jmp   n106_var_ref_α
n105_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7216], rax
                        mov              qword ptr [rbp + 7224], rdx
                        add              rsp, 16
                                                                                        jmp   n107_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:
                        mov              qword ptr [rbp + 7232], 6
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n108_lit_string_α
.Lx404_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rbp + 7248], 1
                        mov              dword ptr [rbp + 7252], 1
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rbp + 7256], rax
                                                                                        jmp   n109_call_builtin_prolog_α
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
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
                                                                                        je    n136_var_ref_α
                                                                                        jmp   n110_var_ref_α
n109_call_builtin_prolog_β:
                                                                                        jmp   n136_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7008], rax
                        mov              qword ptr [rbp + 7016], rdx
                        add              rsp, 16
                                                                                        jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rbp + 7136], 1
                        mov              dword ptr [rbp + 7140], 1
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rbp + 7144], rax
                                                                                        jmp   n112_var_ref_α
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7024], rax
                        mov              qword ptr [rbp + 7032], rdx
                        add              rsp, 16
                                                                                        jmp   n113_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7040], rax
                        mov              qword ptr [rbp + 7048], rdx
                        add              rsp, 16
                                                                                        jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_prolog_α:
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
                                                                                        je    n135_call_builtin_prolog_α
                                                                                        jmp   n115_call_builtin_prolog_α
n114_call_builtin_prolog_β:
                                                                                        jmp   n135_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
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
.Lx415_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx415_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx415_41
                        cmp              esi, 1
                                                                                        jne   .Lx415_55
                        mov              r8, rax
                                                                                        jmp   .Lx415_40
.Lx415_55:
                        cmp              esi, 2
                                                                                        jne   .Lx415_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx415_41
                        mov              r8, rax
                                                                                        jmp   .Lx415_40
.Lx415_56:
                        cmp              eax, 13
                                                                                        jne   .Lx415_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx415_41
                        cmp              rax, r8
                                                                                        je    .Lx415_41
                        mov              r8, rax
                                                                                        jmp   .Lx415_40
.Lx415_41:
                        lea              r9, [rbp + 6992]
.Lx415_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx415_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx415_43
                        cmp              esi, 1
                                                                                        jne   .Lx415_57
                        mov              r9, rax
                                                                                        jmp   .Lx415_42
.Lx415_57:
                        cmp              esi, 2
                                                                                        jne   .Lx415_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx415_43
                        mov              r9, rax
                                                                                        jmp   .Lx415_42
.Lx415_58:
                        cmp              eax, 13
                                                                                        jne   .Lx415_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx415_43
                        cmp              rax, r9
                                                                                        je    .Lx415_43
                        mov              r9, rax
                                                                                        jmp   .Lx415_42
.Lx415_43:
                        cmp              r8, r9
                                                                                        je    .Lx415_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx415_44
                        cmp              eax, 99
                                                                                        je    .Lx415_44
                        cmp              eax, 13
                                                                                        jne   .Lx415_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx415_44
                                                                                        jmp   .Lx415_45
.Lx415_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx415_53
                        cmp              eax, 99
                                                                                        je    .Lx415_53
                        cmp              eax, 13
                                                                                        jne   .Lx415_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx415_53
                                                                                        jmp   .Lx415_46
.Lx415_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx415_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx415_53
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
                                                                                        jmp   .Lx415_51
.Lx415_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx415_47
                        cmp              eax, 99
                                                                                        je    .Lx415_47
                        cmp              eax, 13
                                                                                        jne   .Lx415_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx415_47
                                                                                        jmp   .Lx415_48
.Lx415_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx415_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx415_53
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
                                                                                        jmp   .Lx415_51
.Lx415_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx415_49
                        cmp              edx, 14
                                                                                        je    .Lx415_53
                                                                                        jmp   .Lx415_52
.Lx415_49:
                        cmp              edx, 14
                                                                                        je    .Lx415_52
                        cmp              ecx, 7
                                                                                        je    .Lx415_53
                        cmp              edx, 7
                                                                                        je    .Lx415_53
                        cmp              ecx, 6
                                                                                        jne   .Lx415_50
                        cmp              edx, 6
                                                                                        jne   .Lx415_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx415_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx415_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx415_51
                                                                                        jmp   .Lx415_52
.Lx415_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx415_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx415_53
.Lx415_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx415_54
.Lx415_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx415_54
.Lx415_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx415_54:
                        mov              qword ptr [rbp + 6960], rax
                        mov              qword ptr [rbp + 6968], rdx
                        cmp              eax, 99
                                                                                        je    n135_call_builtin_prolog_α
                                                                                        jmp   n116_var_ref_α
n115_call_builtin_prolog_β:
                                                                                        jmp   n135_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6928], rax
                        mov              qword ptr [rbp + 6936], rdx
                        add              rsp, 16
                                                                                        jmp   n117_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx
                        add              rsp, 16
                                                                                        jmp   n118_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_prolog_α:
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
.Lx420_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx420_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx420_41
                        cmp              esi, 1
                                                                                        jne   .Lx420_55
                        mov              r8, rax
                                                                                        jmp   .Lx420_40
.Lx420_55:
                        cmp              esi, 2
                                                                                        jne   .Lx420_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx420_41
                        mov              r8, rax
                                                                                        jmp   .Lx420_40
.Lx420_56:
                        cmp              eax, 13
                                                                                        jne   .Lx420_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx420_41
                        cmp              rax, r8
                                                                                        je    .Lx420_41
                        mov              r8, rax
                                                                                        jmp   .Lx420_40
.Lx420_41:
                        lea              r9, [rbp + 6912]
.Lx420_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx420_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx420_43
                        cmp              esi, 1
                                                                                        jne   .Lx420_57
                        mov              r9, rax
                                                                                        jmp   .Lx420_42
.Lx420_57:
                        cmp              esi, 2
                                                                                        jne   .Lx420_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx420_43
                        mov              r9, rax
                                                                                        jmp   .Lx420_42
.Lx420_58:
                        cmp              eax, 13
                                                                                        jne   .Lx420_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx420_43
                        cmp              rax, r9
                                                                                        je    .Lx420_43
                        mov              r9, rax
                                                                                        jmp   .Lx420_42
.Lx420_43:
                        cmp              r8, r9
                                                                                        je    .Lx420_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx420_44
                        cmp              eax, 99
                                                                                        je    .Lx420_44
                        cmp              eax, 13
                                                                                        jne   .Lx420_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx420_44
                                                                                        jmp   .Lx420_45
.Lx420_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx420_53
                        cmp              eax, 99
                                                                                        je    .Lx420_53
                        cmp              eax, 13
                                                                                        jne   .Lx420_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx420_53
                                                                                        jmp   .Lx420_46
.Lx420_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx420_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx420_53
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
                                                                                        jmp   .Lx420_51
.Lx420_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx420_47
                        cmp              eax, 99
                                                                                        je    .Lx420_47
                        cmp              eax, 13
                                                                                        jne   .Lx420_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx420_47
                                                                                        jmp   .Lx420_48
.Lx420_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx420_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx420_53
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
                                                                                        jmp   .Lx420_51
.Lx420_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx420_49
                        cmp              edx, 14
                                                                                        je    .Lx420_53
                                                                                        jmp   .Lx420_52
.Lx420_49:
                        cmp              edx, 14
                                                                                        je    .Lx420_52
                        cmp              ecx, 7
                                                                                        je    .Lx420_53
                        cmp              edx, 7
                                                                                        je    .Lx420_53
                        cmp              ecx, 6
                                                                                        jne   .Lx420_50
                        cmp              edx, 6
                                                                                        jne   .Lx420_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx420_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx420_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx420_51
                                                                                        jmp   .Lx420_52
.Lx420_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx420_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx420_53
.Lx420_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx420_54
.Lx420_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx420_54
.Lx420_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx420_54:
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx
                        cmp              eax, 99
                                                                                        je    n135_call_builtin_prolog_α
                                                                                        jmp   n119_var_ref_α
n118_call_builtin_prolog_β:
                                                                                        jmp   n135_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx
                        add              rsp, 16
                                                                                        jmp   n120_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        mov              qword ptr [rbp + 6864], 1
                        mov              dword ptr [rbp + 6868], 1
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rbp + 6872], rax
                                                                                        jmp   n121_var_ref_α
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx
                        add              rsp, 16
                                                                                        jmp   n122_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 6768], rax
                        mov              qword ptr [rbp + 6776], rdx
                        add              rsp, 16
                                                                                        jmp   n123_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n123_call_builtin_prolog_α:
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
                                                                                        je    n135_call_builtin_prolog_α
                                                                                        jmp   n124_call_builtin_prolog_α
n123_call_builtin_prolog_β:
                                                                                        jmp   n135_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
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
.Lx429_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx429_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx429_41
                        cmp              esi, 1
                                                                                        jne   .Lx429_55
                        mov              r8, rax
                                                                                        jmp   .Lx429_40
.Lx429_55:
                        cmp              esi, 2
                                                                                        jne   .Lx429_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx429_41
                        mov              r8, rax
                                                                                        jmp   .Lx429_40
.Lx429_56:
                        cmp              eax, 13
                                                                                        jne   .Lx429_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx429_41
                        cmp              rax, r8
                                                                                        je    .Lx429_41
                        mov              r8, rax
                                                                                        jmp   .Lx429_40
.Lx429_41:
                        lea              r9, [rbp + 6720]
.Lx429_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx429_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx429_43
                        cmp              esi, 1
                                                                                        jne   .Lx429_57
                        mov              r9, rax
                                                                                        jmp   .Lx429_42
.Lx429_57:
                        cmp              esi, 2
                                                                                        jne   .Lx429_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx429_43
                        mov              r9, rax
                                                                                        jmp   .Lx429_42
.Lx429_58:
                        cmp              eax, 13
                                                                                        jne   .Lx429_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx429_43
                        cmp              rax, r9
                                                                                        je    .Lx429_43
                        mov              r9, rax
                                                                                        jmp   .Lx429_42
.Lx429_43:
                        cmp              r8, r9
                                                                                        je    .Lx429_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx429_44
                        cmp              eax, 99
                                                                                        je    .Lx429_44
                        cmp              eax, 13
                                                                                        jne   .Lx429_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx429_44
                                                                                        jmp   .Lx429_45
.Lx429_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx429_53
                        cmp              eax, 99
                                                                                        je    .Lx429_53
                        cmp              eax, 13
                                                                                        jne   .Lx429_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx429_53
                                                                                        jmp   .Lx429_46
.Lx429_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx429_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx429_53
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
                                                                                        jmp   .Lx429_51
.Lx429_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx429_47
                        cmp              eax, 99
                                                                                        je    .Lx429_47
                        cmp              eax, 13
                                                                                        jne   .Lx429_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx429_47
                                                                                        jmp   .Lx429_48
.Lx429_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx429_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx429_53
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
                                                                                        jmp   .Lx429_51
.Lx429_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx429_49
                        cmp              edx, 14
                                                                                        je    .Lx429_53
                                                                                        jmp   .Lx429_52
.Lx429_49:
                        cmp              edx, 14
                                                                                        je    .Lx429_52
                        cmp              ecx, 7
                                                                                        je    .Lx429_53
                        cmp              edx, 7
                                                                                        je    .Lx429_53
                        cmp              ecx, 6
                                                                                        jne   .Lx429_50
                        cmp              edx, 6
                                                                                        jne   .Lx429_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx429_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx429_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx429_51
                                                                                        jmp   .Lx429_52
.Lx429_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx429_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx429_53
.Lx429_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx429_54
.Lx429_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx429_54
.Lx429_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx429_54:
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                        cmp              eax, 99
                                                                                        je    n135_call_builtin_prolog_α
                                                                                        jmp   n125_cut_α
n124_call_builtin_prolog_β:
                                                                                        jmp   n135_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n125_cut_α:
                                                                                        jmp   n126_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 6640], rax
                        mov              qword ptr [rbp + 6648], rdx
                        add              rsp, 16
                                                                                        jmp   n127_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n127_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6656], rax
                        mov              qword ptr [rbp + 6664], rdx
                        add              rsp, 16
                                                                                        jmp   n128_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 6672], rax
                        mov              qword ptr [rbp + 6680], rdx
                        add              rsp, 16
                                                                                        jmp   n129_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_proc_staged_α:
                        lea              rsi, [rbp + 6640]
                        lea              rdx, [rbp + 6656]
                        lea              rcx, [rbp + 6672]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx438_2
.Lx438_2:
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx
                        cmp              eax, 99
                                                                                        je    n352_call_builtin_prolog_α
                                                                                        jmp   n130_var_ref_α
n129_call_proc_staged_β:
                                                                                        jmp   n352_call_builtin_prolog_α
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx
                        add              rsp, 16
                                                                                        jmp   n131_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx
                        add              rsp, 16
                                                                                        jmp   n132_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx
                        add              rsp, 16
                                                                                        jmp   n133_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_proc_staged_α:
                        lea              rsi, [rbp + 6512]
                        lea              rdx, [rbp + 6528]
                        lea              rcx, [rbp + 6544]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx446_2
.Lx446_2:
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                        cmp              eax, 99
                                                                                        je    n129_call_proc_staged_β
                                                                                        jmp   n134_move_label_α
n133_call_proc_staged_β:
                                                                                        jmp   n129_call_proc_staged_β
.Lx446_0:
                        .quad            .Lx446_0_s
.Lx446_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n134_move_label_α:
                        lea              rax, [rip + n133_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_prolog_α:
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
                                                                                        jmp   n136_var_ref_α
n135_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx
                        add              rsp, 16
                                                                                        jmp   n137_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:
                        mov              qword ptr [rbp + 6368], 6
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rbp + 6376], rax
                                                                                        jmp   n138_lit_string_α
.Lx452_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 6384], 1
                        mov              dword ptr [rbp + 6388], 1
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rbp + 6392], rax
                                                                                        jmp   n139_call_builtin_prolog_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_prolog_α:
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
                                                                                        je    n172_var_ref_α
                                                                                        jmp   n140_var_ref_α
n139_call_builtin_prolog_β:
                                                                                        jmp   n172_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx
                        add              rsp, 16
                                                                                        jmp   n141_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rbp + 6272], 1
                        mov              dword ptr [rbp + 6276], 1
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rbp + 6280], rax
                                                                                        jmp   n142_var_ref_α
.Lx457_0:
                        .quad            .Lx457_0_s
.Lx457_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx
                        add              rsp, 16
                                                                                        jmp   n143_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 6176], rax
                        mov              qword ptr [rbp + 6184], rdx
                        add              rsp, 16
                                                                                        jmp   n144_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_prolog_α:
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
                                                                                        je    n171_call_builtin_prolog_α
                                                                                        jmp   n145_call_builtin_prolog_α
n144_call_builtin_prolog_β:
                                                                                        jmp   n171_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n145_call_builtin_prolog_α:
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
.Lx463_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx463_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_41
                        cmp              esi, 1
                                                                                        jne   .Lx463_55
                        mov              r8, rax
                                                                                        jmp   .Lx463_40
.Lx463_55:
                        cmp              esi, 2
                                                                                        jne   .Lx463_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx463_41
                        mov              r8, rax
                                                                                        jmp   .Lx463_40
.Lx463_56:
                        cmp              eax, 13
                                                                                        jne   .Lx463_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_41
                        cmp              rax, r8
                                                                                        je    .Lx463_41
                        mov              r8, rax
                                                                                        jmp   .Lx463_40
.Lx463_41:
                        lea              r9, [rbp + 6128]
.Lx463_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx463_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_43
                        cmp              esi, 1
                                                                                        jne   .Lx463_57
                        mov              r9, rax
                                                                                        jmp   .Lx463_42
.Lx463_57:
                        cmp              esi, 2
                                                                                        jne   .Lx463_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx463_43
                        mov              r9, rax
                                                                                        jmp   .Lx463_42
.Lx463_58:
                        cmp              eax, 13
                                                                                        jne   .Lx463_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_43
                        cmp              rax, r9
                                                                                        je    .Lx463_43
                        mov              r9, rax
                                                                                        jmp   .Lx463_42
.Lx463_43:
                        cmp              r8, r9
                                                                                        je    .Lx463_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_44
                        cmp              eax, 99
                                                                                        je    .Lx463_44
                        cmp              eax, 13
                                                                                        jne   .Lx463_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx463_44
                                                                                        jmp   .Lx463_45
.Lx463_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_53
                        cmp              eax, 99
                                                                                        je    .Lx463_53
                        cmp              eax, 13
                                                                                        jne   .Lx463_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx463_53
                                                                                        jmp   .Lx463_46
.Lx463_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx463_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx463_53
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
                                                                                        jmp   .Lx463_51
.Lx463_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_47
                        cmp              eax, 99
                                                                                        je    .Lx463_47
                        cmp              eax, 13
                                                                                        jne   .Lx463_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx463_47
                                                                                        jmp   .Lx463_48
.Lx463_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx463_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx463_53
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
                                                                                        jmp   .Lx463_51
.Lx463_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx463_49
                        cmp              edx, 14
                                                                                        je    .Lx463_53
                                                                                        jmp   .Lx463_52
.Lx463_49:
                        cmp              edx, 14
                                                                                        je    .Lx463_52
                        cmp              ecx, 7
                                                                                        je    .Lx463_53
                        cmp              edx, 7
                                                                                        je    .Lx463_53
                        cmp              ecx, 6
                                                                                        jne   .Lx463_50
                        cmp              edx, 6
                                                                                        jne   .Lx463_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx463_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx463_51
                                                                                        jmp   .Lx463_52
.Lx463_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx463_53
.Lx463_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx463_54
.Lx463_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx463_54
.Lx463_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx463_54:
                        mov              qword ptr [rbp + 6096], rax
                        mov              qword ptr [rbp + 6104], rdx
                        cmp              eax, 99
                                                                                        je    n171_call_builtin_prolog_α
                                                                                        jmp   n146_var_ref_α
n145_call_builtin_prolog_β:
                                                                                        jmp   n171_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx
                        add              rsp, 16
                                                                                        jmp   n147_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6080], rax
                        mov              qword ptr [rbp + 6088], rdx
                        add              rsp, 16
                                                                                        jmp   n148_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_builtin_prolog_α:
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
.Lx468_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx468_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx468_41
                        cmp              esi, 1
                                                                                        jne   .Lx468_55
                        mov              r8, rax
                                                                                        jmp   .Lx468_40
.Lx468_55:
                        cmp              esi, 2
                                                                                        jne   .Lx468_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx468_41
                        mov              r8, rax
                                                                                        jmp   .Lx468_40
.Lx468_56:
                        cmp              eax, 13
                                                                                        jne   .Lx468_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx468_41
                        cmp              rax, r8
                                                                                        je    .Lx468_41
                        mov              r8, rax
                                                                                        jmp   .Lx468_40
.Lx468_41:
                        lea              r9, [rbp + 6048]
.Lx468_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx468_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx468_43
                        cmp              esi, 1
                                                                                        jne   .Lx468_57
                        mov              r9, rax
                                                                                        jmp   .Lx468_42
.Lx468_57:
                        cmp              esi, 2
                                                                                        jne   .Lx468_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx468_43
                        mov              r9, rax
                                                                                        jmp   .Lx468_42
.Lx468_58:
                        cmp              eax, 13
                                                                                        jne   .Lx468_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx468_43
                        cmp              rax, r9
                                                                                        je    .Lx468_43
                        mov              r9, rax
                                                                                        jmp   .Lx468_42
.Lx468_43:
                        cmp              r8, r9
                                                                                        je    .Lx468_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx468_44
                        cmp              eax, 99
                                                                                        je    .Lx468_44
                        cmp              eax, 13
                                                                                        jne   .Lx468_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx468_44
                                                                                        jmp   .Lx468_45
.Lx468_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx468_53
                        cmp              eax, 99
                                                                                        je    .Lx468_53
                        cmp              eax, 13
                                                                                        jne   .Lx468_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx468_53
                                                                                        jmp   .Lx468_46
.Lx468_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx468_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx468_53
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
                                                                                        jmp   .Lx468_51
.Lx468_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx468_47
                        cmp              eax, 99
                                                                                        je    .Lx468_47
                        cmp              eax, 13
                                                                                        jne   .Lx468_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx468_47
                                                                                        jmp   .Lx468_48
.Lx468_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx468_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx468_53
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
                                                                                        jmp   .Lx468_51
.Lx468_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx468_49
                        cmp              edx, 14
                                                                                        je    .Lx468_53
                                                                                        jmp   .Lx468_52
.Lx468_49:
                        cmp              edx, 14
                                                                                        je    .Lx468_52
                        cmp              ecx, 7
                                                                                        je    .Lx468_53
                        cmp              edx, 7
                                                                                        je    .Lx468_53
                        cmp              ecx, 6
                                                                                        jne   .Lx468_50
                        cmp              edx, 6
                                                                                        jne   .Lx468_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx468_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx468_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx468_51
                                                                                        jmp   .Lx468_52
.Lx468_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx468_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx468_53
.Lx468_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx468_54
.Lx468_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx468_54
.Lx468_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx468_54:
                        mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx
                        cmp              eax, 99
                                                                                        je    n171_call_builtin_prolog_α
                                                                                        jmp   n149_var_ref_α
n148_call_builtin_prolog_β:
                                                                                        jmp   n171_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                        add              rsp, 16
                                                                                        jmp   n150_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 6000], 1
                        mov              dword ptr [rbp + 6004], 1
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rbp + 6008], rax
                                                                                        jmp   n151_lit_string_α
.Lx471_0:
                        .quad            .Lx471_0_s
.Lx471_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rbp + 5776], 1
                        mov              dword ptr [rbp + 5780], 1
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rbp + 5784], rax
                                                                                        jmp   n152_var_ref_α
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                        add              rsp, 16
                                                                                        jmp   n153_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx
                        add              rsp, 16
                                                                                        jmp   n154_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n154_call_builtin_prolog_α:
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
                                                                                        jmp   n155_lit_string_α
n154_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 5904], 1
                        mov              dword ptr [rbp + 5908], 1
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rbp + 5912], rax
                                                                                        jmp   n156_var_ref_α
.Lx478_0:
                        .quad            .Lx478_0_s
.Lx478_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                        add              rsp, 16
                                                                                        jmp   n157_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 5808], rax
                        mov              qword ptr [rbp + 5816], rdx
                        add              rsp, 16
                                                                                        jmp   n158_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_prolog_α:
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
                                                                                        jmp   n159_call_builtin_prolog_α
n158_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n159_call_builtin_prolog_α:
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
                                                                                        je    n171_call_builtin_prolog_α
                                                                                        jmp   n160_call_builtin_prolog_α
n159_call_builtin_prolog_β:
                                                                                        jmp   n171_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_prolog_α:
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
.Lx485_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx485_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx485_41
                        cmp              rax, r8
                                                                                        je    .Lx485_41
                        mov              r8, rax
                                                                                        jmp   .Lx485_40
.Lx485_41:
                        lea              r9, [rbp + 5632]
.Lx485_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx485_44
                        cmp              eax, 13
                                                                                        jne   .Lx485_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx485_44
                                                                                        jmp   .Lx485_45
.Lx485_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx485_53
                        cmp              eax, 99
                                                                                        je    .Lx485_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx485_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx485_49
                        cmp              edx, 14
                                                                                        je    .Lx485_53
                                                                                        jmp   .Lx485_52
.Lx485_49:
                        cmp              edx, 14
                                                                                        je    .Lx485_52
                        cmp              ecx, 7
                                                                                        je    .Lx485_53
                        cmp              edx, 7
                                                                                        je    .Lx485_53
                        cmp              ecx, 6
                                                                                        jne   .Lx485_50
                        cmp              edx, 6
                                                                                        jne   .Lx485_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx485_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx485_54
.Lx485_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx485_54:
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                        cmp              eax, 99
                                                                                        je    n171_call_builtin_prolog_α
                                                                                        jmp   n161_cut_α
n160_call_builtin_prolog_β:
                                                                                        jmp   n171_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n161_cut_α:
                                                                                        jmp   n162_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx
                        add              rsp, 16
                                                                                        jmp   n163_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                        add              rsp, 16
                                                                                        jmp   n164_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx
                        add              rsp, 16
                                                                                        jmp   n165_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_proc_staged_α:
                        lea              rsi, [rbp + 5552]
                        lea              rdx, [rbp + 5568]
                        lea              rcx, [rbp + 5584]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx494_2
.Lx494_2:
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              eax, 99
                                                                                        je    n352_call_builtin_prolog_α
                                                                                        jmp   n166_var_ref_α
n165_call_proc_staged_β:
                                                                                        jmp   n352_call_builtin_prolog_α
.Lx494_0:
                        .quad            .Lx494_0_s
.Lx494_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx
                        add              rsp, 16
                                                                                        jmp   n167_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 5440], rax
                        mov              qword ptr [rbp + 5448], rdx
                        add              rsp, 16
                                                                                        jmp   n168_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx
                        add              rsp, 16
                                                                                        jmp   n169_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n169_call_proc_staged_α:
                        lea              rsi, [rbp + 5424]
                        lea              rdx, [rbp + 5440]
                        lea              rcx, [rbp + 5456]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx502_2
.Lx502_2:
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                        cmp              eax, 99
                                                                                        je    n165_call_proc_staged_β
                                                                                        jmp   n170_move_label_α
n169_call_proc_staged_β:
                                                                                        jmp   n165_call_proc_staged_β
.Lx502_0:
                        .quad            .Lx502_0_s
.Lx502_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n170_move_label_α:
                        lea              rax, [rip + n169_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n171_call_builtin_prolog_α:
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
                                                                                        jmp   n172_var_ref_α
n171_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx
                        add              rsp, 16
                                                                                        jmp   n173_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:
                        mov              qword ptr [rbp + 5280], 6
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rbp + 5288], rax
                                                                                        jmp   n174_lit_string_α
.Lx508_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rbp + 5296], 1
                        mov              dword ptr [rbp + 5300], 1
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rbp + 5304], rax
                                                                                        jmp   n175_call_builtin_prolog_α
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n175_call_builtin_prolog_α:
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
                                                                                        je    n214_var_ref_α
                                                                                        jmp   n176_var_ref_α
n175_call_builtin_prolog_β:
                                                                                        jmp   n214_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx
                        add              rsp, 16
                                                                                        jmp   n177_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:
                        mov              qword ptr [rbp + 5184], 1
                        mov              dword ptr [rbp + 5188], 1
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rbp + 5192], rax
                                                                                        jmp   n178_var_ref_α
.Lx513_0:
                        .quad            .Lx513_0_s
.Lx513_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                        add              rsp, 16
                                                                                        jmp   n179_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx
                        add              rsp, 16
                                                                                        jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n180_call_builtin_prolog_α:
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
                                                                                        je    n213_call_builtin_prolog_α
                                                                                        jmp   n181_call_builtin_prolog_α
n180_call_builtin_prolog_β:
                                                                                        jmp   n213_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_prolog_α:
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
.Lx519_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx519_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx519_41
                        cmp              esi, 1
                                                                                        jne   .Lx519_55
                        mov              r8, rax
                                                                                        jmp   .Lx519_40
.Lx519_55:
                        cmp              esi, 2
                                                                                        jne   .Lx519_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx519_41
                        mov              r8, rax
                                                                                        jmp   .Lx519_40
.Lx519_56:
                        cmp              eax, 13
                                                                                        jne   .Lx519_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx519_41
                        cmp              rax, r8
                                                                                        je    .Lx519_41
                        mov              r8, rax
                                                                                        jmp   .Lx519_40
.Lx519_41:
                        lea              r9, [rbp + 5040]
.Lx519_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx519_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx519_43
                        cmp              esi, 1
                                                                                        jne   .Lx519_57
                        mov              r9, rax
                                                                                        jmp   .Lx519_42
.Lx519_57:
                        cmp              esi, 2
                                                                                        jne   .Lx519_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx519_43
                        mov              r9, rax
                                                                                        jmp   .Lx519_42
.Lx519_58:
                        cmp              eax, 13
                                                                                        jne   .Lx519_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx519_43
                        cmp              rax, r9
                                                                                        je    .Lx519_43
                        mov              r9, rax
                                                                                        jmp   .Lx519_42
.Lx519_43:
                        cmp              r8, r9
                                                                                        je    .Lx519_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx519_44
                        cmp              eax, 99
                                                                                        je    .Lx519_44
                        cmp              eax, 13
                                                                                        jne   .Lx519_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx519_44
                                                                                        jmp   .Lx519_45
.Lx519_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx519_53
                        cmp              eax, 99
                                                                                        je    .Lx519_53
                        cmp              eax, 13
                                                                                        jne   .Lx519_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx519_53
                                                                                        jmp   .Lx519_46
.Lx519_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx519_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx519_53
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
                                                                                        jmp   .Lx519_51
.Lx519_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx519_47
                        cmp              eax, 99
                                                                                        je    .Lx519_47
                        cmp              eax, 13
                                                                                        jne   .Lx519_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx519_47
                                                                                        jmp   .Lx519_48
.Lx519_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx519_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx519_53
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
                                                                                        jmp   .Lx519_51
.Lx519_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx519_49
                        cmp              edx, 14
                                                                                        je    .Lx519_53
                                                                                        jmp   .Lx519_52
.Lx519_49:
                        cmp              edx, 14
                                                                                        je    .Lx519_52
                        cmp              ecx, 7
                                                                                        je    .Lx519_53
                        cmp              edx, 7
                                                                                        je    .Lx519_53
                        cmp              ecx, 6
                                                                                        jne   .Lx519_50
                        cmp              edx, 6
                                                                                        jne   .Lx519_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx519_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx519_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx519_51
                                                                                        jmp   .Lx519_52
.Lx519_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx519_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx519_53
.Lx519_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx519_54
.Lx519_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx519_54
.Lx519_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx519_54:
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                        cmp              eax, 99
                                                                                        je    n213_call_builtin_prolog_α
                                                                                        jmp   n182_var_ref_α
n181_call_builtin_prolog_β:
                                                                                        jmp   n213_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                        add              rsp, 16
                                                                                        jmp   n183_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                        add              rsp, 16
                                                                                        jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_prolog_α:
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
.Lx524_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx524_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx524_41
                        cmp              esi, 1
                                                                                        jne   .Lx524_55
                        mov              r8, rax
                                                                                        jmp   .Lx524_40
.Lx524_55:
                        cmp              esi, 2
                                                                                        jne   .Lx524_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx524_41
                        mov              r8, rax
                                                                                        jmp   .Lx524_40
.Lx524_56:
                        cmp              eax, 13
                                                                                        jne   .Lx524_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx524_41
                        cmp              rax, r8
                                                                                        je    .Lx524_41
                        mov              r8, rax
                                                                                        jmp   .Lx524_40
.Lx524_41:
                        lea              r9, [rbp + 4960]
.Lx524_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx524_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx524_43
                        cmp              esi, 1
                                                                                        jne   .Lx524_57
                        mov              r9, rax
                                                                                        jmp   .Lx524_42
.Lx524_57:
                        cmp              esi, 2
                                                                                        jne   .Lx524_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx524_43
                        mov              r9, rax
                                                                                        jmp   .Lx524_42
.Lx524_58:
                        cmp              eax, 13
                                                                                        jne   .Lx524_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx524_43
                        cmp              rax, r9
                                                                                        je    .Lx524_43
                        mov              r9, rax
                                                                                        jmp   .Lx524_42
.Lx524_43:
                        cmp              r8, r9
                                                                                        je    .Lx524_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx524_44
                        cmp              eax, 99
                                                                                        je    .Lx524_44
                        cmp              eax, 13
                                                                                        jne   .Lx524_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx524_44
                                                                                        jmp   .Lx524_45
.Lx524_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx524_53
                        cmp              eax, 99
                                                                                        je    .Lx524_53
                        cmp              eax, 13
                                                                                        jne   .Lx524_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx524_53
                                                                                        jmp   .Lx524_46
.Lx524_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx524_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx524_53
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
                                                                                        jmp   .Lx524_51
.Lx524_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx524_47
                        cmp              eax, 99
                                                                                        je    .Lx524_47
                        cmp              eax, 13
                                                                                        jne   .Lx524_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx524_47
                                                                                        jmp   .Lx524_48
.Lx524_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx524_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx524_53
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
                                                                                        jmp   .Lx524_51
.Lx524_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx524_49
                        cmp              edx, 14
                                                                                        je    .Lx524_53
                                                                                        jmp   .Lx524_52
.Lx524_49:
                        cmp              edx, 14
                                                                                        je    .Lx524_52
                        cmp              ecx, 7
                                                                                        je    .Lx524_53
                        cmp              edx, 7
                                                                                        je    .Lx524_53
                        cmp              ecx, 6
                                                                                        jne   .Lx524_50
                        cmp              edx, 6
                                                                                        jne   .Lx524_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx524_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx524_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx524_51
                                                                                        jmp   .Lx524_52
.Lx524_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx524_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx524_53
.Lx524_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx524_54
.Lx524_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx524_54
.Lx524_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx524_54:
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                        cmp              eax, 99
                                                                                        je    n213_call_builtin_prolog_α
                                                                                        jmp   n185_var_ref_α
n184_call_builtin_prolog_β:
                                                                                        jmp   n213_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                        add              rsp, 16
                                                                                        jmp   n186_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        mov              qword ptr [rbp + 4912], 1
                        mov              dword ptr [rbp + 4916], 1
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rbp + 4920], rax
                                                                                        jmp   n187_lit_string_α
.Lx527_0:
                        .quad            .Lx527_0_s
.Lx527_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:
                        mov              qword ptr [rbp + 4688], 1
                        mov              dword ptr [rbp + 4692], 1
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rbp + 4696], rax
                                                                                        jmp   n188_lit_string_α
.Lx528_0:
                        .quad            .Lx528_0_s
.Lx528_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:
                        mov              qword ptr [rbp + 4464], 1
                        mov              dword ptr [rbp + 4468], 1
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n189_var_ref_α
.Lx529_0:
                        .quad            .Lx529_0_s
.Lx529_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n189_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        add              rsp, 16
                                                                                        jmp   n190_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                        add              rsp, 16
                                                                                        jmp   n191_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n191_call_builtin_prolog_α:
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
                                                                                        jmp   n192_lit_string_α
n191_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rbp + 4592], 1
                        mov              dword ptr [rbp + 4596], 1
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n193_var_ref_α
.Lx535_0:
                        .quad            .Lx535_0_s
.Lx535_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                        add              rsp, 16
                                                                                        jmp   n194_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                        add              rsp, 16
                                                                                        jmp   n195_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n195_call_builtin_prolog_α:
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
                                                                                        jmp   n196_call_builtin_prolog_α
n195_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n196_call_builtin_prolog_α:
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
                                                                                        jmp   n197_lit_string_α
n196_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:
                        mov              qword ptr [rbp + 4816], 1
                        mov              dword ptr [rbp + 4820], 1
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rbp + 4824], rax
                                                                                        jmp   n198_var_ref_α
.Lx542_0:
                        .quad            .Lx542_0_s
.Lx542_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        add              rsp, 16
                                                                                        jmp   n199_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:
                        mov              qword ptr [rbp + 4720], 6
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rbp + 4728], rax
                                                                                        jmp   n200_call_builtin_prolog_α
.Lx545_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n200_call_builtin_prolog_α:
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
                                                                                        jmp   n201_call_builtin_prolog_α
n200_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n201_call_builtin_prolog_α:
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
                                                                                        je    n213_call_builtin_prolog_α
                                                                                        jmp   n202_call_builtin_prolog_α
n201_call_builtin_prolog_β:
                                                                                        jmp   n213_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n202_call_builtin_prolog_α:
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
.Lx548_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx548_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx548_41
                        cmp              esi, 1
                                                                                        jne   .Lx548_55
                        mov              r8, rax
                                                                                        jmp   .Lx548_40
.Lx548_55:
                        cmp              esi, 2
                                                                                        jne   .Lx548_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx548_41
                        mov              r8, rax
                                                                                        jmp   .Lx548_40
.Lx548_56:
                        cmp              eax, 13
                                                                                        jne   .Lx548_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx548_41
                        cmp              rax, r8
                                                                                        je    .Lx548_41
                        mov              r8, rax
                                                                                        jmp   .Lx548_40
.Lx548_41:
                        lea              r9, [rbp + 4320]
.Lx548_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx548_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx548_43
                        cmp              esi, 1
                                                                                        jne   .Lx548_57
                        mov              r9, rax
                                                                                        jmp   .Lx548_42
.Lx548_57:
                        cmp              esi, 2
                                                                                        jne   .Lx548_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx548_43
                        mov              r9, rax
                                                                                        jmp   .Lx548_42
.Lx548_58:
                        cmp              eax, 13
                                                                                        jne   .Lx548_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx548_43
                        cmp              rax, r9
                                                                                        je    .Lx548_43
                        mov              r9, rax
                                                                                        jmp   .Lx548_42
.Lx548_43:
                        cmp              r8, r9
                                                                                        je    .Lx548_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx548_44
                        cmp              eax, 99
                                                                                        je    .Lx548_44
                        cmp              eax, 13
                                                                                        jne   .Lx548_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx548_44
                                                                                        jmp   .Lx548_45
.Lx548_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx548_53
                        cmp              eax, 99
                                                                                        je    .Lx548_53
                        cmp              eax, 13
                                                                                        jne   .Lx548_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx548_53
                                                                                        jmp   .Lx548_46
.Lx548_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx548_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx548_53
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
                                                                                        jmp   .Lx548_51
.Lx548_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx548_47
                        cmp              eax, 99
                                                                                        je    .Lx548_47
                        cmp              eax, 13
                                                                                        jne   .Lx548_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx548_47
                                                                                        jmp   .Lx548_48
.Lx548_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx548_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx548_53
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
                                                                                        jmp   .Lx548_51
.Lx548_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx548_49
                        cmp              edx, 14
                                                                                        je    .Lx548_53
                                                                                        jmp   .Lx548_52
.Lx548_49:
                        cmp              edx, 14
                                                                                        je    .Lx548_52
                        cmp              ecx, 7
                                                                                        je    .Lx548_53
                        cmp              edx, 7
                                                                                        je    .Lx548_53
                        cmp              ecx, 6
                                                                                        jne   .Lx548_50
                        cmp              edx, 6
                                                                                        jne   .Lx548_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx548_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx548_51
                                                                                        jmp   .Lx548_52
.Lx548_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx548_53
.Lx548_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx548_54
.Lx548_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx548_54
.Lx548_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx548_54:
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              eax, 99
                                                                                        je    n213_call_builtin_prolog_α
                                                                                        jmp   n203_cut_α
n202_call_builtin_prolog_β:
                                                                                        jmp   n213_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n203_cut_α:
                                                                                        jmp   n204_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                        add              rsp, 16
                                                                                        jmp   n205_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        add              rsp, 16
                                                                                        jmp   n206_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        add              rsp, 16
                                                                                        jmp   n207_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n207_call_proc_staged_α:
                        lea              rsi, [rbp + 4240]
                        lea              rdx, [rbp + 4256]
                        lea              rcx, [rbp + 4272]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx557_2
.Lx557_2:
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              eax, 99
                                                                                        je    n352_call_builtin_prolog_α
                                                                                        jmp   n208_var_ref_α
n207_call_proc_staged_β:
                                                                                        jmp   n352_call_builtin_prolog_α
.Lx557_0:
                        .quad            .Lx557_0_s
.Lx557_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                        add              rsp, 16
                                                                                        jmp   n209_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                        add              rsp, 16
                                                                                        jmp   n210_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        add              rsp, 16
                                                                                        jmp   n211_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n211_call_proc_staged_α:
                        lea              rsi, [rbp + 4112]
                        lea              rdx, [rbp + 4128]
                        lea              rcx, [rbp + 4144]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx565_2
.Lx565_2:
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        cmp              eax, 99
                                                                                        je    n207_call_proc_staged_β
                                                                                        jmp   n212_move_label_α
n211_call_proc_staged_β:
                                                                                        jmp   n207_call_proc_staged_β
.Lx565_0:
                        .quad            .Lx565_0_s
.Lx565_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n212_move_label_α:
                        lea              rax, [rip + n211_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n213_call_builtin_prolog_α:
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
                                                                                        jmp   n214_var_ref_α
n213_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        add              rsp, 16
                                                                                        jmp   n215_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_integer_α:
                        mov              qword ptr [rbp + 3968], 6
                        mov              rax, qword ptr [rip + .Lx571_0]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n216_lit_string_α
.Lx571_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:
                        mov              qword ptr [rbp + 3984], 1
                        mov              dword ptr [rbp + 3988], 1
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n217_call_builtin_prolog_α
.Lx572_0:
                        .quad            .Lx572_0_s
.Lx572_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n217_call_builtin_prolog_α:
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
                                                                                        je    n253_var_ref_α
                                                                                        jmp   n218_var_ref_α
n217_call_builtin_prolog_β:
                                                                                        jmp   n253_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        add              rsp, 16
                                                                                        jmp   n219_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rbp + 3872], 1
                        mov              dword ptr [rbp + 3876], 1
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n220_var_ref_α
.Lx576_0:
                        .quad            .Lx576_0_s
.Lx576_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                        add              rsp, 16
                                                                                        jmp   n221_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        add              rsp, 16
                                                                                        jmp   n222_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n222_call_builtin_prolog_α:
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
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n223_call_builtin_prolog_α
n222_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_builtin_prolog_α:
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
.Lx582_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx582_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx582_41
                        cmp              esi, 1
                                                                                        jne   .Lx582_55
                        mov              r8, rax
                                                                                        jmp   .Lx582_40
.Lx582_55:
                        cmp              esi, 2
                                                                                        jne   .Lx582_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx582_41
                        mov              r8, rax
                                                                                        jmp   .Lx582_40
.Lx582_56:
                        cmp              eax, 13
                                                                                        jne   .Lx582_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx582_41
                        cmp              rax, r8
                                                                                        je    .Lx582_41
                        mov              r8, rax
                                                                                        jmp   .Lx582_40
.Lx582_41:
                        lea              r9, [rbp + 3728]
.Lx582_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx582_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx582_43
                        cmp              esi, 1
                                                                                        jne   .Lx582_57
                        mov              r9, rax
                                                                                        jmp   .Lx582_42
.Lx582_57:
                        cmp              esi, 2
                                                                                        jne   .Lx582_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx582_43
                        mov              r9, rax
                                                                                        jmp   .Lx582_42
.Lx582_58:
                        cmp              eax, 13
                                                                                        jne   .Lx582_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx582_43
                        cmp              rax, r9
                                                                                        je    .Lx582_43
                        mov              r9, rax
                                                                                        jmp   .Lx582_42
.Lx582_43:
                        cmp              r8, r9
                                                                                        je    .Lx582_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx582_44
                        cmp              eax, 99
                                                                                        je    .Lx582_44
                        cmp              eax, 13
                                                                                        jne   .Lx582_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx582_44
                                                                                        jmp   .Lx582_45
.Lx582_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx582_53
                        cmp              eax, 99
                                                                                        je    .Lx582_53
                        cmp              eax, 13
                                                                                        jne   .Lx582_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx582_53
                                                                                        jmp   .Lx582_46
.Lx582_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx582_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx582_53
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
                                                                                        jmp   .Lx582_51
.Lx582_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx582_47
                        cmp              eax, 99
                                                                                        je    .Lx582_47
                        cmp              eax, 13
                                                                                        jne   .Lx582_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx582_47
                                                                                        jmp   .Lx582_48
.Lx582_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx582_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx582_53
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
                                                                                        jmp   .Lx582_51
.Lx582_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx582_49
                        cmp              edx, 14
                                                                                        je    .Lx582_53
                                                                                        jmp   .Lx582_52
.Lx582_49:
                        cmp              edx, 14
                                                                                        je    .Lx582_52
                        cmp              ecx, 7
                                                                                        je    .Lx582_53
                        cmp              edx, 7
                                                                                        je    .Lx582_53
                        cmp              ecx, 6
                                                                                        jne   .Lx582_50
                        cmp              edx, 6
                                                                                        jne   .Lx582_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx582_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx582_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx582_51
                                                                                        jmp   .Lx582_52
.Lx582_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx582_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx582_53
.Lx582_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx582_54
.Lx582_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx582_54
.Lx582_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx582_54:
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              eax, 99
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n224_var_ref_α
n223_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        add              rsp, 16
                                                                                        jmp   n225_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        add              rsp, 16
                                                                                        jmp   n226_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n226_call_builtin_prolog_α:
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
                        lea              r9, [rbp + 3648]
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
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 99
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n227_var_ref_α
n226_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n227_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        add              rsp, 16
                                                                                        jmp   n228_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              dword ptr [rbp + 3604], 1
                        mov              rax, qword ptr [rip + .Lx590_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n229_lit_string_α
.Lx590_0:
                        .quad            .Lx590_0_s
.Lx590_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:
                        mov              qword ptr [rbp + 3376], 1
                        mov              dword ptr [rbp + 3380], 1
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n230_var_ref_α
.Lx591_0:
                        .quad            .Lx591_0_s
.Lx591_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        add              rsp, 16
                                                                                        jmp   n231_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n231_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                        add              rsp, 16
                                                                                        jmp   n232_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_prolog_α:
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
                                                                                        jmp   n233_lit_string_α
n232_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:
                        mov              qword ptr [rbp + 3504], 1
                        mov              dword ptr [rbp + 3508], 1
                        mov              rax, qword ptr [rip + .Lx597_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n234_var_ref_α
.Lx597_0:
                        .quad            .Lx597_0_s
.Lx597_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        add              rsp, 16
                                                                                        jmp   n235_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        add              rsp, 16
                                                                                        jmp   n236_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n236_call_builtin_prolog_α:
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
                                                                                        jmp   n237_call_builtin_prolog_α
n236_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n237_call_builtin_prolog_α:
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
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n238_call_builtin_prolog_α
n237_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_prolog_α:
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
.Lx604_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx604_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx604_41
                        cmp              esi, 1
                                                                                        jne   .Lx604_55
                        mov              r8, rax
                                                                                        jmp   .Lx604_40
.Lx604_55:
                        cmp              esi, 2
                                                                                        jne   .Lx604_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx604_41
                        mov              r8, rax
                                                                                        jmp   .Lx604_40
.Lx604_56:
                        cmp              eax, 13
                                                                                        jne   .Lx604_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx604_41
                        cmp              rax, r8
                                                                                        je    .Lx604_41
                        mov              r8, rax
                                                                                        jmp   .Lx604_40
.Lx604_41:
                        lea              r9, [rbp + 3232]
.Lx604_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx604_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx604_43
                        cmp              esi, 1
                                                                                        jne   .Lx604_57
                        mov              r9, rax
                                                                                        jmp   .Lx604_42
.Lx604_57:
                        cmp              esi, 2
                                                                                        jne   .Lx604_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx604_43
                        mov              r9, rax
                                                                                        jmp   .Lx604_42
.Lx604_58:
                        cmp              eax, 13
                                                                                        jne   .Lx604_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx604_43
                        cmp              rax, r9
                                                                                        je    .Lx604_43
                        mov              r9, rax
                                                                                        jmp   .Lx604_42
.Lx604_43:
                        cmp              r8, r9
                                                                                        je    .Lx604_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx604_44
                        cmp              eax, 99
                                                                                        je    .Lx604_44
                        cmp              eax, 13
                                                                                        jne   .Lx604_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx604_44
                                                                                        jmp   .Lx604_45
.Lx604_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx604_53
                        cmp              eax, 99
                                                                                        je    .Lx604_53
                        cmp              eax, 13
                                                                                        jne   .Lx604_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx604_53
                                                                                        jmp   .Lx604_46
.Lx604_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx604_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx604_53
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
                                                                                        jmp   .Lx604_51
.Lx604_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx604_47
                        cmp              eax, 99
                                                                                        je    .Lx604_47
                        cmp              eax, 13
                                                                                        jne   .Lx604_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx604_47
                                                                                        jmp   .Lx604_48
.Lx604_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx604_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx604_53
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
                                                                                        jmp   .Lx604_51
.Lx604_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx604_49
                        cmp              edx, 14
                                                                                        je    .Lx604_53
                                                                                        jmp   .Lx604_52
.Lx604_49:
                        cmp              edx, 14
                                                                                        je    .Lx604_52
                        cmp              ecx, 7
                                                                                        je    .Lx604_53
                        cmp              edx, 7
                                                                                        je    .Lx604_53
                        cmp              ecx, 6
                                                                                        jne   .Lx604_50
                        cmp              edx, 6
                                                                                        jne   .Lx604_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx604_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx604_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx604_51
                                                                                        jmp   .Lx604_52
.Lx604_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx604_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx604_53
.Lx604_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx604_54
.Lx604_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx604_54
.Lx604_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx604_54:
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 99
                                                                                        je    n252_call_builtin_prolog_α
                                                                                        jmp   n239_cut_α
n238_call_builtin_prolog_β:
                                                                                        jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n239_cut_α:
                                                                                        jmp   n240_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        add              rsp, 16
                                                                                        jmp   n241_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n241_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3176], rax
                        .section         .rodata
.Lrkfn609:              .string          "$tt_integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn609]
                        lea              rsi, [rbp + 3168]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 99
                                                                                        je    n352_call_builtin_prolog_α
                                                                                        jmp   n242_var_ref_α
n241_call_builtin_prolog_β:
                                                                                        jmp   n352_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n242_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        add              rsp, 16
                                                                                        jmp   n243_var_α
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:
                        mov              rax, qword ptr [rbp + 8128]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 8136]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n244_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:
                        mov              qword ptr [rbp + 3136], 6
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n245_call_builtin_prolog_α
.Lx614_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n245_call_builtin_prolog_α:
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
                                                                                        je    n352_call_builtin_prolog_α
                                                                                        jmp   n246_call_builtin_prolog_α
n245_call_builtin_prolog_β:
                                                                                        jmp   n352_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_prolog_α:
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
                                                                                        je    n352_call_builtin_prolog_α
                                                                                        jmp   n247_var_ref_α
n246_call_builtin_prolog_β:
                                                                                        jmp   n352_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        add              rsp, 16
                                                                                        jmp   n248_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        add              rsp, 16
                                                                                        jmp   n249_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        add              rsp, 16
                                                                                        jmp   n250_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n250_call_proc_staged_α:
                        lea              rsi, [rbp + 2944]
                        lea              rdx, [rbp + 2960]
                        lea              rcx, [rbp + 2976]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx624_2
.Lx624_2:
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n352_call_builtin_prolog_α
                                                                                        jmp   n251_move_label_α
n250_call_proc_staged_β:
                                                                                        jmp   n352_call_builtin_prolog_α
.Lx624_0:
                        .quad            .Lx624_0_s
.Lx624_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n251_move_label_α:
                        lea              rax, [rip + n250_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n252_call_builtin_prolog_α:
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
                                                                                        jmp   n253_var_ref_α
n252_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        add              rsp, 16
                                                                                        jmp   n254_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:
                        mov              qword ptr [rbp + 2800], 6
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n255_lit_string_α
.Lx630_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:
                        mov              qword ptr [rbp + 2816], 1
                        mov              dword ptr [rbp + 2820], 1
                        mov              rax, qword ptr [rip + .Lx631_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n256_call_builtin_prolog_α
.Lx631_0:
                        .quad            .Lx631_0_s
.Lx631_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n256_call_builtin_prolog_α:
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
                                                                                        je    n277_var_ref_α
                                                                                        jmp   n257_var_ref_α
n256_call_builtin_prolog_β:
                                                                                        jmp   n277_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        add              rsp, 16
                                                                                        jmp   n258_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              dword ptr [rbp + 2708], 1
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n259_var_ref_α
.Lx635_0:
                        .quad            .Lx635_0_s
.Lx635_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        add              rsp, 16
                                                                                        jmp   n260_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n260_call_builtin_prolog_α:
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
                                                                                        je    n276_call_builtin_prolog_α
                                                                                        jmp   n261_call_builtin_prolog_α
n260_call_builtin_prolog_β:
                                                                                        jmp   n276_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n261_call_builtin_prolog_α:
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
                        lea              r9, [rbp + 2592]
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
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    n276_call_builtin_prolog_α
                                                                                        jmp   n262_var_ref_α
n261_call_builtin_prolog_β:
                                                                                        jmp   n276_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n262_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        add              rsp, 16
                                                                                        jmp   n263_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        add              rsp, 16
                                                                                        jmp   n264_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_builtin_prolog_α:
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
.Lx644_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx644_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx644_41
                        cmp              esi, 1
                                                                                        jne   .Lx644_55
                        mov              r8, rax
                                                                                        jmp   .Lx644_40
.Lx644_55:
                        cmp              esi, 2
                                                                                        jne   .Lx644_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx644_41
                        mov              r8, rax
                                                                                        jmp   .Lx644_40
.Lx644_56:
                        cmp              eax, 13
                                                                                        jne   .Lx644_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx644_41
                        cmp              rax, r8
                                                                                        je    .Lx644_41
                        mov              r8, rax
                                                                                        jmp   .Lx644_40
.Lx644_41:
                        lea              r9, [rbp + 2512]
.Lx644_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx644_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx644_43
                        cmp              esi, 1
                                                                                        jne   .Lx644_57
                        mov              r9, rax
                                                                                        jmp   .Lx644_42
.Lx644_57:
                        cmp              esi, 2
                                                                                        jne   .Lx644_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx644_43
                        mov              r9, rax
                                                                                        jmp   .Lx644_42
.Lx644_58:
                        cmp              eax, 13
                                                                                        jne   .Lx644_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx644_43
                        cmp              rax, r9
                                                                                        je    .Lx644_43
                        mov              r9, rax
                                                                                        jmp   .Lx644_42
.Lx644_43:
                        cmp              r8, r9
                                                                                        je    .Lx644_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx644_44
                        cmp              eax, 99
                                                                                        je    .Lx644_44
                        cmp              eax, 13
                                                                                        jne   .Lx644_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx644_44
                                                                                        jmp   .Lx644_45
.Lx644_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx644_53
                        cmp              eax, 99
                                                                                        je    .Lx644_53
                        cmp              eax, 13
                                                                                        jne   .Lx644_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx644_53
                                                                                        jmp   .Lx644_46
.Lx644_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx644_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx644_53
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
                                                                                        jmp   .Lx644_51
.Lx644_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx644_47
                        cmp              eax, 99
                                                                                        je    .Lx644_47
                        cmp              eax, 13
                                                                                        jne   .Lx644_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx644_47
                                                                                        jmp   .Lx644_48
.Lx644_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx644_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx644_53
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
                                                                                        jmp   .Lx644_51
.Lx644_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx644_49
                        cmp              edx, 14
                                                                                        je    .Lx644_53
                                                                                        jmp   .Lx644_52
.Lx644_49:
                        cmp              edx, 14
                                                                                        je    .Lx644_52
                        cmp              ecx, 7
                                                                                        je    .Lx644_53
                        cmp              edx, 7
                                                                                        je    .Lx644_53
                        cmp              ecx, 6
                                                                                        jne   .Lx644_50
                        cmp              edx, 6
                                                                                        jne   .Lx644_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx644_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx644_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx644_51
                                                                                        jmp   .Lx644_52
.Lx644_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx644_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx644_53
.Lx644_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx644_54
.Lx644_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx644_54
.Lx644_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx644_54:
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    n276_call_builtin_prolog_α
                                                                                        jmp   n265_var_ref_α
n264_call_builtin_prolog_β:
                                                                                        jmp   n276_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n265_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        add              rsp, 16
                                                                                        jmp   n266_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              dword ptr [rbp + 2468], 1
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n267_var_ref_α
.Lx647_0:
                        .quad            .Lx647_0_s
.Lx647_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        add              rsp, 16
                                                                                        jmp   n268_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_prolog_α:
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
                                                                                        je    n276_call_builtin_prolog_α
                                                                                        jmp   n269_call_builtin_prolog_α
n268_call_builtin_prolog_β:
                                                                                        jmp   n276_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n269_call_builtin_prolog_α:
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
.Lx651_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx651_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx651_41
                        cmp              esi, 1
                                                                                        jne   .Lx651_55
                        mov              r8, rax
                                                                                        jmp   .Lx651_40
.Lx651_55:
                        cmp              esi, 2
                                                                                        jne   .Lx651_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx651_41
                        mov              r8, rax
                                                                                        jmp   .Lx651_40
.Lx651_56:
                        cmp              eax, 13
                                                                                        jne   .Lx651_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx651_41
                        cmp              rax, r8
                                                                                        je    .Lx651_41
                        mov              r8, rax
                                                                                        jmp   .Lx651_40
.Lx651_41:
                        lea              r9, [rbp + 2352]
.Lx651_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx651_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx651_43
                        cmp              esi, 1
                                                                                        jne   .Lx651_57
                        mov              r9, rax
                                                                                        jmp   .Lx651_42
.Lx651_57:
                        cmp              esi, 2
                                                                                        jne   .Lx651_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx651_43
                        mov              r9, rax
                                                                                        jmp   .Lx651_42
.Lx651_58:
                        cmp              eax, 13
                                                                                        jne   .Lx651_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx651_43
                        cmp              rax, r9
                                                                                        je    .Lx651_43
                        mov              r9, rax
                                                                                        jmp   .Lx651_42
.Lx651_43:
                        cmp              r8, r9
                                                                                        je    .Lx651_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx651_44
                        cmp              eax, 99
                                                                                        je    .Lx651_44
                        cmp              eax, 13
                                                                                        jne   .Lx651_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx651_44
                                                                                        jmp   .Lx651_45
.Lx651_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx651_53
                        cmp              eax, 99
                                                                                        je    .Lx651_53
                        cmp              eax, 13
                                                                                        jne   .Lx651_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx651_53
                                                                                        jmp   .Lx651_46
.Lx651_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx651_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx651_53
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
                                                                                        jmp   .Lx651_51
.Lx651_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx651_47
                        cmp              eax, 99
                                                                                        je    .Lx651_47
                        cmp              eax, 13
                                                                                        jne   .Lx651_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx651_47
                                                                                        jmp   .Lx651_48
.Lx651_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx651_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx651_53
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
                                                                                        jmp   .Lx651_51
.Lx651_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx651_49
                        cmp              edx, 14
                                                                                        je    .Lx651_53
                                                                                        jmp   .Lx651_52
.Lx651_49:
                        cmp              edx, 14
                                                                                        je    .Lx651_52
                        cmp              ecx, 7
                                                                                        je    .Lx651_53
                        cmp              edx, 7
                                                                                        je    .Lx651_53
                        cmp              ecx, 6
                                                                                        jne   .Lx651_50
                        cmp              edx, 6
                                                                                        jne   .Lx651_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx651_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx651_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx651_51
                                                                                        jmp   .Lx651_52
.Lx651_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx651_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx651_53
.Lx651_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx651_54
.Lx651_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx651_54
.Lx651_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx651_54:
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    n276_call_builtin_prolog_α
                                                                                        jmp   n270_cut_α
n269_call_builtin_prolog_β:
                                                                                        jmp   n276_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n270_cut_α:
                                                                                        jmp   n271_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        add              rsp, 16
                                                                                        jmp   n272_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        add              rsp, 16
                                                                                        jmp   n273_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        add              rsp, 16
                                                                                        jmp   n274_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n274_call_proc_staged_α:
                        lea              rsi, [rbp + 2272]
                        lea              rdx, [rbp + 2288]
                        lea              rcx, [rbp + 2304]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx660_2
.Lx660_2:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n352_call_builtin_prolog_α
                                                                                        jmp   n275_move_label_α
n274_call_proc_staged_β:
                                                                                        jmp   n352_call_builtin_prolog_α
.Lx660_0:
                        .quad            .Lx660_0_s
.Lx660_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n275_move_label_α:
                        lea              rax, [rip + n274_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n276_call_builtin_prolog_α:
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
                                                                                        jmp   n277_var_ref_α
n276_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        add              rsp, 16
                                                                                        jmp   n278_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:
                        mov              qword ptr [rbp + 2128], 6
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n279_lit_string_α
.Lx666_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              dword ptr [rbp + 2148], 3
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n280_call_builtin_prolog_α
.Lx667_0:
                        .quad            .Lx667_0_s
.Lx667_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n280_call_builtin_prolog_α:
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
                                                                                        je    n304_var_ref_α
                                                                                        jmp   n281_var_ref_α
n280_call_builtin_prolog_β:
                                                                                        jmp   n304_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        add              rsp, 16
                                                                                        jmp   n282_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              dword ptr [rbp + 2036], 3
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n283_var_ref_α
.Lx671_0:
                        .quad            .Lx671_0_s
.Lx671_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n283_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        add              rsp, 16
                                                                                        jmp   n284_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n284_call_builtin_prolog_α:
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
                                                                                        je    n303_call_builtin_prolog_α
                                                                                        jmp   n285_call_builtin_prolog_α
n284_call_builtin_prolog_β:
                                                                                        jmp   n303_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n285_call_builtin_prolog_α:
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
.Lx675_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx675_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx675_41
                        cmp              esi, 1
                                                                                        jne   .Lx675_55
                        mov              r8, rax
                                                                                        jmp   .Lx675_40
.Lx675_55:
                        cmp              esi, 2
                                                                                        jne   .Lx675_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx675_41
                        mov              r8, rax
                                                                                        jmp   .Lx675_40
.Lx675_56:
                        cmp              eax, 13
                                                                                        jne   .Lx675_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx675_41
                        cmp              rax, r8
                                                                                        je    .Lx675_41
                        mov              r8, rax
                                                                                        jmp   .Lx675_40
.Lx675_41:
                        lea              r9, [rbp + 1920]
.Lx675_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx675_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx675_43
                        cmp              esi, 1
                                                                                        jne   .Lx675_57
                        mov              r9, rax
                                                                                        jmp   .Lx675_42
.Lx675_57:
                        cmp              esi, 2
                                                                                        jne   .Lx675_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx675_43
                        mov              r9, rax
                                                                                        jmp   .Lx675_42
.Lx675_58:
                        cmp              eax, 13
                                                                                        jne   .Lx675_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx675_43
                        cmp              rax, r9
                                                                                        je    .Lx675_43
                        mov              r9, rax
                                                                                        jmp   .Lx675_42
.Lx675_43:
                        cmp              r8, r9
                                                                                        je    .Lx675_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx675_44
                        cmp              eax, 99
                                                                                        je    .Lx675_44
                        cmp              eax, 13
                                                                                        jne   .Lx675_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx675_44
                                                                                        jmp   .Lx675_45
.Lx675_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx675_53
                        cmp              eax, 99
                                                                                        je    .Lx675_53
                        cmp              eax, 13
                                                                                        jne   .Lx675_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx675_53
                                                                                        jmp   .Lx675_46
.Lx675_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx675_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx675_53
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
                                                                                        jmp   .Lx675_51
.Lx675_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx675_47
                        cmp              eax, 99
                                                                                        je    .Lx675_47
                        cmp              eax, 13
                                                                                        jne   .Lx675_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx675_47
                                                                                        jmp   .Lx675_48
.Lx675_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx675_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx675_53
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
                                                                                        jmp   .Lx675_51
.Lx675_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx675_49
                        cmp              edx, 14
                                                                                        je    .Lx675_53
                                                                                        jmp   .Lx675_52
.Lx675_49:
                        cmp              edx, 14
                                                                                        je    .Lx675_52
                        cmp              ecx, 7
                                                                                        je    .Lx675_53
                        cmp              edx, 7
                                                                                        je    .Lx675_53
                        cmp              ecx, 6
                                                                                        jne   .Lx675_50
                        cmp              edx, 6
                                                                                        jne   .Lx675_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx675_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx675_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx675_51
                                                                                        jmp   .Lx675_52
.Lx675_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx675_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx675_53
.Lx675_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx675_54
.Lx675_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx675_54
.Lx675_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx675_54:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n303_call_builtin_prolog_α
                                                                                        jmp   n286_var_ref_α
n285_call_builtin_prolog_β:
                                                                                        jmp   n303_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        add              rsp, 16
                                                                                        jmp   n287_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        add              rsp, 16
                                                                                        jmp   n288_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n288_call_builtin_prolog_α:
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
.Lx680_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx680_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx680_41
                        cmp              esi, 1
                                                                                        jne   .Lx680_55
                        mov              r8, rax
                                                                                        jmp   .Lx680_40
.Lx680_55:
                        cmp              esi, 2
                                                                                        jne   .Lx680_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx680_41
                        mov              r8, rax
                                                                                        jmp   .Lx680_40
.Lx680_56:
                        cmp              eax, 13
                                                                                        jne   .Lx680_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx680_41
                        cmp              rax, r8
                                                                                        je    .Lx680_41
                        mov              r8, rax
                                                                                        jmp   .Lx680_40
.Lx680_41:
                        lea              r9, [rbp + 1840]
.Lx680_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx680_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx680_43
                        cmp              esi, 1
                                                                                        jne   .Lx680_57
                        mov              r9, rax
                                                                                        jmp   .Lx680_42
.Lx680_57:
                        cmp              esi, 2
                                                                                        jne   .Lx680_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx680_43
                        mov              r9, rax
                                                                                        jmp   .Lx680_42
.Lx680_58:
                        cmp              eax, 13
                                                                                        jne   .Lx680_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx680_43
                        cmp              rax, r9
                                                                                        je    .Lx680_43
                        mov              r9, rax
                                                                                        jmp   .Lx680_42
.Lx680_43:
                        cmp              r8, r9
                                                                                        je    .Lx680_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx680_44
                        cmp              eax, 99
                                                                                        je    .Lx680_44
                        cmp              eax, 13
                                                                                        jne   .Lx680_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx680_44
                                                                                        jmp   .Lx680_45
.Lx680_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx680_53
                        cmp              eax, 99
                                                                                        je    .Lx680_53
                        cmp              eax, 13
                                                                                        jne   .Lx680_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx680_53
                                                                                        jmp   .Lx680_46
.Lx680_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx680_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx680_53
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
                                                                                        jmp   .Lx680_51
.Lx680_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx680_47
                        cmp              eax, 99
                                                                                        je    .Lx680_47
                        cmp              eax, 13
                                                                                        jne   .Lx680_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx680_47
                                                                                        jmp   .Lx680_48
.Lx680_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx680_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx680_53
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
                                                                                        jmp   .Lx680_51
.Lx680_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx680_49
                        cmp              edx, 14
                                                                                        je    .Lx680_53
                                                                                        jmp   .Lx680_52
.Lx680_49:
                        cmp              edx, 14
                                                                                        je    .Lx680_52
                        cmp              ecx, 7
                                                                                        je    .Lx680_53
                        cmp              edx, 7
                                                                                        je    .Lx680_53
                        cmp              ecx, 6
                                                                                        jne   .Lx680_50
                        cmp              edx, 6
                                                                                        jne   .Lx680_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx680_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx680_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx680_51
                                                                                        jmp   .Lx680_52
.Lx680_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx680_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx680_53
.Lx680_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx680_54
.Lx680_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx680_54
.Lx680_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx680_54:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n303_call_builtin_prolog_α
                                                                                        jmp   n289_var_ref_α
n288_call_builtin_prolog_β:
                                                                                        jmp   n303_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n289_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        add              rsp, 16
                                                                                        jmp   n290_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              dword ptr [rbp + 1796], 1
                        mov              rax, qword ptr [rip + .Lx683_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n291_lit_string_α
.Lx683_0:
                        .quad            .Lx683_0_s
.Lx683_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              dword ptr [rbp + 1684], 3
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n292_var_ref_α
.Lx684_0:
                        .quad            .Lx684_0_s
.Lx684_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        add              rsp, 16
                                                                                        jmp   n293_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n293_call_builtin_prolog_α:
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
                                                                                        jmp   n294_var_ref_α
n293_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        add              rsp, 16
                                                                                        jmp   n295_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n295_call_builtin_prolog_α:
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
                                                                                        je    n303_call_builtin_prolog_α
                                                                                        jmp   n296_call_builtin_prolog_α
n295_call_builtin_prolog_β:
                                                                                        jmp   n303_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n296_call_builtin_prolog_α:
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
.Lx691_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx691_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx691_41
                        cmp              esi, 1
                                                                                        jne   .Lx691_55
                        mov              r8, rax
                                                                                        jmp   .Lx691_40
.Lx691_55:
                        cmp              esi, 2
                                                                                        jne   .Lx691_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx691_41
                        mov              r8, rax
                                                                                        jmp   .Lx691_40
.Lx691_56:
                        cmp              eax, 13
                                                                                        jne   .Lx691_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx691_41
                        cmp              rax, r8
                                                                                        je    .Lx691_41
                        mov              r8, rax
                                                                                        jmp   .Lx691_40
.Lx691_41:
                        lea              r9, [rbp + 1568]
.Lx691_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx691_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx691_43
                        cmp              esi, 1
                                                                                        jne   .Lx691_57
                        mov              r9, rax
                                                                                        jmp   .Lx691_42
.Lx691_57:
                        cmp              esi, 2
                                                                                        jne   .Lx691_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx691_43
                        mov              r9, rax
                                                                                        jmp   .Lx691_42
.Lx691_58:
                        cmp              eax, 13
                                                                                        jne   .Lx691_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx691_43
                        cmp              rax, r9
                                                                                        je    .Lx691_43
                        mov              r9, rax
                                                                                        jmp   .Lx691_42
.Lx691_43:
                        cmp              r8, r9
                                                                                        je    .Lx691_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx691_44
                        cmp              eax, 99
                                                                                        je    .Lx691_44
                        cmp              eax, 13
                                                                                        jne   .Lx691_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx691_44
                                                                                        jmp   .Lx691_45
.Lx691_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx691_53
                        cmp              eax, 99
                                                                                        je    .Lx691_53
                        cmp              eax, 13
                                                                                        jne   .Lx691_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx691_53
                                                                                        jmp   .Lx691_46
.Lx691_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx691_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx691_53
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
                                                                                        jmp   .Lx691_51
.Lx691_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx691_47
                        cmp              eax, 99
                                                                                        je    .Lx691_47
                        cmp              eax, 13
                                                                                        jne   .Lx691_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx691_47
                                                                                        jmp   .Lx691_48
.Lx691_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx691_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx691_53
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
                                                                                        jmp   .Lx691_51
.Lx691_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx691_49
                        cmp              edx, 14
                                                                                        je    .Lx691_53
                                                                                        jmp   .Lx691_52
.Lx691_49:
                        cmp              edx, 14
                                                                                        je    .Lx691_52
                        cmp              ecx, 7
                                                                                        je    .Lx691_53
                        cmp              edx, 7
                                                                                        je    .Lx691_53
                        cmp              ecx, 6
                                                                                        jne   .Lx691_50
                        cmp              edx, 6
                                                                                        jne   .Lx691_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx691_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx691_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx691_51
                                                                                        jmp   .Lx691_52
.Lx691_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx691_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx691_53
.Lx691_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx691_54
.Lx691_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx691_54
.Lx691_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx691_54:
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    n303_call_builtin_prolog_α
                                                                                        jmp   n297_cut_α
n296_call_builtin_prolog_β:
                                                                                        jmp   n303_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n297_cut_α:
                                                                                        jmp   n298_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        add              rsp, 16
                                                                                        jmp   n299_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        add              rsp, 16
                                                                                        jmp   n300_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        add              rsp, 16
                                                                                        jmp   n301_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n301_call_proc_staged_α:
                        lea              rsi, [rbp + 1488]
                        lea              rdx, [rbp + 1504]
                        lea              rcx, [rbp + 1520]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx700_2
.Lx700_2:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n352_call_builtin_prolog_α
                                                                                        jmp   n302_move_label_α
n301_call_proc_staged_β:
                                                                                        jmp   n352_call_builtin_prolog_α
.Lx700_0:
                        .quad            .Lx700_0_s
.Lx700_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n302_move_label_α:
                        lea              rax, [rip + n301_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n303_call_builtin_prolog_α:
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
                                                                                        jmp   n304_var_ref_α
n303_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        add              rsp, 16
                                                                                        jmp   n305_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 6
                        mov              rax, qword ptr [rip + .Lx706_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n306_lit_string_α
.Lx706_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              dword ptr [rbp + 1364], 3
                        mov              rax, qword ptr [rip + .Lx707_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n307_call_builtin_prolog_α
.Lx707_0:
                        .quad            .Lx707_0_s
.Lx707_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n307_call_builtin_prolog_α:
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
                                                                                        je    n329_var_ref_α
                                                                                        jmp   n308_var_ref_α
n307_call_builtin_prolog_β:
                                                                                        jmp   n329_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        add              rsp, 16
                                                                                        jmp   n309_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              dword ptr [rbp + 1252], 3
                        mov              rax, qword ptr [rip + .Lx711_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n310_var_ref_α
.Lx711_0:
                        .quad            .Lx711_0_s
.Lx711_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        add              rsp, 16
                                                                                        jmp   n311_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n311_call_builtin_prolog_α:
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
                                                                                        je    n328_call_builtin_prolog_α
                                                                                        jmp   n312_call_builtin_prolog_α
n311_call_builtin_prolog_β:
                                                                                        jmp   n328_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n312_call_builtin_prolog_α:
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
.Lx715_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx715_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx715_41
                        cmp              esi, 1
                                                                                        jne   .Lx715_55
                        mov              r8, rax
                                                                                        jmp   .Lx715_40
.Lx715_55:
                        cmp              esi, 2
                                                                                        jne   .Lx715_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx715_41
                        mov              r8, rax
                                                                                        jmp   .Lx715_40
.Lx715_56:
                        cmp              eax, 13
                                                                                        jne   .Lx715_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx715_41
                        cmp              rax, r8
                                                                                        je    .Lx715_41
                        mov              r8, rax
                                                                                        jmp   .Lx715_40
.Lx715_41:
                        lea              r9, [rbp + 1136]
.Lx715_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx715_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx715_43
                        cmp              esi, 1
                                                                                        jne   .Lx715_57
                        mov              r9, rax
                                                                                        jmp   .Lx715_42
.Lx715_57:
                        cmp              esi, 2
                                                                                        jne   .Lx715_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx715_43
                        mov              r9, rax
                                                                                        jmp   .Lx715_42
.Lx715_58:
                        cmp              eax, 13
                                                                                        jne   .Lx715_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx715_43
                        cmp              rax, r9
                                                                                        je    .Lx715_43
                        mov              r9, rax
                                                                                        jmp   .Lx715_42
.Lx715_43:
                        cmp              r8, r9
                                                                                        je    .Lx715_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx715_44
                        cmp              eax, 99
                                                                                        je    .Lx715_44
                        cmp              eax, 13
                                                                                        jne   .Lx715_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx715_44
                                                                                        jmp   .Lx715_45
.Lx715_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx715_53
                        cmp              eax, 99
                                                                                        je    .Lx715_53
                        cmp              eax, 13
                                                                                        jne   .Lx715_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx715_53
                                                                                        jmp   .Lx715_46
.Lx715_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx715_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx715_53
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
                                                                                        jmp   .Lx715_51
.Lx715_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx715_47
                        cmp              eax, 99
                                                                                        je    .Lx715_47
                        cmp              eax, 13
                                                                                        jne   .Lx715_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx715_47
                                                                                        jmp   .Lx715_48
.Lx715_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx715_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx715_53
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
                                                                                        jmp   .Lx715_51
.Lx715_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx715_49
                        cmp              edx, 14
                                                                                        je    .Lx715_53
                                                                                        jmp   .Lx715_52
.Lx715_49:
                        cmp              edx, 14
                                                                                        je    .Lx715_52
                        cmp              ecx, 7
                                                                                        je    .Lx715_53
                        cmp              edx, 7
                                                                                        je    .Lx715_53
                        cmp              ecx, 6
                                                                                        jne   .Lx715_50
                        cmp              edx, 6
                                                                                        jne   .Lx715_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx715_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx715_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx715_51
                                                                                        jmp   .Lx715_52
.Lx715_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx715_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx715_53
.Lx715_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx715_54
.Lx715_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx715_54
.Lx715_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx715_54:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n328_call_builtin_prolog_α
                                                                                        jmp   n313_var_ref_α
n312_call_builtin_prolog_β:
                                                                                        jmp   n328_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        add              rsp, 16
                                                                                        jmp   n314_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        add              rsp, 16
                                                                                        jmp   n315_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_prolog_α:
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
.Lx720_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx720_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx720_41
                        cmp              esi, 1
                                                                                        jne   .Lx720_55
                        mov              r8, rax
                                                                                        jmp   .Lx720_40
.Lx720_55:
                        cmp              esi, 2
                                                                                        jne   .Lx720_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx720_41
                        mov              r8, rax
                                                                                        jmp   .Lx720_40
.Lx720_56:
                        cmp              eax, 13
                                                                                        jne   .Lx720_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx720_41
                        cmp              rax, r8
                                                                                        je    .Lx720_41
                        mov              r8, rax
                                                                                        jmp   .Lx720_40
.Lx720_41:
                        lea              r9, [rbp + 1056]
.Lx720_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx720_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx720_43
                        cmp              esi, 1
                                                                                        jne   .Lx720_57
                        mov              r9, rax
                                                                                        jmp   .Lx720_42
.Lx720_57:
                        cmp              esi, 2
                                                                                        jne   .Lx720_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx720_43
                        mov              r9, rax
                                                                                        jmp   .Lx720_42
.Lx720_58:
                        cmp              eax, 13
                                                                                        jne   .Lx720_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx720_43
                        cmp              rax, r9
                                                                                        je    .Lx720_43
                        mov              r9, rax
                                                                                        jmp   .Lx720_42
.Lx720_43:
                        cmp              r8, r9
                                                                                        je    .Lx720_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx720_44
                        cmp              eax, 99
                                                                                        je    .Lx720_44
                        cmp              eax, 13
                                                                                        jne   .Lx720_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx720_44
                                                                                        jmp   .Lx720_45
.Lx720_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx720_53
                        cmp              eax, 99
                                                                                        je    .Lx720_53
                        cmp              eax, 13
                                                                                        jne   .Lx720_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx720_53
                                                                                        jmp   .Lx720_46
.Lx720_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx720_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx720_53
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
                                                                                        jmp   .Lx720_51
.Lx720_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx720_47
                        cmp              eax, 99
                                                                                        je    .Lx720_47
                        cmp              eax, 13
                                                                                        jne   .Lx720_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx720_47
                                                                                        jmp   .Lx720_48
.Lx720_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx720_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx720_53
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
                                                                                        jmp   .Lx720_51
.Lx720_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx720_49
                        cmp              edx, 14
                                                                                        je    .Lx720_53
                                                                                        jmp   .Lx720_52
.Lx720_49:
                        cmp              edx, 14
                                                                                        je    .Lx720_52
                        cmp              ecx, 7
                                                                                        je    .Lx720_53
                        cmp              edx, 7
                                                                                        je    .Lx720_53
                        cmp              ecx, 6
                                                                                        jne   .Lx720_50
                        cmp              edx, 6
                                                                                        jne   .Lx720_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx720_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx720_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx720_51
                                                                                        jmp   .Lx720_52
.Lx720_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx720_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx720_53
.Lx720_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx720_54
.Lx720_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx720_54
.Lx720_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx720_54:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n328_call_builtin_prolog_α
                                                                                        jmp   n316_var_ref_α
n315_call_builtin_prolog_β:
                                                                                        jmp   n328_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        add              rsp, 16
                                                                                        jmp   n317_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx723_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n318_var_ref_α
.Lx723_0:
                        .quad            .Lx723_0_s
.Lx723_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        add              rsp, 16
                                                                                        jmp   n319_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        add              rsp, 16
                                                                                        jmp   n320_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n320_call_builtin_prolog_α:
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
                                                                                        je    n328_call_builtin_prolog_α
                                                                                        jmp   n321_call_builtin_prolog_α
n320_call_builtin_prolog_β:
                                                                                        jmp   n328_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n321_call_builtin_prolog_α:
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
.Lx729_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx729_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx729_41
                        cmp              esi, 1
                                                                                        jne   .Lx729_55
                        mov              r8, rax
                                                                                        jmp   .Lx729_40
.Lx729_55:
                        cmp              esi, 2
                                                                                        jne   .Lx729_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx729_41
                        mov              r8, rax
                                                                                        jmp   .Lx729_40
.Lx729_56:
                        cmp              eax, 13
                                                                                        jne   .Lx729_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx729_41
                        cmp              rax, r8
                                                                                        je    .Lx729_41
                        mov              r8, rax
                                                                                        jmp   .Lx729_40
.Lx729_41:
                        lea              r9, [rbp + 864]
.Lx729_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx729_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx729_43
                        cmp              esi, 1
                                                                                        jne   .Lx729_57
                        mov              r9, rax
                                                                                        jmp   .Lx729_42
.Lx729_57:
                        cmp              esi, 2
                                                                                        jne   .Lx729_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx729_43
                        mov              r9, rax
                                                                                        jmp   .Lx729_42
.Lx729_58:
                        cmp              eax, 13
                                                                                        jne   .Lx729_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx729_43
                        cmp              rax, r9
                                                                                        je    .Lx729_43
                        mov              r9, rax
                                                                                        jmp   .Lx729_42
.Lx729_43:
                        cmp              r8, r9
                                                                                        je    .Lx729_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx729_44
                        cmp              eax, 99
                                                                                        je    .Lx729_44
                        cmp              eax, 13
                                                                                        jne   .Lx729_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx729_44
                                                                                        jmp   .Lx729_45
.Lx729_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx729_53
                        cmp              eax, 99
                                                                                        je    .Lx729_53
                        cmp              eax, 13
                                                                                        jne   .Lx729_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx729_53
                                                                                        jmp   .Lx729_46
.Lx729_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx729_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx729_53
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
                                                                                        jmp   .Lx729_51
.Lx729_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx729_47
                        cmp              eax, 99
                                                                                        je    .Lx729_47
                        cmp              eax, 13
                                                                                        jne   .Lx729_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx729_47
                                                                                        jmp   .Lx729_48
.Lx729_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx729_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx729_53
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
                                                                                        jmp   .Lx729_51
.Lx729_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx729_49
                        cmp              edx, 14
                                                                                        je    .Lx729_53
                                                                                        jmp   .Lx729_52
.Lx729_49:
                        cmp              edx, 14
                                                                                        je    .Lx729_52
                        cmp              ecx, 7
                                                                                        je    .Lx729_53
                        cmp              edx, 7
                                                                                        je    .Lx729_53
                        cmp              ecx, 6
                                                                                        jne   .Lx729_50
                        cmp              edx, 6
                                                                                        jne   .Lx729_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx729_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx729_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx729_51
                                                                                        jmp   .Lx729_52
.Lx729_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx729_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx729_53
.Lx729_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx729_54
.Lx729_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx729_54
.Lx729_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx729_54:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n328_call_builtin_prolog_α
                                                                                        jmp   n322_cut_α
n321_call_builtin_prolog_β:
                                                                                        jmp   n328_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n322_cut_α:
                                                                                        jmp   n323_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        add              rsp, 16
                                                                                        jmp   n324_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        add              rsp, 16
                                                                                        jmp   n325_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        add              rsp, 16
                                                                                        jmp   n326_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n326_call_proc_staged_α:
                        lea              rsi, [rbp + 784]
                        lea              rdx, [rbp + 800]
                        lea              rcx, [rbp + 816]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx738_2
.Lx738_2:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n352_call_builtin_prolog_α
                                                                                        jmp   n327_move_label_α
n326_call_proc_staged_β:
                                                                                        jmp   n352_call_builtin_prolog_α
.Lx738_0:
                        .quad            .Lx738_0_s
.Lx738_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n327_move_label_α:
                        lea              rax, [rip + n326_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n328_call_builtin_prolog_α:
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
                                                                                        jmp   n329_var_ref_α
n328_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        add              rsp, 16
                                                                                        jmp   n330_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8160]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        add              rsp, 16
                                                                                        jmp   n331_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n331_call_builtin_prolog_α:
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
.Lx746_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx746_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx746_41
                        cmp              esi, 1
                                                                                        jne   .Lx746_55
                        mov              r8, rax
                                                                                        jmp   .Lx746_40
.Lx746_55:
                        cmp              esi, 2
                                                                                        jne   .Lx746_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx746_41
                        mov              r8, rax
                                                                                        jmp   .Lx746_40
.Lx746_56:
                        cmp              eax, 13
                                                                                        jne   .Lx746_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx746_41
                        cmp              rax, r8
                                                                                        je    .Lx746_41
                        mov              r8, rax
                                                                                        jmp   .Lx746_40
.Lx746_41:
                        lea              r9, [rbp + 624]
.Lx746_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx746_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx746_43
                        cmp              esi, 1
                                                                                        jne   .Lx746_57
                        mov              r9, rax
                                                                                        jmp   .Lx746_42
.Lx746_57:
                        cmp              esi, 2
                                                                                        jne   .Lx746_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx746_43
                        mov              r9, rax
                                                                                        jmp   .Lx746_42
.Lx746_58:
                        cmp              eax, 13
                                                                                        jne   .Lx746_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx746_43
                        cmp              rax, r9
                                                                                        je    .Lx746_43
                        mov              r9, rax
                                                                                        jmp   .Lx746_42
.Lx746_43:
                        cmp              r8, r9
                                                                                        je    .Lx746_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx746_44
                        cmp              eax, 99
                                                                                        je    .Lx746_44
                        cmp              eax, 13
                                                                                        jne   .Lx746_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx746_44
                                                                                        jmp   .Lx746_45
.Lx746_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx746_53
                        cmp              eax, 99
                                                                                        je    .Lx746_53
                        cmp              eax, 13
                                                                                        jne   .Lx746_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx746_53
                                                                                        jmp   .Lx746_46
.Lx746_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx746_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx746_53
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
                                                                                        jmp   .Lx746_51
.Lx746_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx746_47
                        cmp              eax, 99
                                                                                        je    .Lx746_47
                        cmp              eax, 13
                                                                                        jne   .Lx746_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx746_47
                                                                                        jmp   .Lx746_48
.Lx746_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx746_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx746_53
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
                                                                                        jmp   .Lx746_51
.Lx746_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx746_49
                        cmp              edx, 14
                                                                                        je    .Lx746_53
                                                                                        jmp   .Lx746_52
.Lx746_49:
                        cmp              edx, 14
                                                                                        je    .Lx746_52
                        cmp              ecx, 7
                                                                                        je    .Lx746_53
                        cmp              edx, 7
                                                                                        je    .Lx746_53
                        cmp              ecx, 6
                                                                                        jne   .Lx746_50
                        cmp              edx, 6
                                                                                        jne   .Lx746_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx746_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx746_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx746_51
                                                                                        jmp   .Lx746_52
.Lx746_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx746_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx746_53
.Lx746_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx746_54
.Lx746_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx746_54
.Lx746_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx746_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
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
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        add              rsp, 16
                                                                                        jmp   n333_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8160]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        add              rsp, 16
                                                                                        jmp   n334_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n334_call_builtin_prolog_α:
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
.Lx751_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx751_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx751_41
                        cmp              esi, 1
                                                                                        jne   .Lx751_55
                        mov              r8, rax
                                                                                        jmp   .Lx751_40
.Lx751_55:
                        cmp              esi, 2
                                                                                        jne   .Lx751_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx751_41
                        mov              r8, rax
                                                                                        jmp   .Lx751_40
.Lx751_56:
                        cmp              eax, 13
                                                                                        jne   .Lx751_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx751_41
                        cmp              rax, r8
                                                                                        je    .Lx751_41
                        mov              r8, rax
                                                                                        jmp   .Lx751_40
.Lx751_41:
                        lea              r9, [rbp + 544]
.Lx751_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx751_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx751_43
                        cmp              esi, 1
                                                                                        jne   .Lx751_57
                        mov              r9, rax
                                                                                        jmp   .Lx751_42
.Lx751_57:
                        cmp              esi, 2
                                                                                        jne   .Lx751_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx751_43
                        mov              r9, rax
                                                                                        jmp   .Lx751_42
.Lx751_58:
                        cmp              eax, 13
                                                                                        jne   .Lx751_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx751_43
                        cmp              rax, r9
                                                                                        je    .Lx751_43
                        mov              r9, rax
                                                                                        jmp   .Lx751_42
.Lx751_43:
                        cmp              r8, r9
                                                                                        je    .Lx751_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx751_44
                        cmp              eax, 99
                                                                                        je    .Lx751_44
                        cmp              eax, 13
                                                                                        jne   .Lx751_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx751_44
                                                                                        jmp   .Lx751_45
.Lx751_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx751_53
                        cmp              eax, 99
                                                                                        je    .Lx751_53
                        cmp              eax, 13
                                                                                        jne   .Lx751_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx751_53
                                                                                        jmp   .Lx751_46
.Lx751_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx751_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx751_53
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
                                                                                        jmp   .Lx751_51
.Lx751_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx751_47
                        cmp              eax, 99
                                                                                        je    .Lx751_47
                        cmp              eax, 13
                                                                                        jne   .Lx751_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx751_47
                                                                                        jmp   .Lx751_48
.Lx751_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx751_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx751_53
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
                                                                                        jmp   .Lx751_51
.Lx751_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx751_49
                        cmp              edx, 14
                                                                                        je    .Lx751_53
                                                                                        jmp   .Lx751_52
.Lx751_49:
                        cmp              edx, 14
                                                                                        je    .Lx751_52
                        cmp              ecx, 7
                                                                                        je    .Lx751_53
                        cmp              edx, 7
                                                                                        je    .Lx751_53
                        cmp              ecx, 6
                                                                                        jne   .Lx751_50
                        cmp              edx, 6
                                                                                        jne   .Lx751_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx751_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx751_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx751_51
                                                                                        jmp   .Lx751_52
.Lx751_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx751_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx751_53
.Lx751_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx751_54
.Lx751_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx751_54
.Lx751_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx751_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
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
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        add              rsp, 16
                                                                                        jmp   n336_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n337_call_builtin_prolog_α
.Lx754_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n337_call_builtin_prolog_α:
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
                                                                                        je    n340_call_builtin_prolog_α
                                                                                        jmp   n338_cut_α
n337_call_builtin_prolog_β:
                                                                                        jmp   n340_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n338_cut_α:
                                                                                        jmp   n339_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n339_move_label_α:
                        lea              rax, [rip + n340_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n340_call_builtin_prolog_α:
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
                                                                                        jmp   n341_var_ref_α
n340_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        add              rsp, 16
                                                                                        jmp   n342_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        add              rsp, 16
                                                                                        jmp   n343_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_prolog_α:
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
.Lx764_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx764_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx764_41
                        cmp              esi, 1
                                                                                        jne   .Lx764_55
                        mov              r8, rax
                                                                                        jmp   .Lx764_40
.Lx764_55:
                        cmp              esi, 2
                                                                                        jne   .Lx764_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx764_41
                        mov              r8, rax
                                                                                        jmp   .Lx764_40
.Lx764_56:
                        cmp              eax, 13
                                                                                        jne   .Lx764_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx764_41
                        cmp              rax, r8
                                                                                        je    .Lx764_41
                        mov              r8, rax
                                                                                        jmp   .Lx764_40
.Lx764_41:
                        lea              r9, [rbp + 352]
.Lx764_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx764_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx764_43
                        cmp              esi, 1
                                                                                        jne   .Lx764_57
                        mov              r9, rax
                                                                                        jmp   .Lx764_42
.Lx764_57:
                        cmp              esi, 2
                                                                                        jne   .Lx764_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx764_43
                        mov              r9, rax
                                                                                        jmp   .Lx764_42
.Lx764_58:
                        cmp              eax, 13
                                                                                        jne   .Lx764_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx764_43
                        cmp              rax, r9
                                                                                        je    .Lx764_43
                        mov              r9, rax
                                                                                        jmp   .Lx764_42
.Lx764_43:
                        cmp              r8, r9
                                                                                        je    .Lx764_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx764_44
                        cmp              eax, 99
                                                                                        je    .Lx764_44
                        cmp              eax, 13
                                                                                        jne   .Lx764_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx764_44
                                                                                        jmp   .Lx764_45
.Lx764_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx764_53
                        cmp              eax, 99
                                                                                        je    .Lx764_53
                        cmp              eax, 13
                                                                                        jne   .Lx764_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx764_53
                                                                                        jmp   .Lx764_46
.Lx764_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx764_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx764_53
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
                                                                                        jmp   .Lx764_51
.Lx764_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx764_47
                        cmp              eax, 99
                                                                                        je    .Lx764_47
                        cmp              eax, 13
                                                                                        jne   .Lx764_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx764_47
                                                                                        jmp   .Lx764_48
.Lx764_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx764_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx764_53
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
                                                                                        jmp   .Lx764_51
.Lx764_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx764_49
                        cmp              edx, 14
                                                                                        je    .Lx764_53
                                                                                        jmp   .Lx764_52
.Lx764_49:
                        cmp              edx, 14
                                                                                        je    .Lx764_52
                        cmp              ecx, 7
                                                                                        je    .Lx764_53
                        cmp              edx, 7
                                                                                        je    .Lx764_53
                        cmp              ecx, 6
                                                                                        jne   .Lx764_50
                        cmp              edx, 6
                                                                                        jne   .Lx764_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx764_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx764_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx764_51
                                                                                        jmp   .Lx764_52
.Lx764_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx764_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx764_53
.Lx764_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx764_54
.Lx764_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx764_54
.Lx764_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx764_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n352_call_builtin_prolog_α
                                                                                        jmp   n344_var_ref_α
n343_call_builtin_prolog_β:
                                                                                        jmp   n352_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        add              rsp, 16
                                                                                        jmp   n345_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        add              rsp, 16
                                                                                        jmp   n346_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n346_call_builtin_prolog_α:
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
.Lx769_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx769_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx769_41
                        cmp              esi, 1
                                                                                        jne   .Lx769_55
                        mov              r8, rax
                                                                                        jmp   .Lx769_40
.Lx769_55:
                        cmp              esi, 2
                                                                                        jne   .Lx769_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx769_41
                        mov              r8, rax
                                                                                        jmp   .Lx769_40
.Lx769_56:
                        cmp              eax, 13
                                                                                        jne   .Lx769_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx769_41
                        cmp              rax, r8
                                                                                        je    .Lx769_41
                        mov              r8, rax
                                                                                        jmp   .Lx769_40
.Lx769_41:
                        lea              r9, [rbp + 272]
.Lx769_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx769_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx769_43
                        cmp              esi, 1
                                                                                        jne   .Lx769_57
                        mov              r9, rax
                                                                                        jmp   .Lx769_42
.Lx769_57:
                        cmp              esi, 2
                                                                                        jne   .Lx769_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx769_43
                        mov              r9, rax
                                                                                        jmp   .Lx769_42
.Lx769_58:
                        cmp              eax, 13
                                                                                        jne   .Lx769_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx769_43
                        cmp              rax, r9
                                                                                        je    .Lx769_43
                        mov              r9, rax
                                                                                        jmp   .Lx769_42
.Lx769_43:
                        cmp              r8, r9
                                                                                        je    .Lx769_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx769_44
                        cmp              eax, 99
                                                                                        je    .Lx769_44
                        cmp              eax, 13
                                                                                        jne   .Lx769_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx769_44
                                                                                        jmp   .Lx769_45
.Lx769_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx769_53
                        cmp              eax, 99
                                                                                        je    .Lx769_53
                        cmp              eax, 13
                                                                                        jne   .Lx769_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx769_53
                                                                                        jmp   .Lx769_46
.Lx769_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx769_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx769_53
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
                                                                                        jmp   .Lx769_51
.Lx769_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx769_47
                        cmp              eax, 99
                                                                                        je    .Lx769_47
                        cmp              eax, 13
                                                                                        jne   .Lx769_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx769_47
                                                                                        jmp   .Lx769_48
.Lx769_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx769_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx769_53
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
                                                                                        jmp   .Lx769_51
.Lx769_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx769_49
                        cmp              edx, 14
                                                                                        je    .Lx769_53
                                                                                        jmp   .Lx769_52
.Lx769_49:
                        cmp              edx, 14
                                                                                        je    .Lx769_52
                        cmp              ecx, 7
                                                                                        je    .Lx769_53
                        cmp              edx, 7
                                                                                        je    .Lx769_53
                        cmp              ecx, 6
                                                                                        jne   .Lx769_50
                        cmp              edx, 6
                                                                                        jne   .Lx769_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx769_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx769_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx769_51
                                                                                        jmp   .Lx769_52
.Lx769_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx769_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx769_53
.Lx769_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx769_54
.Lx769_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx769_54
.Lx769_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx769_54:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n352_call_builtin_prolog_α
                                                                                        jmp   n347_var_ref_α
n346_call_builtin_prolog_β:
                                                                                        jmp   n352_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        add              rsp, 16
                                                                                        jmp   n348_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx772_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n349_call_builtin_prolog_α
.Lx772_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n349_call_builtin_prolog_α:
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
                                                                                        je    n352_call_builtin_prolog_α
                                                                                        jmp   n350_move_label_α
n349_call_builtin_prolog_β:
                                                                                        jmp   n352_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n350_move_label_α:
                        lea              rax, [rip + n352_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n351_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 80]
n351_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n352_call_builtin_prolog_α:
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
n352_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F3_β:
                                                                                        jmp   n351_disjunction_α
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
                        lea              rax, [rip + .Lx779_2]
                        mov              qword ptr [rbp + 8248], rax
                        lea              rax, [rip + .Lx779_3]
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
.Lx779_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -8272
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx779_3:
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
                        lea              rax, [rip + n782_suspend_β]
                        mov              qword ptr [rbp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n780_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx784_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx784_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx784_101
.Lx784_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx784_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_top$2F0_ω
                                                                                        jmp   n781_call_proc_staged_α
n780_call_builtin_prolog_β:
                                                                                        jmp   proc_top$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n781_call_proc_staged_α:
                        call             proc_divide10$2F0_dcα
                                                                                        jmp   .Lx786_2
.Lx786_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n783_call_builtin_prolog_α
                                                                                        jmp   n782_suspend_α
n781_call_proc_staged_β:
                                                                                        jmp   n783_call_builtin_prolog_α
.Lx786_0:
                        .quad            .Lx786_0_s
.Lx786_0_s:
                        .string          "divide10/0"
#-----------------------------------------------------------------------------------------------------------------------
n782_suspend_α:
                        lea              rax, [rip + n782_suspend_β]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_top$2F0_γ
n782_suspend_β:
                                                                                        jmp   n781_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n783_call_builtin_prolog_α:
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
n783_call_builtin_prolog_β:
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
n790_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx801_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx801_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx801_101
.Lx801_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx801_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n791_call_proc_staged_α
n790_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n791_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              edi, 2
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx803_1
                        lea              rcx, [rip + .Lx803_3]
                        lea              rdx, [rip + .Lx803_4]
                                                                                        jmp   rax
.Lx803_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx803_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx803_2
.Lx803_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx803_2
.Lx803_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx803_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx803_2
.Lx803_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx803_2
.Lx803_1:
                        call             rt_faildescr@PLT
.Lx803_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n794_lit_string_α
                                                                                        jmp   n792_lit_string_α
n791_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx803_0:
                        .quad            .Lx803_0_s
.Lx803_0_s:
                        .string          "top/0"
#-----------------------------------------------------------------------------------------------------------------------
n792_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Lx804_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n793_call_builtin_prolog_α
.Lx804_0:
                        .quad            .Lx804_0_s
.Lx804_0_s:
                        .string          "ok"
#-----------------------------------------------------------------------------------------------------------------------
n793_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn806:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn806]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n800_call_builtin_prolog_α
                                                                                        jmp   n796_lit_string_α
n793_call_builtin_prolog_β:
                                                                                        jmp   n800_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n794_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              dword ptr [rbp + 228], 6
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n795_call_builtin_prolog_α
.Lx807_0:
                        .quad            .Lx807_0_s
.Lx807_0_s:
                        .string          "failed"
#-----------------------------------------------------------------------------------------------------------------------
n795_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn809:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn809]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n800_call_builtin_prolog_α
                                                                                        jmp   n796_lit_string_α
n795_call_builtin_prolog_β:
                                                                                        jmp   n800_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n796_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Lx810_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n797_call_builtin_prolog_α
.Lx810_0:
                        .quad            .Lx810_0_s
.Lx810_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n797_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn812:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn812]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n800_call_builtin_prolog_α
                                                                                        jmp   n798_move_label_α
n797_call_builtin_prolog_β:
                                                                                        jmp   n800_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n798_move_label_α:
                        lea              rax, [rip + n800_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n799_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 16]
n799_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n800_call_builtin_prolog_α:
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
n800_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n799_disjunction_α
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
