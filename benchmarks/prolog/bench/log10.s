                        .intel_syntax    noprefix
                        .text
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
n0_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx28_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx28_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx28_101
.Lx28_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx28_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_log10$2F0_ω
                                                                                        jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              dword ptr [rbp + 980], 3
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n2_lit_string_α
.Lx29_0:
                        .quad            .Lx29_0_s
.Lx29_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              dword ptr [rbp + 900], 3
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n3_lit_string_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              dword ptr [rbp + 820], 3
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n4_lit_string_α
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              dword ptr [rbp + 740], 3
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n5_lit_string_α
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              dword ptr [rbp + 660], 3
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n6_lit_string_α
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              dword ptr [rbp + 580], 3
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n7_lit_string_α
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              dword ptr [rbp + 500], 3
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n8_lit_string_α
.Lx35_0:
                        .quad            .Lx35_0_s
.Lx35_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              dword ptr [rbp + 420], 3
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n9_lit_string_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              dword ptr [rbp + 340], 3
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n10_lit_string_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              dword ptr [rbp + 260], 3
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n11_lit_string_α
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              dword ptr [rbp + 180], 1
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n12_call_builtin_prolog_α
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
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
                                                                                        jmp   n13_call_builtin_prolog_α
n12_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
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
                                                                                        jmp   n14_call_builtin_prolog_α
n13_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
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
                                                                                        jmp   n15_call_builtin_prolog_α
n14_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
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
                                                                                        jmp   n16_call_builtin_prolog_α
n15_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
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
                                                                                        jmp   n17_call_builtin_prolog_α
n16_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
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
                                                                                        jmp   n18_call_builtin_prolog_α
n17_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
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
                                                                                        jmp   n19_call_builtin_prolog_α
n18_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
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
                                                                                        jmp   n20_call_builtin_prolog_α
n19_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
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
                                                                                        jmp   n21_call_builtin_prolog_α
n20_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
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
                                                                                        je    n27_call_builtin_prolog_α
                                                                                        jmp   n22_lit_string_α
n21_call_builtin_prolog_β:
                                                                                        jmp   n27_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n23_var_ref_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        add              rsp, 16
                                                                                        jmp   n24_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_proc_staged_α:
                        lea              rsi, [rbp + 912]
                        lea              rdx, [rbp + 992]
                        lea              rcx, [rbp + 1008]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx54_2
.Lx54_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n27_call_builtin_prolog_α
                                                                                        jmp   n25_move_label_α
n24_call_proc_staged_β:
                                                                                        jmp   n27_call_builtin_prolog_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n25_move_label_α:
                        lea              rax, [rip + n24_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_log10$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n26_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 16]
n26_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
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
n27_call_builtin_prolog_β:
                                                                                        jmp   proc_log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_log10$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_log10$2F0_β:
                                                                                        jmp   n26_disjunction_α
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
                        lea              rax, [rip + .Lx60_2]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rax, [rip + .Lx60_3]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rdi, rbp
                        mov              esi, 1024
                        mov              edx, 1056
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_log10$2F0_α_body
.Lx60_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1088
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx60_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1088
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
n61_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx339_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx339_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx339_101
.Lx339_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx339_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_d$2F3_ω
                                                                                        jmp   n62_var_ref_α
n61_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 8080], rax
                        mov              qword ptr [rbp + 8088], rdx
                        add              rsp, 16
                                                                                        jmp   n63_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:
                        mov              qword ptr [rbp + 8096], 6
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 8104], rax
                                                                                        jmp   n64_lit_string_α
.Lx342_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        mov              qword ptr [rbp + 8112], 1
                        mov              dword ptr [rbp + 8116], 1
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rbp + 8120], rax
                                                                                        jmp   n65_call_builtin_prolog_α
.Lx343_0:
                        .quad            .Lx343_0_s
.Lx343_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_prolog_α:
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
                                                                                        je    n92_var_ref_α
                                                                                        jmp   n66_var_ref_α
n65_call_builtin_prolog_β:
                                                                                        jmp   n92_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7872], rax
                        mov              qword ptr [rbp + 7880], rdx
                        add              rsp, 16
                                                                                        jmp   n67_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 8000], 1
                        mov              dword ptr [rbp + 8004], 1
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rbp + 8008], rax
                                                                                        jmp   n68_var_ref_α
.Lx347_0:
                        .quad            .Lx347_0_s
.Lx347_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7888], rax
                        mov              qword ptr [rbp + 7896], rdx
                        add              rsp, 16
                                                                                        jmp   n69_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7904], rax
                        mov              qword ptr [rbp + 7912], rdx
                        add              rsp, 16
                                                                                        jmp   n70_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
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
                                                                                        je    n91_call_builtin_prolog_α
                                                                                        jmp   n71_call_builtin_prolog_α
n70_call_builtin_prolog_β:
                                                                                        jmp   n91_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_prolog_α:
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
.Lx353_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx353_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx353_41
                        cmp              esi, 1
                                                                                        jne   .Lx353_55
                        mov              r8, rax
                                                                                        jmp   .Lx353_40
.Lx353_55:
                        cmp              esi, 2
                                                                                        jne   .Lx353_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx353_41
                        mov              r8, rax
                                                                                        jmp   .Lx353_40
.Lx353_56:
                        cmp              eax, 13
                                                                                        jne   .Lx353_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx353_41
                        cmp              rax, r8
                                                                                        je    .Lx353_41
                        mov              r8, rax
                                                                                        jmp   .Lx353_40
.Lx353_41:
                        lea              r9, [rbp + 7856]
.Lx353_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx353_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx353_43
                        cmp              esi, 1
                                                                                        jne   .Lx353_57
                        mov              r9, rax
                                                                                        jmp   .Lx353_42
.Lx353_57:
                        cmp              esi, 2
                                                                                        jne   .Lx353_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx353_43
                        mov              r9, rax
                                                                                        jmp   .Lx353_42
.Lx353_58:
                        cmp              eax, 13
                                                                                        jne   .Lx353_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx353_43
                        cmp              rax, r9
                                                                                        je    .Lx353_43
                        mov              r9, rax
                                                                                        jmp   .Lx353_42
.Lx353_43:
                        cmp              r8, r9
                                                                                        je    .Lx353_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx353_44
                        cmp              eax, 99
                                                                                        je    .Lx353_44
                        cmp              eax, 13
                                                                                        jne   .Lx353_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx353_44
                                                                                        jmp   .Lx353_45
.Lx353_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx353_53
                        cmp              eax, 99
                                                                                        je    .Lx353_53
                        cmp              eax, 13
                                                                                        jne   .Lx353_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx353_53
                                                                                        jmp   .Lx353_46
.Lx353_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx353_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx353_53
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
                                                                                        jmp   .Lx353_51
.Lx353_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx353_47
                        cmp              eax, 99
                                                                                        je    .Lx353_47
                        cmp              eax, 13
                                                                                        jne   .Lx353_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx353_47
                                                                                        jmp   .Lx353_48
.Lx353_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx353_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx353_53
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
                                                                                        jmp   .Lx353_51
.Lx353_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx353_49
                        cmp              edx, 14
                                                                                        je    .Lx353_53
                                                                                        jmp   .Lx353_52
.Lx353_49:
                        cmp              edx, 14
                                                                                        je    .Lx353_52
                        cmp              ecx, 7
                                                                                        je    .Lx353_53
                        cmp              edx, 7
                                                                                        je    .Lx353_53
                        cmp              ecx, 6
                                                                                        jne   .Lx353_50
                        cmp              edx, 6
                                                                                        jne   .Lx353_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx353_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx353_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx353_51
                                                                                        jmp   .Lx353_52
.Lx353_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx353_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx353_53
.Lx353_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx353_54
.Lx353_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx353_54
.Lx353_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx353_54:
                        mov              qword ptr [rbp + 7824], rax
                        mov              qword ptr [rbp + 7832], rdx
                        cmp              eax, 99
                                                                                        je    n91_call_builtin_prolog_α
                                                                                        jmp   n72_var_ref_α
n71_call_builtin_prolog_β:
                                                                                        jmp   n91_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7792], rax
                        mov              qword ptr [rbp + 7800], rdx
                        add              rsp, 16
                                                                                        jmp   n73_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7808], rax
                        mov              qword ptr [rbp + 7816], rdx
                        add              rsp, 16
                                                                                        jmp   n74_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_prolog_α:
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
.Lx358_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx358_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx358_41
                        cmp              esi, 1
                                                                                        jne   .Lx358_55
                        mov              r8, rax
                                                                                        jmp   .Lx358_40
.Lx358_55:
                        cmp              esi, 2
                                                                                        jne   .Lx358_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx358_41
                        mov              r8, rax
                                                                                        jmp   .Lx358_40
.Lx358_56:
                        cmp              eax, 13
                                                                                        jne   .Lx358_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx358_41
                        cmp              rax, r8
                                                                                        je    .Lx358_41
                        mov              r8, rax
                                                                                        jmp   .Lx358_40
.Lx358_41:
                        lea              r9, [rbp + 7776]
.Lx358_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx358_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx358_43
                        cmp              esi, 1
                                                                                        jne   .Lx358_57
                        mov              r9, rax
                                                                                        jmp   .Lx358_42
.Lx358_57:
                        cmp              esi, 2
                                                                                        jne   .Lx358_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx358_43
                        mov              r9, rax
                                                                                        jmp   .Lx358_42
.Lx358_58:
                        cmp              eax, 13
                                                                                        jne   .Lx358_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx358_43
                        cmp              rax, r9
                                                                                        je    .Lx358_43
                        mov              r9, rax
                                                                                        jmp   .Lx358_42
.Lx358_43:
                        cmp              r8, r9
                                                                                        je    .Lx358_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx358_44
                        cmp              eax, 99
                                                                                        je    .Lx358_44
                        cmp              eax, 13
                                                                                        jne   .Lx358_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx358_44
                                                                                        jmp   .Lx358_45
.Lx358_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx358_53
                        cmp              eax, 99
                                                                                        je    .Lx358_53
                        cmp              eax, 13
                                                                                        jne   .Lx358_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx358_53
                                                                                        jmp   .Lx358_46
.Lx358_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx358_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx358_53
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
                                                                                        jmp   .Lx358_51
.Lx358_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx358_47
                        cmp              eax, 99
                                                                                        je    .Lx358_47
                        cmp              eax, 13
                                                                                        jne   .Lx358_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx358_47
                                                                                        jmp   .Lx358_48
.Lx358_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx358_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx358_53
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
                                                                                        jmp   .Lx358_51
.Lx358_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx358_49
                        cmp              edx, 14
                                                                                        je    .Lx358_53
                                                                                        jmp   .Lx358_52
.Lx358_49:
                        cmp              edx, 14
                                                                                        je    .Lx358_52
                        cmp              ecx, 7
                                                                                        je    .Lx358_53
                        cmp              edx, 7
                                                                                        je    .Lx358_53
                        cmp              ecx, 6
                                                                                        jne   .Lx358_50
                        cmp              edx, 6
                                                                                        jne   .Lx358_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx358_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx358_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx358_51
                                                                                        jmp   .Lx358_52
.Lx358_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx358_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx358_53
.Lx358_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx358_54
.Lx358_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx358_54
.Lx358_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx358_54:
                        mov              qword ptr [rbp + 7744], rax
                        mov              qword ptr [rbp + 7752], rdx
                        cmp              eax, 99
                                                                                        je    n91_call_builtin_prolog_α
                                                                                        jmp   n75_var_ref_α
n74_call_builtin_prolog_β:
                                                                                        jmp   n91_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7600], rax
                        mov              qword ptr [rbp + 7608], rdx
                        add              rsp, 16
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 7728], 1
                        mov              dword ptr [rbp + 7732], 1
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rbp + 7736], rax
                                                                                        jmp   n77_var_ref_α
.Lx361_0:
                        .quad            .Lx361_0_s
.Lx361_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 7616], rax
                        mov              qword ptr [rbp + 7624], rdx
                        add              rsp, 16
                                                                                        jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 7632], rax
                        mov              qword ptr [rbp + 7640], rdx
                        add              rsp, 16
                                                                                        jmp   n79_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
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
                                                                                        je    n91_call_builtin_prolog_α
                                                                                        jmp   n80_call_builtin_prolog_α
n79_call_builtin_prolog_β:
                                                                                        jmp   n91_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_prolog_α:
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
                        lea              r9, [rbp + 7584]
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
                        mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                        cmp              eax, 99
                                                                                        je    n91_call_builtin_prolog_α
                                                                                        jmp   n81_cut_α
n80_call_builtin_prolog_β:
                                                                                        jmp   n91_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n81_cut_α:
                                                                                        jmp   n82_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7504], rax
                        mov              qword ptr [rbp + 7512], rdx
                        add              rsp, 16
                                                                                        jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx
                        add              rsp, 16
                                                                                        jmp   n84_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx
                        add              rsp, 16
                                                                                        jmp   n85_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_proc_staged_α:
                        lea              rsi, [rbp + 7504]
                        lea              rdx, [rbp + 7520]
                        lea              rcx, [rbp + 7536]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx376_2
.Lx376_2:
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                        cmp              eax, 99
                                                                                        je    n338_call_builtin_prolog_α
                                                                                        jmp   n86_var_ref_α
n85_call_proc_staged_β:
                                                                                        jmp   n338_call_builtin_prolog_α
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7376], rax
                        mov              qword ptr [rbp + 7384], rdx
                        add              rsp, 16
                                                                                        jmp   n87_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx
                        add              rsp, 16
                                                                                        jmp   n88_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 7408], rax
                        mov              qword ptr [rbp + 7416], rdx
                        add              rsp, 16
                                                                                        jmp   n89_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n89_call_proc_staged_α:
                        lea              rsi, [rbp + 7376]
                        lea              rdx, [rbp + 7392]
                        lea              rcx, [rbp + 7408]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx384_2
.Lx384_2:
                        mov              qword ptr [rbp + 7296], rax
                        mov              qword ptr [rbp + 7304], rdx
                        cmp              eax, 99
                                                                                        je    n85_call_proc_staged_β
                                                                                        jmp   n90_move_label_α
n89_call_proc_staged_β:
                                                                                        jmp   n85_call_proc_staged_β
.Lx384_0:
                        .quad            .Lx384_0_s
.Lx384_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n90_move_label_α:
                        lea              rax, [rip + n89_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_prolog_α:
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
                                                                                        jmp   n92_var_ref_α
n91_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7216], rax
                        mov              qword ptr [rbp + 7224], rdx
                        add              rsp, 16
                                                                                        jmp   n93_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:
                        mov              qword ptr [rbp + 7232], 6
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rbp + 7240], rax
                                                                                        jmp   n94_lit_string_α
.Lx390_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 7248], 1
                        mov              dword ptr [rbp + 7252], 1
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rbp + 7256], rax
                                                                                        jmp   n95_call_builtin_prolog_α
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_prolog_α:
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
                                                                                        je    n122_var_ref_α
                                                                                        jmp   n96_var_ref_α
n95_call_builtin_prolog_β:
                                                                                        jmp   n122_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7008], rax
                        mov              qword ptr [rbp + 7016], rdx
                        add              rsp, 16
                                                                                        jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 7136], 1
                        mov              dword ptr [rbp + 7140], 1
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rbp + 7144], rax
                                                                                        jmp   n98_var_ref_α
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 7024], rax
                        mov              qword ptr [rbp + 7032], rdx
                        add              rsp, 16
                                                                                        jmp   n99_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 7040], rax
                        mov              qword ptr [rbp + 7048], rdx
                        add              rsp, 16
                                                                                        jmp   n100_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_prolog_α:
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
                                                                                        je    n121_call_builtin_prolog_α
                                                                                        jmp   n101_call_builtin_prolog_α
n100_call_builtin_prolog_β:
                                                                                        jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_prolog_α:
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
.Lx401_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx401_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx401_41
                        cmp              rax, r8
                                                                                        je    .Lx401_41
                        mov              r8, rax
                                                                                        jmp   .Lx401_40
.Lx401_41:
                        lea              r9, [rbp + 6992]
.Lx401_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx401_44
                        cmp              eax, 13
                                                                                        jne   .Lx401_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx401_44
                                                                                        jmp   .Lx401_45
.Lx401_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx401_53
                        cmp              eax, 99
                                                                                        je    .Lx401_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx401_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx401_49
                        cmp              edx, 14
                                                                                        je    .Lx401_53
                                                                                        jmp   .Lx401_52
.Lx401_49:
                        cmp              edx, 14
                                                                                        je    .Lx401_52
                        cmp              ecx, 7
                                                                                        je    .Lx401_53
                        cmp              edx, 7
                                                                                        je    .Lx401_53
                        cmp              ecx, 6
                                                                                        jne   .Lx401_50
                        cmp              edx, 6
                                                                                        jne   .Lx401_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx401_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx401_54
.Lx401_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx401_54:
                        mov              qword ptr [rbp + 6960], rax
                        mov              qword ptr [rbp + 6968], rdx
                        cmp              eax, 99
                                                                                        je    n121_call_builtin_prolog_α
                                                                                        jmp   n102_var_ref_α
n101_call_builtin_prolog_β:
                                                                                        jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6928], rax
                        mov              qword ptr [rbp + 6936], rdx
                        add              rsp, 16
                                                                                        jmp   n103_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx
                        add              rsp, 16
                                                                                        jmp   n104_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_prolog_α:
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
.Lx406_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx406_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx406_41
                        cmp              rax, r8
                                                                                        je    .Lx406_41
                        mov              r8, rax
                                                                                        jmp   .Lx406_40
.Lx406_41:
                        lea              r9, [rbp + 6912]
.Lx406_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx406_44
                        cmp              eax, 13
                                                                                        jne   .Lx406_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx406_44
                                                                                        jmp   .Lx406_45
.Lx406_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx406_53
                        cmp              eax, 99
                                                                                        je    .Lx406_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx406_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx406_49
                        cmp              edx, 14
                                                                                        je    .Lx406_53
                                                                                        jmp   .Lx406_52
.Lx406_49:
                        cmp              edx, 14
                                                                                        je    .Lx406_52
                        cmp              ecx, 7
                                                                                        je    .Lx406_53
                        cmp              edx, 7
                                                                                        je    .Lx406_53
                        cmp              ecx, 6
                                                                                        jne   .Lx406_50
                        cmp              edx, 6
                                                                                        jne   .Lx406_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx406_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx406_54
.Lx406_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx406_54:
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx
                        cmp              eax, 99
                                                                                        je    n121_call_builtin_prolog_α
                                                                                        jmp   n105_var_ref_α
n104_call_builtin_prolog_β:
                                                                                        jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx
                        add              rsp, 16
                                                                                        jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 6864], 1
                        mov              dword ptr [rbp + 6868], 1
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rbp + 6872], rax
                                                                                        jmp   n107_var_ref_α
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 6752], rax
                        mov              qword ptr [rbp + 6760], rdx
                        add              rsp, 16
                                                                                        jmp   n108_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 6768], rax
                        mov              qword ptr [rbp + 6776], rdx
                        add              rsp, 16
                                                                                        jmp   n109_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
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
                                                                                        je    n121_call_builtin_prolog_α
                                                                                        jmp   n110_call_builtin_prolog_α
n109_call_builtin_prolog_β:
                                                                                        jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n110_call_builtin_prolog_α:
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
                        lea              r9, [rbp + 6720]
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
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                        cmp              eax, 99
                                                                                        je    n121_call_builtin_prolog_α
                                                                                        jmp   n111_cut_α
n110_call_builtin_prolog_β:
                                                                                        jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_cut_α:
                                                                                        jmp   n112_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 6640], rax
                        mov              qword ptr [rbp + 6648], rdx
                        add              rsp, 16
                                                                                        jmp   n113_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6656], rax
                        mov              qword ptr [rbp + 6664], rdx
                        add              rsp, 16
                                                                                        jmp   n114_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 6672], rax
                        mov              qword ptr [rbp + 6680], rdx
                        add              rsp, 16
                                                                                        jmp   n115_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_proc_staged_α:
                        lea              rsi, [rbp + 6640]
                        lea              rdx, [rbp + 6656]
                        lea              rcx, [rbp + 6672]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx424_2
.Lx424_2:
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx
                        cmp              eax, 99
                                                                                        je    n338_call_builtin_prolog_α
                                                                                        jmp   n116_var_ref_α
n115_call_proc_staged_β:
                                                                                        jmp   n338_call_builtin_prolog_α
.Lx424_0:
                        .quad            .Lx424_0_s
.Lx424_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx
                        add              rsp, 16
                                                                                        jmp   n117_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx
                        add              rsp, 16
                                                                                        jmp   n118_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx
                        add              rsp, 16
                                                                                        jmp   n119_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n119_call_proc_staged_α:
                        lea              rsi, [rbp + 6512]
                        lea              rdx, [rbp + 6528]
                        lea              rcx, [rbp + 6544]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx432_2
.Lx432_2:
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                        cmp              eax, 99
                                                                                        je    n115_call_proc_staged_β
                                                                                        jmp   n120_move_label_α
n119_call_proc_staged_β:
                                                                                        jmp   n115_call_proc_staged_β
.Lx432_0:
                        .quad            .Lx432_0_s
.Lx432_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n120_move_label_α:
                        lea              rax, [rip + n119_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
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
                                                                                        jmp   n122_var_ref_α
n121_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx
                        add              rsp, 16
                                                                                        jmp   n123_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:
                        mov              qword ptr [rbp + 6368], 6
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rbp + 6376], rax
                                                                                        jmp   n124_lit_string_α
.Lx438_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 6384], 1
                        mov              dword ptr [rbp + 6388], 1
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rbp + 6392], rax
                                                                                        jmp   n125_call_builtin_prolog_α
.Lx439_0:
                        .quad            .Lx439_0_s
.Lx439_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_prolog_α:
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
                                                                                        je    n158_var_ref_α
                                                                                        jmp   n126_var_ref_α
n125_call_builtin_prolog_β:
                                                                                        jmp   n158_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx
                        add              rsp, 16
                                                                                        jmp   n127_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 6272], 1
                        mov              dword ptr [rbp + 6276], 1
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rbp + 6280], rax
                                                                                        jmp   n128_var_ref_α
.Lx443_0:
                        .quad            .Lx443_0_s
.Lx443_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx
                        add              rsp, 16
                                                                                        jmp   n129_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 6176], rax
                        mov              qword ptr [rbp + 6184], rdx
                        add              rsp, 16
                                                                                        jmp   n130_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_prolog_α:
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
                                                                                        je    n157_call_builtin_prolog_α
                                                                                        jmp   n131_call_builtin_prolog_α
n130_call_builtin_prolog_β:
                                                                                        jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_prolog_α:
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
.Lx449_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx449_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_41
                        cmp              esi, 1
                                                                                        jne   .Lx449_55
                        mov              r8, rax
                                                                                        jmp   .Lx449_40
.Lx449_55:
                        cmp              esi, 2
                                                                                        jne   .Lx449_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx449_41
                        mov              r8, rax
                                                                                        jmp   .Lx449_40
.Lx449_56:
                        cmp              eax, 13
                                                                                        jne   .Lx449_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_41
                        cmp              rax, r8
                                                                                        je    .Lx449_41
                        mov              r8, rax
                                                                                        jmp   .Lx449_40
.Lx449_41:
                        lea              r9, [rbp + 6128]
.Lx449_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx449_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_43
                        cmp              esi, 1
                                                                                        jne   .Lx449_57
                        mov              r9, rax
                                                                                        jmp   .Lx449_42
.Lx449_57:
                        cmp              esi, 2
                                                                                        jne   .Lx449_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx449_43
                        mov              r9, rax
                                                                                        jmp   .Lx449_42
.Lx449_58:
                        cmp              eax, 13
                                                                                        jne   .Lx449_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_43
                        cmp              rax, r9
                                                                                        je    .Lx449_43
                        mov              r9, rax
                                                                                        jmp   .Lx449_42
.Lx449_43:
                        cmp              r8, r9
                                                                                        je    .Lx449_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx449_44
                        cmp              eax, 99
                                                                                        je    .Lx449_44
                        cmp              eax, 13
                                                                                        jne   .Lx449_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx449_44
                                                                                        jmp   .Lx449_45
.Lx449_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx449_53
                        cmp              eax, 99
                                                                                        je    .Lx449_53
                        cmp              eax, 13
                                                                                        jne   .Lx449_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx449_53
                                                                                        jmp   .Lx449_46
.Lx449_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx449_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx449_53
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
                                                                                        jmp   .Lx449_51
.Lx449_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx449_47
                        cmp              eax, 99
                                                                                        je    .Lx449_47
                        cmp              eax, 13
                                                                                        jne   .Lx449_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx449_47
                                                                                        jmp   .Lx449_48
.Lx449_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx449_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx449_53
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
                                                                                        jmp   .Lx449_51
.Lx449_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx449_49
                        cmp              edx, 14
                                                                                        je    .Lx449_53
                                                                                        jmp   .Lx449_52
.Lx449_49:
                        cmp              edx, 14
                                                                                        je    .Lx449_52
                        cmp              ecx, 7
                                                                                        je    .Lx449_53
                        cmp              edx, 7
                                                                                        je    .Lx449_53
                        cmp              ecx, 6
                                                                                        jne   .Lx449_50
                        cmp              edx, 6
                                                                                        jne   .Lx449_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx449_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx449_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx449_51
                                                                                        jmp   .Lx449_52
.Lx449_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx449_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx449_53
.Lx449_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx449_54
.Lx449_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx449_54
.Lx449_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx449_54:
                        mov              qword ptr [rbp + 6096], rax
                        mov              qword ptr [rbp + 6104], rdx
                        cmp              eax, 99
                                                                                        je    n157_call_builtin_prolog_α
                                                                                        jmp   n132_var_ref_α
n131_call_builtin_prolog_β:
                                                                                        jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx
                        add              rsp, 16
                                                                                        jmp   n133_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 6080], rax
                        mov              qword ptr [rbp + 6088], rdx
                        add              rsp, 16
                                                                                        jmp   n134_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_prolog_α:
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
.Lx454_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx454_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx454_41
                        cmp              esi, 1
                                                                                        jne   .Lx454_55
                        mov              r8, rax
                                                                                        jmp   .Lx454_40
.Lx454_55:
                        cmp              esi, 2
                                                                                        jne   .Lx454_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx454_41
                        mov              r8, rax
                                                                                        jmp   .Lx454_40
.Lx454_56:
                        cmp              eax, 13
                                                                                        jne   .Lx454_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx454_41
                        cmp              rax, r8
                                                                                        je    .Lx454_41
                        mov              r8, rax
                                                                                        jmp   .Lx454_40
.Lx454_41:
                        lea              r9, [rbp + 6048]
.Lx454_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx454_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx454_43
                        cmp              esi, 1
                                                                                        jne   .Lx454_57
                        mov              r9, rax
                                                                                        jmp   .Lx454_42
.Lx454_57:
                        cmp              esi, 2
                                                                                        jne   .Lx454_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx454_43
                        mov              r9, rax
                                                                                        jmp   .Lx454_42
.Lx454_58:
                        cmp              eax, 13
                                                                                        jne   .Lx454_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx454_43
                        cmp              rax, r9
                                                                                        je    .Lx454_43
                        mov              r9, rax
                                                                                        jmp   .Lx454_42
.Lx454_43:
                        cmp              r8, r9
                                                                                        je    .Lx454_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx454_44
                        cmp              eax, 99
                                                                                        je    .Lx454_44
                        cmp              eax, 13
                                                                                        jne   .Lx454_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx454_44
                                                                                        jmp   .Lx454_45
.Lx454_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx454_53
                        cmp              eax, 99
                                                                                        je    .Lx454_53
                        cmp              eax, 13
                                                                                        jne   .Lx454_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx454_53
                                                                                        jmp   .Lx454_46
.Lx454_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx454_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx454_53
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
                                                                                        jmp   .Lx454_51
.Lx454_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx454_47
                        cmp              eax, 99
                                                                                        je    .Lx454_47
                        cmp              eax, 13
                                                                                        jne   .Lx454_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx454_47
                                                                                        jmp   .Lx454_48
.Lx454_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx454_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx454_53
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
                                                                                        jmp   .Lx454_51
.Lx454_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx454_49
                        cmp              edx, 14
                                                                                        je    .Lx454_53
                                                                                        jmp   .Lx454_52
.Lx454_49:
                        cmp              edx, 14
                                                                                        je    .Lx454_52
                        cmp              ecx, 7
                                                                                        je    .Lx454_53
                        cmp              edx, 7
                                                                                        je    .Lx454_53
                        cmp              ecx, 6
                                                                                        jne   .Lx454_50
                        cmp              edx, 6
                                                                                        jne   .Lx454_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx454_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx454_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx454_51
                                                                                        jmp   .Lx454_52
.Lx454_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx454_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx454_53
.Lx454_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx454_54
.Lx454_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx454_54
.Lx454_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx454_54:
                        mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx
                        cmp              eax, 99
                                                                                        je    n157_call_builtin_prolog_α
                                                                                        jmp   n135_var_ref_α
n134_call_builtin_prolog_β:
                                                                                        jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                        add              rsp, 16
                                                                                        jmp   n136_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rbp + 6000], 1
                        mov              dword ptr [rbp + 6004], 1
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rbp + 6008], rax
                                                                                        jmp   n137_lit_string_α
.Lx457_0:
                        .quad            .Lx457_0_s
.Lx457_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rbp + 5776], 1
                        mov              dword ptr [rbp + 5780], 1
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rbp + 5784], rax
                                                                                        jmp   n138_var_ref_α
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                        add              rsp, 16
                                                                                        jmp   n139_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx
                        add              rsp, 16
                                                                                        jmp   n140_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_prolog_α:
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
                                                                                        jmp   n141_lit_string_α
n140_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rbp + 5904], 1
                        mov              dword ptr [rbp + 5908], 1
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rbp + 5912], rax
                                                                                        jmp   n142_var_ref_α
.Lx464_0:
                        .quad            .Lx464_0_s
.Lx464_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                        add              rsp, 16
                                                                                        jmp   n143_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 5808], rax
                        mov              qword ptr [rbp + 5816], rdx
                        add              rsp, 16
                                                                                        jmp   n144_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_prolog_α:
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
                                                                                        jmp   n145_call_builtin_prolog_α
n144_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n145_call_builtin_prolog_α:
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
                                                                                        je    n157_call_builtin_prolog_α
                                                                                        jmp   n146_call_builtin_prolog_α
n145_call_builtin_prolog_β:
                                                                                        jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_prolog_α:
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
.Lx471_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx471_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx471_41
                        cmp              esi, 1
                                                                                        jne   .Lx471_55
                        mov              r8, rax
                                                                                        jmp   .Lx471_40
.Lx471_55:
                        cmp              esi, 2
                                                                                        jne   .Lx471_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx471_41
                        mov              r8, rax
                                                                                        jmp   .Lx471_40
.Lx471_56:
                        cmp              eax, 13
                                                                                        jne   .Lx471_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx471_41
                        cmp              rax, r8
                                                                                        je    .Lx471_41
                        mov              r8, rax
                                                                                        jmp   .Lx471_40
.Lx471_41:
                        lea              r9, [rbp + 5632]
.Lx471_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx471_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx471_43
                        cmp              esi, 1
                                                                                        jne   .Lx471_57
                        mov              r9, rax
                                                                                        jmp   .Lx471_42
.Lx471_57:
                        cmp              esi, 2
                                                                                        jne   .Lx471_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx471_43
                        mov              r9, rax
                                                                                        jmp   .Lx471_42
.Lx471_58:
                        cmp              eax, 13
                                                                                        jne   .Lx471_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx471_43
                        cmp              rax, r9
                                                                                        je    .Lx471_43
                        mov              r9, rax
                                                                                        jmp   .Lx471_42
.Lx471_43:
                        cmp              r8, r9
                                                                                        je    .Lx471_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx471_44
                        cmp              eax, 99
                                                                                        je    .Lx471_44
                        cmp              eax, 13
                                                                                        jne   .Lx471_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx471_44
                                                                                        jmp   .Lx471_45
.Lx471_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx471_53
                        cmp              eax, 99
                                                                                        je    .Lx471_53
                        cmp              eax, 13
                                                                                        jne   .Lx471_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx471_53
                                                                                        jmp   .Lx471_46
.Lx471_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx471_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx471_53
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
                                                                                        jmp   .Lx471_51
.Lx471_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx471_47
                        cmp              eax, 99
                                                                                        je    .Lx471_47
                        cmp              eax, 13
                                                                                        jne   .Lx471_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx471_47
                                                                                        jmp   .Lx471_48
.Lx471_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx471_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx471_53
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
                                                                                        jmp   .Lx471_51
.Lx471_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx471_49
                        cmp              edx, 14
                                                                                        je    .Lx471_53
                                                                                        jmp   .Lx471_52
.Lx471_49:
                        cmp              edx, 14
                                                                                        je    .Lx471_52
                        cmp              ecx, 7
                                                                                        je    .Lx471_53
                        cmp              edx, 7
                                                                                        je    .Lx471_53
                        cmp              ecx, 6
                                                                                        jne   .Lx471_50
                        cmp              edx, 6
                                                                                        jne   .Lx471_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx471_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx471_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx471_51
                                                                                        jmp   .Lx471_52
.Lx471_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx471_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx471_53
.Lx471_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx471_54
.Lx471_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx471_54
.Lx471_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx471_54:
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                        cmp              eax, 99
                                                                                        je    n157_call_builtin_prolog_α
                                                                                        jmp   n147_cut_α
n146_call_builtin_prolog_β:
                                                                                        jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n147_cut_α:
                                                                                        jmp   n148_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx
                        add              rsp, 16
                                                                                        jmp   n149_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                        add              rsp, 16
                                                                                        jmp   n150_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx
                        add              rsp, 16
                                                                                        jmp   n151_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_proc_staged_α:
                        lea              rsi, [rbp + 5552]
                        lea              rdx, [rbp + 5568]
                        lea              rcx, [rbp + 5584]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx480_2
.Lx480_2:
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              eax, 99
                                                                                        je    n338_call_builtin_prolog_α
                                                                                        jmp   n152_var_ref_α
n151_call_proc_staged_β:
                                                                                        jmp   n338_call_builtin_prolog_α
.Lx480_0:
                        .quad            .Lx480_0_s
.Lx480_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx
                        add              rsp, 16
                                                                                        jmp   n153_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 5440], rax
                        mov              qword ptr [rbp + 5448], rdx
                        add              rsp, 16
                                                                                        jmp   n154_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx
                        add              rsp, 16
                                                                                        jmp   n155_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n155_call_proc_staged_α:
                        lea              rsi, [rbp + 5424]
                        lea              rdx, [rbp + 5440]
                        lea              rcx, [rbp + 5456]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx488_2
.Lx488_2:
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                        cmp              eax, 99
                                                                                        je    n151_call_proc_staged_β
                                                                                        jmp   n156_move_label_α
n155_call_proc_staged_β:
                                                                                        jmp   n151_call_proc_staged_β
.Lx488_0:
                        .quad            .Lx488_0_s
.Lx488_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n156_move_label_α:
                        lea              rax, [rip + n155_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n157_call_builtin_prolog_α:
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
                                                                                        jmp   n158_var_ref_α
n157_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx
                        add              rsp, 16
                                                                                        jmp   n159_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:
                        mov              qword ptr [rbp + 5280], 6
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rbp + 5288], rax
                                                                                        jmp   n160_lit_string_α
.Lx494_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:
                        mov              qword ptr [rbp + 5296], 1
                        mov              dword ptr [rbp + 5300], 1
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rbp + 5304], rax
                                                                                        jmp   n161_call_builtin_prolog_α
.Lx495_0:
                        .quad            .Lx495_0_s
.Lx495_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n161_call_builtin_prolog_α:
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
                                                                                        je    n200_var_ref_α
                                                                                        jmp   n162_var_ref_α
n161_call_builtin_prolog_β:
                                                                                        jmp   n200_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx
                        add              rsp, 16
                                                                                        jmp   n163_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rbp + 5184], 1
                        mov              dword ptr [rbp + 5188], 1
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rbp + 5192], rax
                                                                                        jmp   n164_var_ref_α
.Lx499_0:
                        .quad            .Lx499_0_s
.Lx499_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                        add              rsp, 16
                                                                                        jmp   n165_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx
                        add              rsp, 16
                                                                                        jmp   n166_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_prolog_α:
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
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n167_call_builtin_prolog_α
n166_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_builtin_prolog_α:
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
                        lea              r9, [rbp + 5040]
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
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                        cmp              eax, 99
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n168_var_ref_α
n167_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                        add              rsp, 16
                                                                                        jmp   n169_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                        add              rsp, 16
                                                                                        jmp   n170_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_prolog_α:
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
.Lx510_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx510_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx510_41
                        cmp              esi, 1
                                                                                        jne   .Lx510_55
                        mov              r8, rax
                                                                                        jmp   .Lx510_40
.Lx510_55:
                        cmp              esi, 2
                                                                                        jne   .Lx510_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx510_41
                        mov              r8, rax
                                                                                        jmp   .Lx510_40
.Lx510_56:
                        cmp              eax, 13
                                                                                        jne   .Lx510_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx510_41
                        cmp              rax, r8
                                                                                        je    .Lx510_41
                        mov              r8, rax
                                                                                        jmp   .Lx510_40
.Lx510_41:
                        lea              r9, [rbp + 4960]
.Lx510_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx510_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx510_43
                        cmp              esi, 1
                                                                                        jne   .Lx510_57
                        mov              r9, rax
                                                                                        jmp   .Lx510_42
.Lx510_57:
                        cmp              esi, 2
                                                                                        jne   .Lx510_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx510_43
                        mov              r9, rax
                                                                                        jmp   .Lx510_42
.Lx510_58:
                        cmp              eax, 13
                                                                                        jne   .Lx510_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx510_43
                        cmp              rax, r9
                                                                                        je    .Lx510_43
                        mov              r9, rax
                                                                                        jmp   .Lx510_42
.Lx510_43:
                        cmp              r8, r9
                                                                                        je    .Lx510_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx510_44
                        cmp              eax, 99
                                                                                        je    .Lx510_44
                        cmp              eax, 13
                                                                                        jne   .Lx510_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx510_44
                                                                                        jmp   .Lx510_45
.Lx510_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx510_53
                        cmp              eax, 99
                                                                                        je    .Lx510_53
                        cmp              eax, 13
                                                                                        jne   .Lx510_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx510_53
                                                                                        jmp   .Lx510_46
.Lx510_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx510_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx510_53
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
                                                                                        jmp   .Lx510_51
.Lx510_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx510_47
                        cmp              eax, 99
                                                                                        je    .Lx510_47
                        cmp              eax, 13
                                                                                        jne   .Lx510_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx510_47
                                                                                        jmp   .Lx510_48
.Lx510_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx510_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx510_53
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
                                                                                        jmp   .Lx510_51
.Lx510_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx510_49
                        cmp              edx, 14
                                                                                        je    .Lx510_53
                                                                                        jmp   .Lx510_52
.Lx510_49:
                        cmp              edx, 14
                                                                                        je    .Lx510_52
                        cmp              ecx, 7
                                                                                        je    .Lx510_53
                        cmp              edx, 7
                                                                                        je    .Lx510_53
                        cmp              ecx, 6
                                                                                        jne   .Lx510_50
                        cmp              edx, 6
                                                                                        jne   .Lx510_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx510_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx510_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx510_51
                                                                                        jmp   .Lx510_52
.Lx510_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx510_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx510_53
.Lx510_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx510_54
.Lx510_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx510_54
.Lx510_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx510_54:
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                        cmp              eax, 99
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n171_var_ref_α
n170_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                        add              rsp, 16
                                                                                        jmp   n172_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:
                        mov              qword ptr [rbp + 4912], 1
                        mov              dword ptr [rbp + 4916], 1
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rbp + 4920], rax
                                                                                        jmp   n173_lit_string_α
.Lx513_0:
                        .quad            .Lx513_0_s
.Lx513_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:
                        mov              qword ptr [rbp + 4688], 1
                        mov              dword ptr [rbp + 4692], 1
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rbp + 4696], rax
                                                                                        jmp   n174_lit_string_α
.Lx514_0:
                        .quad            .Lx514_0_s
.Lx514_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rbp + 4464], 1
                        mov              dword ptr [rbp + 4468], 1
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n175_var_ref_α
.Lx515_0:
                        .quad            .Lx515_0_s
.Lx515_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        add              rsp, 16
                                                                                        jmp   n176_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                        add              rsp, 16
                                                                                        jmp   n177_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_builtin_prolog_α:
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
                                                                                        jmp   n178_lit_string_α
n177_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:
                        mov              qword ptr [rbp + 4592], 1
                        mov              dword ptr [rbp + 4596], 1
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n179_var_ref_α
.Lx521_0:
                        .quad            .Lx521_0_s
.Lx521_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                        add              rsp, 16
                                                                                        jmp   n180_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                        add              rsp, 16
                                                                                        jmp   n181_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_prolog_α:
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
                                                                                        jmp   n182_call_builtin_prolog_α
n181_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n182_call_builtin_prolog_α:
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
                                                                                        jmp   n183_lit_string_α
n182_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:
                        mov              qword ptr [rbp + 4816], 1
                        mov              dword ptr [rbp + 4820], 1
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rbp + 4824], rax
                                                                                        jmp   n184_var_ref_α
.Lx528_0:
                        .quad            .Lx528_0_s
.Lx528_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        add              rsp, 16
                                                                                        jmp   n185_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_integer_α:
                        mov              qword ptr [rbp + 4720], 6
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rbp + 4728], rax
                                                                                        jmp   n186_call_builtin_prolog_α
.Lx531_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n186_call_builtin_prolog_α:
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
                                                                                        jmp   n187_call_builtin_prolog_α
n186_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_prolog_α:
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
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n188_call_builtin_prolog_α
n187_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_prolog_α:
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
.Lx534_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx534_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx534_41
                        cmp              esi, 1
                                                                                        jne   .Lx534_55
                        mov              r8, rax
                                                                                        jmp   .Lx534_40
.Lx534_55:
                        cmp              esi, 2
                                                                                        jne   .Lx534_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx534_41
                        mov              r8, rax
                                                                                        jmp   .Lx534_40
.Lx534_56:
                        cmp              eax, 13
                                                                                        jne   .Lx534_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx534_41
                        cmp              rax, r8
                                                                                        je    .Lx534_41
                        mov              r8, rax
                                                                                        jmp   .Lx534_40
.Lx534_41:
                        lea              r9, [rbp + 4320]
.Lx534_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx534_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx534_43
                        cmp              esi, 1
                                                                                        jne   .Lx534_57
                        mov              r9, rax
                                                                                        jmp   .Lx534_42
.Lx534_57:
                        cmp              esi, 2
                                                                                        jne   .Lx534_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx534_43
                        mov              r9, rax
                                                                                        jmp   .Lx534_42
.Lx534_58:
                        cmp              eax, 13
                                                                                        jne   .Lx534_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx534_43
                        cmp              rax, r9
                                                                                        je    .Lx534_43
                        mov              r9, rax
                                                                                        jmp   .Lx534_42
.Lx534_43:
                        cmp              r8, r9
                                                                                        je    .Lx534_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx534_44
                        cmp              eax, 99
                                                                                        je    .Lx534_44
                        cmp              eax, 13
                                                                                        jne   .Lx534_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx534_44
                                                                                        jmp   .Lx534_45
.Lx534_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx534_53
                        cmp              eax, 99
                                                                                        je    .Lx534_53
                        cmp              eax, 13
                                                                                        jne   .Lx534_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx534_53
                                                                                        jmp   .Lx534_46
.Lx534_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx534_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx534_53
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
                                                                                        jmp   .Lx534_51
.Lx534_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx534_47
                        cmp              eax, 99
                                                                                        je    .Lx534_47
                        cmp              eax, 13
                                                                                        jne   .Lx534_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx534_47
                                                                                        jmp   .Lx534_48
.Lx534_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx534_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx534_53
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
                                                                                        jmp   .Lx534_51
.Lx534_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx534_49
                        cmp              edx, 14
                                                                                        je    .Lx534_53
                                                                                        jmp   .Lx534_52
.Lx534_49:
                        cmp              edx, 14
                                                                                        je    .Lx534_52
                        cmp              ecx, 7
                                                                                        je    .Lx534_53
                        cmp              edx, 7
                                                                                        je    .Lx534_53
                        cmp              ecx, 6
                                                                                        jne   .Lx534_50
                        cmp              edx, 6
                                                                                        jne   .Lx534_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx534_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx534_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx534_51
                                                                                        jmp   .Lx534_52
.Lx534_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx534_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx534_53
.Lx534_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx534_54
.Lx534_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx534_54
.Lx534_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx534_54:
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              eax, 99
                                                                                        je    n199_call_builtin_prolog_α
                                                                                        jmp   n189_cut_α
n188_call_builtin_prolog_β:
                                                                                        jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n189_cut_α:
                                                                                        jmp   n190_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                        add              rsp, 16
                                                                                        jmp   n191_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n191_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        add              rsp, 16
                                                                                        jmp   n192_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        add              rsp, 16
                                                                                        jmp   n193_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n193_call_proc_staged_α:
                        lea              rsi, [rbp + 4240]
                        lea              rdx, [rbp + 4256]
                        lea              rcx, [rbp + 4272]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx543_2
.Lx543_2:
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              eax, 99
                                                                                        je    n338_call_builtin_prolog_α
                                                                                        jmp   n194_var_ref_α
n193_call_proc_staged_β:
                                                                                        jmp   n338_call_builtin_prolog_α
.Lx543_0:
                        .quad            .Lx543_0_s
.Lx543_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                        add              rsp, 16
                                                                                        jmp   n195_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                        add              rsp, 16
                                                                                        jmp   n196_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        add              rsp, 16
                                                                                        jmp   n197_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n197_call_proc_staged_α:
                        lea              rsi, [rbp + 4112]
                        lea              rdx, [rbp + 4128]
                        lea              rcx, [rbp + 4144]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx551_2
.Lx551_2:
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        cmp              eax, 99
                                                                                        je    n193_call_proc_staged_β
                                                                                        jmp   n198_move_label_α
n197_call_proc_staged_β:
                                                                                        jmp   n193_call_proc_staged_β
.Lx551_0:
                        .quad            .Lx551_0_s
.Lx551_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n198_move_label_α:
                        lea              rax, [rip + n197_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_prolog_α:
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
                                                                                        jmp   n200_var_ref_α
n199_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        add              rsp, 16
                                                                                        jmp   n201_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:
                        mov              qword ptr [rbp + 3968], 6
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n202_lit_string_α
.Lx557_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rbp + 3984], 1
                        mov              dword ptr [rbp + 3988], 1
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n203_call_builtin_prolog_α
.Lx558_0:
                        .quad            .Lx558_0_s
.Lx558_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n203_call_builtin_prolog_α:
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
                                                                                        je    n239_var_ref_α
                                                                                        jmp   n204_var_ref_α
n203_call_builtin_prolog_β:
                                                                                        jmp   n239_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        add              rsp, 16
                                                                                        jmp   n205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:
                        mov              qword ptr [rbp + 3872], 1
                        mov              dword ptr [rbp + 3876], 1
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n206_var_ref_α
.Lx562_0:
                        .quad            .Lx562_0_s
.Lx562_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                        add              rsp, 16
                                                                                        jmp   n207_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        add              rsp, 16
                                                                                        jmp   n208_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_builtin_prolog_α:
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
                                                                                        je    n238_call_builtin_prolog_α
                                                                                        jmp   n209_call_builtin_prolog_α
n208_call_builtin_prolog_β:
                                                                                        jmp   n238_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_prolog_α:
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
.Lx568_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx568_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_41
                        cmp              esi, 1
                                                                                        jne   .Lx568_55
                        mov              r8, rax
                                                                                        jmp   .Lx568_40
.Lx568_55:
                        cmp              esi, 2
                                                                                        jne   .Lx568_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx568_41
                        mov              r8, rax
                                                                                        jmp   .Lx568_40
.Lx568_56:
                        cmp              eax, 13
                                                                                        jne   .Lx568_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_41
                        cmp              rax, r8
                                                                                        je    .Lx568_41
                        mov              r8, rax
                                                                                        jmp   .Lx568_40
.Lx568_41:
                        lea              r9, [rbp + 3728]
.Lx568_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx568_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_43
                        cmp              esi, 1
                                                                                        jne   .Lx568_57
                        mov              r9, rax
                                                                                        jmp   .Lx568_42
.Lx568_57:
                        cmp              esi, 2
                                                                                        jne   .Lx568_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx568_43
                        mov              r9, rax
                                                                                        jmp   .Lx568_42
.Lx568_58:
                        cmp              eax, 13
                                                                                        jne   .Lx568_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_43
                        cmp              rax, r9
                                                                                        je    .Lx568_43
                        mov              r9, rax
                                                                                        jmp   .Lx568_42
.Lx568_43:
                        cmp              r8, r9
                                                                                        je    .Lx568_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx568_44
                        cmp              eax, 99
                                                                                        je    .Lx568_44
                        cmp              eax, 13
                                                                                        jne   .Lx568_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx568_44
                                                                                        jmp   .Lx568_45
.Lx568_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx568_53
                        cmp              eax, 99
                                                                                        je    .Lx568_53
                        cmp              eax, 13
                                                                                        jne   .Lx568_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx568_53
                                                                                        jmp   .Lx568_46
.Lx568_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx568_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx568_53
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
                                                                                        jmp   .Lx568_51
.Lx568_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx568_47
                        cmp              eax, 99
                                                                                        je    .Lx568_47
                        cmp              eax, 13
                                                                                        jne   .Lx568_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx568_47
                                                                                        jmp   .Lx568_48
.Lx568_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx568_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx568_53
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
                                                                                        jmp   .Lx568_51
.Lx568_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx568_49
                        cmp              edx, 14
                                                                                        je    .Lx568_53
                                                                                        jmp   .Lx568_52
.Lx568_49:
                        cmp              edx, 14
                                                                                        je    .Lx568_52
                        cmp              ecx, 7
                                                                                        je    .Lx568_53
                        cmp              edx, 7
                                                                                        je    .Lx568_53
                        cmp              ecx, 6
                                                                                        jne   .Lx568_50
                        cmp              edx, 6
                                                                                        jne   .Lx568_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx568_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx568_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx568_51
                                                                                        jmp   .Lx568_52
.Lx568_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx568_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx568_53
.Lx568_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx568_54
.Lx568_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx568_54
.Lx568_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx568_54:
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              eax, 99
                                                                                        je    n238_call_builtin_prolog_α
                                                                                        jmp   n210_var_ref_α
n209_call_builtin_prolog_β:
                                                                                        jmp   n238_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        add              rsp, 16
                                                                                        jmp   n211_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        add              rsp, 16
                                                                                        jmp   n212_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n212_call_builtin_prolog_α:
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
.Lx573_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx573_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx573_41
                        cmp              esi, 1
                                                                                        jne   .Lx573_55
                        mov              r8, rax
                                                                                        jmp   .Lx573_40
.Lx573_55:
                        cmp              esi, 2
                                                                                        jne   .Lx573_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx573_41
                        mov              r8, rax
                                                                                        jmp   .Lx573_40
.Lx573_56:
                        cmp              eax, 13
                                                                                        jne   .Lx573_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx573_41
                        cmp              rax, r8
                                                                                        je    .Lx573_41
                        mov              r8, rax
                                                                                        jmp   .Lx573_40
.Lx573_41:
                        lea              r9, [rbp + 3648]
.Lx573_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx573_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx573_43
                        cmp              esi, 1
                                                                                        jne   .Lx573_57
                        mov              r9, rax
                                                                                        jmp   .Lx573_42
.Lx573_57:
                        cmp              esi, 2
                                                                                        jne   .Lx573_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx573_43
                        mov              r9, rax
                                                                                        jmp   .Lx573_42
.Lx573_58:
                        cmp              eax, 13
                                                                                        jne   .Lx573_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx573_43
                        cmp              rax, r9
                                                                                        je    .Lx573_43
                        mov              r9, rax
                                                                                        jmp   .Lx573_42
.Lx573_43:
                        cmp              r8, r9
                                                                                        je    .Lx573_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx573_44
                        cmp              eax, 99
                                                                                        je    .Lx573_44
                        cmp              eax, 13
                                                                                        jne   .Lx573_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx573_44
                                                                                        jmp   .Lx573_45
.Lx573_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx573_53
                        cmp              eax, 99
                                                                                        je    .Lx573_53
                        cmp              eax, 13
                                                                                        jne   .Lx573_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx573_53
                                                                                        jmp   .Lx573_46
.Lx573_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx573_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx573_53
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
                                                                                        jmp   .Lx573_51
.Lx573_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx573_47
                        cmp              eax, 99
                                                                                        je    .Lx573_47
                        cmp              eax, 13
                                                                                        jne   .Lx573_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx573_47
                                                                                        jmp   .Lx573_48
.Lx573_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx573_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx573_53
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
                                                                                        jmp   .Lx573_51
.Lx573_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx573_49
                        cmp              edx, 14
                                                                                        je    .Lx573_53
                                                                                        jmp   .Lx573_52
.Lx573_49:
                        cmp              edx, 14
                                                                                        je    .Lx573_52
                        cmp              ecx, 7
                                                                                        je    .Lx573_53
                        cmp              edx, 7
                                                                                        je    .Lx573_53
                        cmp              ecx, 6
                                                                                        jne   .Lx573_50
                        cmp              edx, 6
                                                                                        jne   .Lx573_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx573_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx573_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx573_51
                                                                                        jmp   .Lx573_52
.Lx573_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx573_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx573_53
.Lx573_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx573_54
.Lx573_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx573_54
.Lx573_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx573_54:
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 99
                                                                                        je    n238_call_builtin_prolog_α
                                                                                        jmp   n213_var_ref_α
n212_call_builtin_prolog_β:
                                                                                        jmp   n238_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        add              rsp, 16
                                                                                        jmp   n214_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              dword ptr [rbp + 3604], 1
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n215_lit_string_α
.Lx576_0:
                        .quad            .Lx576_0_s
.Lx576_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        mov              qword ptr [rbp + 3376], 1
                        mov              dword ptr [rbp + 3380], 1
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n216_var_ref_α
.Lx577_0:
                        .quad            .Lx577_0_s
.Lx577_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        add              rsp, 16
                                                                                        jmp   n217_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                        add              rsp, 16
                                                                                        jmp   n218_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n218_call_builtin_prolog_α:
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
                                                                                        jmp   n219_lit_string_α
n218_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rbp + 3504], 1
                        mov              dword ptr [rbp + 3508], 1
                        mov              rax, qword ptr [rip + .Lx583_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n220_var_ref_α
.Lx583_0:
                        .quad            .Lx583_0_s
.Lx583_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        add              rsp, 16
                                                                                        jmp   n221_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        add              rsp, 16
                                                                                        jmp   n222_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n222_call_builtin_prolog_α:
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
                                                                                        jmp   n223_call_builtin_prolog_α
n222_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n223_call_builtin_prolog_α:
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
                                                                                        je    n238_call_builtin_prolog_α
                                                                                        jmp   n224_call_builtin_prolog_α
n223_call_builtin_prolog_β:
                                                                                        jmp   n238_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n224_call_builtin_prolog_α:
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
.Lx590_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx590_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx590_41
                        cmp              esi, 1
                                                                                        jne   .Lx590_55
                        mov              r8, rax
                                                                                        jmp   .Lx590_40
.Lx590_55:
                        cmp              esi, 2
                                                                                        jne   .Lx590_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx590_41
                        mov              r8, rax
                                                                                        jmp   .Lx590_40
.Lx590_56:
                        cmp              eax, 13
                                                                                        jne   .Lx590_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx590_41
                        cmp              rax, r8
                                                                                        je    .Lx590_41
                        mov              r8, rax
                                                                                        jmp   .Lx590_40
.Lx590_41:
                        lea              r9, [rbp + 3232]
.Lx590_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx590_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx590_43
                        cmp              esi, 1
                                                                                        jne   .Lx590_57
                        mov              r9, rax
                                                                                        jmp   .Lx590_42
.Lx590_57:
                        cmp              esi, 2
                                                                                        jne   .Lx590_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx590_43
                        mov              r9, rax
                                                                                        jmp   .Lx590_42
.Lx590_58:
                        cmp              eax, 13
                                                                                        jne   .Lx590_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx590_43
                        cmp              rax, r9
                                                                                        je    .Lx590_43
                        mov              r9, rax
                                                                                        jmp   .Lx590_42
.Lx590_43:
                        cmp              r8, r9
                                                                                        je    .Lx590_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx590_44
                        cmp              eax, 99
                                                                                        je    .Lx590_44
                        cmp              eax, 13
                                                                                        jne   .Lx590_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx590_44
                                                                                        jmp   .Lx590_45
.Lx590_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx590_53
                        cmp              eax, 99
                                                                                        je    .Lx590_53
                        cmp              eax, 13
                                                                                        jne   .Lx590_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx590_53
                                                                                        jmp   .Lx590_46
.Lx590_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx590_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx590_53
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
                                                                                        jmp   .Lx590_51
.Lx590_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx590_47
                        cmp              eax, 99
                                                                                        je    .Lx590_47
                        cmp              eax, 13
                                                                                        jne   .Lx590_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx590_47
                                                                                        jmp   .Lx590_48
.Lx590_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx590_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx590_53
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
                                                                                        jmp   .Lx590_51
.Lx590_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx590_49
                        cmp              edx, 14
                                                                                        je    .Lx590_53
                                                                                        jmp   .Lx590_52
.Lx590_49:
                        cmp              edx, 14
                                                                                        je    .Lx590_52
                        cmp              ecx, 7
                                                                                        je    .Lx590_53
                        cmp              edx, 7
                                                                                        je    .Lx590_53
                        cmp              ecx, 6
                                                                                        jne   .Lx590_50
                        cmp              edx, 6
                                                                                        jne   .Lx590_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx590_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx590_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx590_51
                                                                                        jmp   .Lx590_52
.Lx590_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx590_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx590_53
.Lx590_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx590_54
.Lx590_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx590_54
.Lx590_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx590_54:
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 99
                                                                                        je    n238_call_builtin_prolog_α
                                                                                        jmp   n225_cut_α
n224_call_builtin_prolog_β:
                                                                                        jmp   n238_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n225_cut_α:
                                                                                        jmp   n226_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        add              rsp, 16
                                                                                        jmp   n227_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n227_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3176], rax
                        .section         .rodata
.Lrkfn595:              .string          "$tt_integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn595]
                        lea              rsi, [rbp + 3168]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 99
                                                                                        je    n338_call_builtin_prolog_α
                                                                                        jmp   n228_var_ref_α
n227_call_builtin_prolog_β:
                                                                                        jmp   n338_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8208]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        add              rsp, 16
                                                                                        jmp   n229_var_α
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:
                        mov              rax, qword ptr [rbp + 8128]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 8136]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n230_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:
                        mov              qword ptr [rbp + 3136], 6
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n231_call_builtin_prolog_α
.Lx600_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n231_call_builtin_prolog_α:
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
                                                                                        je    n338_call_builtin_prolog_α
                                                                                        jmp   n232_call_builtin_prolog_α
n231_call_builtin_prolog_β:
                                                                                        jmp   n338_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_prolog_α:
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
                                                                                        je    n338_call_builtin_prolog_α
                                                                                        jmp   n233_var_ref_α
n232_call_builtin_prolog_β:
                                                                                        jmp   n338_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        add              rsp, 16
                                                                                        jmp   n234_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        add              rsp, 16
                                                                                        jmp   n235_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8192]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        add              rsp, 16
                                                                                        jmp   n236_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n236_call_proc_staged_α:
                        lea              rsi, [rbp + 2944]
                        lea              rdx, [rbp + 2960]
                        lea              rcx, [rbp + 2976]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx610_2
.Lx610_2:
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n338_call_builtin_prolog_α
                                                                                        jmp   n237_move_label_α
n236_call_proc_staged_β:
                                                                                        jmp   n338_call_builtin_prolog_α
.Lx610_0:
                        .quad            .Lx610_0_s
.Lx610_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n237_move_label_α:
                        lea              rax, [rip + n236_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_prolog_α:
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
                                                                                        jmp   n239_var_ref_α
n238_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        add              rsp, 16
                                                                                        jmp   n240_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_integer_α:
                        mov              qword ptr [rbp + 2800], 6
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n241_lit_string_α
.Lx616_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:
                        mov              qword ptr [rbp + 2816], 1
                        mov              dword ptr [rbp + 2820], 1
                        mov              rax, qword ptr [rip + .Lx617_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n242_call_builtin_prolog_α
.Lx617_0:
                        .quad            .Lx617_0_s
.Lx617_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_prolog_α:
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
                                                                                        je    n263_var_ref_α
                                                                                        jmp   n243_var_ref_α
n242_call_builtin_prolog_β:
                                                                                        jmp   n263_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        add              rsp, 16
                                                                                        jmp   n244_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              dword ptr [rbp + 2708], 1
                        mov              rax, qword ptr [rip + .Lx621_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n245_var_ref_α
.Lx621_0:
                        .quad            .Lx621_0_s
.Lx621_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        add              rsp, 16
                                                                                        jmp   n246_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_prolog_α:
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
                                                                                        je    n262_call_builtin_prolog_α
                                                                                        jmp   n247_call_builtin_prolog_α
n246_call_builtin_prolog_β:
                                                                                        jmp   n262_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n247_call_builtin_prolog_α:
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
.Lx625_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx625_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx625_41
                        cmp              esi, 1
                                                                                        jne   .Lx625_55
                        mov              r8, rax
                                                                                        jmp   .Lx625_40
.Lx625_55:
                        cmp              esi, 2
                                                                                        jne   .Lx625_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx625_41
                        mov              r8, rax
                                                                                        jmp   .Lx625_40
.Lx625_56:
                        cmp              eax, 13
                                                                                        jne   .Lx625_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx625_41
                        cmp              rax, r8
                                                                                        je    .Lx625_41
                        mov              r8, rax
                                                                                        jmp   .Lx625_40
.Lx625_41:
                        lea              r9, [rbp + 2592]
.Lx625_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx625_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx625_43
                        cmp              esi, 1
                                                                                        jne   .Lx625_57
                        mov              r9, rax
                                                                                        jmp   .Lx625_42
.Lx625_57:
                        cmp              esi, 2
                                                                                        jne   .Lx625_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx625_43
                        mov              r9, rax
                                                                                        jmp   .Lx625_42
.Lx625_58:
                        cmp              eax, 13
                                                                                        jne   .Lx625_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx625_43
                        cmp              rax, r9
                                                                                        je    .Lx625_43
                        mov              r9, rax
                                                                                        jmp   .Lx625_42
.Lx625_43:
                        cmp              r8, r9
                                                                                        je    .Lx625_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx625_44
                        cmp              eax, 99
                                                                                        je    .Lx625_44
                        cmp              eax, 13
                                                                                        jne   .Lx625_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx625_44
                                                                                        jmp   .Lx625_45
.Lx625_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx625_53
                        cmp              eax, 99
                                                                                        je    .Lx625_53
                        cmp              eax, 13
                                                                                        jne   .Lx625_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx625_53
                                                                                        jmp   .Lx625_46
.Lx625_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx625_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx625_53
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
                                                                                        jmp   .Lx625_51
.Lx625_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx625_47
                        cmp              eax, 99
                                                                                        je    .Lx625_47
                        cmp              eax, 13
                                                                                        jne   .Lx625_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx625_47
                                                                                        jmp   .Lx625_48
.Lx625_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx625_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx625_53
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
                                                                                        jmp   .Lx625_51
.Lx625_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx625_49
                        cmp              edx, 14
                                                                                        je    .Lx625_53
                                                                                        jmp   .Lx625_52
.Lx625_49:
                        cmp              edx, 14
                                                                                        je    .Lx625_52
                        cmp              ecx, 7
                                                                                        je    .Lx625_53
                        cmp              edx, 7
                                                                                        je    .Lx625_53
                        cmp              ecx, 6
                                                                                        jne   .Lx625_50
                        cmp              edx, 6
                                                                                        jne   .Lx625_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx625_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx625_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx625_51
                                                                                        jmp   .Lx625_52
.Lx625_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx625_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx625_53
.Lx625_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx625_54
.Lx625_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx625_54
.Lx625_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx625_54:
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    n262_call_builtin_prolog_α
                                                                                        jmp   n248_var_ref_α
n247_call_builtin_prolog_β:
                                                                                        jmp   n262_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        add              rsp, 16
                                                                                        jmp   n249_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        add              rsp, 16
                                                                                        jmp   n250_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n250_call_builtin_prolog_α:
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
.Lx630_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx630_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx630_41
                        cmp              esi, 1
                                                                                        jne   .Lx630_55
                        mov              r8, rax
                                                                                        jmp   .Lx630_40
.Lx630_55:
                        cmp              esi, 2
                                                                                        jne   .Lx630_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx630_41
                        mov              r8, rax
                                                                                        jmp   .Lx630_40
.Lx630_56:
                        cmp              eax, 13
                                                                                        jne   .Lx630_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx630_41
                        cmp              rax, r8
                                                                                        je    .Lx630_41
                        mov              r8, rax
                                                                                        jmp   .Lx630_40
.Lx630_41:
                        lea              r9, [rbp + 2512]
.Lx630_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx630_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx630_43
                        cmp              esi, 1
                                                                                        jne   .Lx630_57
                        mov              r9, rax
                                                                                        jmp   .Lx630_42
.Lx630_57:
                        cmp              esi, 2
                                                                                        jne   .Lx630_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx630_43
                        mov              r9, rax
                                                                                        jmp   .Lx630_42
.Lx630_58:
                        cmp              eax, 13
                                                                                        jne   .Lx630_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx630_43
                        cmp              rax, r9
                                                                                        je    .Lx630_43
                        mov              r9, rax
                                                                                        jmp   .Lx630_42
.Lx630_43:
                        cmp              r8, r9
                                                                                        je    .Lx630_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx630_44
                        cmp              eax, 99
                                                                                        je    .Lx630_44
                        cmp              eax, 13
                                                                                        jne   .Lx630_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx630_44
                                                                                        jmp   .Lx630_45
.Lx630_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx630_53
                        cmp              eax, 99
                                                                                        je    .Lx630_53
                        cmp              eax, 13
                                                                                        jne   .Lx630_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx630_53
                                                                                        jmp   .Lx630_46
.Lx630_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx630_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx630_53
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
                                                                                        jmp   .Lx630_51
.Lx630_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx630_47
                        cmp              eax, 99
                                                                                        je    .Lx630_47
                        cmp              eax, 13
                                                                                        jne   .Lx630_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx630_47
                                                                                        jmp   .Lx630_48
.Lx630_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx630_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx630_53
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
                                                                                        jmp   .Lx630_51
.Lx630_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx630_49
                        cmp              edx, 14
                                                                                        je    .Lx630_53
                                                                                        jmp   .Lx630_52
.Lx630_49:
                        cmp              edx, 14
                                                                                        je    .Lx630_52
                        cmp              ecx, 7
                                                                                        je    .Lx630_53
                        cmp              edx, 7
                                                                                        je    .Lx630_53
                        cmp              ecx, 6
                                                                                        jne   .Lx630_50
                        cmp              edx, 6
                                                                                        jne   .Lx630_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx630_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx630_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx630_51
                                                                                        jmp   .Lx630_52
.Lx630_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx630_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx630_53
.Lx630_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx630_54
.Lx630_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx630_54
.Lx630_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx630_54:
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    n262_call_builtin_prolog_α
                                                                                        jmp   n251_var_ref_α
n250_call_builtin_prolog_β:
                                                                                        jmp   n262_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        add              rsp, 16
                                                                                        jmp   n252_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              dword ptr [rbp + 2468], 1
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n253_var_ref_α
.Lx633_0:
                        .quad            .Lx633_0_s
.Lx633_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        add              rsp, 16
                                                                                        jmp   n254_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n254_call_builtin_prolog_α:
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
                                                                                        je    n262_call_builtin_prolog_α
                                                                                        jmp   n255_call_builtin_prolog_α
n254_call_builtin_prolog_β:
                                                                                        jmp   n262_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n255_call_builtin_prolog_α:
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
.Lx637_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx637_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx637_41
                        cmp              esi, 1
                                                                                        jne   .Lx637_55
                        mov              r8, rax
                                                                                        jmp   .Lx637_40
.Lx637_55:
                        cmp              esi, 2
                                                                                        jne   .Lx637_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx637_41
                        mov              r8, rax
                                                                                        jmp   .Lx637_40
.Lx637_56:
                        cmp              eax, 13
                                                                                        jne   .Lx637_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx637_41
                        cmp              rax, r8
                                                                                        je    .Lx637_41
                        mov              r8, rax
                                                                                        jmp   .Lx637_40
.Lx637_41:
                        lea              r9, [rbp + 2352]
.Lx637_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx637_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx637_43
                        cmp              esi, 1
                                                                                        jne   .Lx637_57
                        mov              r9, rax
                                                                                        jmp   .Lx637_42
.Lx637_57:
                        cmp              esi, 2
                                                                                        jne   .Lx637_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx637_43
                        mov              r9, rax
                                                                                        jmp   .Lx637_42
.Lx637_58:
                        cmp              eax, 13
                                                                                        jne   .Lx637_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx637_43
                        cmp              rax, r9
                                                                                        je    .Lx637_43
                        mov              r9, rax
                                                                                        jmp   .Lx637_42
.Lx637_43:
                        cmp              r8, r9
                                                                                        je    .Lx637_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx637_44
                        cmp              eax, 99
                                                                                        je    .Lx637_44
                        cmp              eax, 13
                                                                                        jne   .Lx637_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx637_44
                                                                                        jmp   .Lx637_45
.Lx637_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx637_53
                        cmp              eax, 99
                                                                                        je    .Lx637_53
                        cmp              eax, 13
                                                                                        jne   .Lx637_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx637_53
                                                                                        jmp   .Lx637_46
.Lx637_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx637_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx637_53
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
                                                                                        jmp   .Lx637_51
.Lx637_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx637_47
                        cmp              eax, 99
                                                                                        je    .Lx637_47
                        cmp              eax, 13
                                                                                        jne   .Lx637_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx637_47
                                                                                        jmp   .Lx637_48
.Lx637_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx637_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx637_53
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
                                                                                        jmp   .Lx637_51
.Lx637_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx637_49
                        cmp              edx, 14
                                                                                        je    .Lx637_53
                                                                                        jmp   .Lx637_52
.Lx637_49:
                        cmp              edx, 14
                                                                                        je    .Lx637_52
                        cmp              ecx, 7
                                                                                        je    .Lx637_53
                        cmp              edx, 7
                                                                                        je    .Lx637_53
                        cmp              ecx, 6
                                                                                        jne   .Lx637_50
                        cmp              edx, 6
                                                                                        jne   .Lx637_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx637_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx637_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx637_51
                                                                                        jmp   .Lx637_52
.Lx637_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx637_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx637_53
.Lx637_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx637_54
.Lx637_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx637_54
.Lx637_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx637_54:
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    n262_call_builtin_prolog_α
                                                                                        jmp   n256_cut_α
n255_call_builtin_prolog_β:
                                                                                        jmp   n262_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n256_cut_α:
                                                                                        jmp   n257_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        add              rsp, 16
                                                                                        jmp   n258_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        add              rsp, 16
                                                                                        jmp   n259_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        add              rsp, 16
                                                                                        jmp   n260_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n260_call_proc_staged_α:
                        lea              rsi, [rbp + 2272]
                        lea              rdx, [rbp + 2288]
                        lea              rcx, [rbp + 2304]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx646_2
.Lx646_2:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n338_call_builtin_prolog_α
                                                                                        jmp   n261_move_label_α
n260_call_proc_staged_β:
                                                                                        jmp   n338_call_builtin_prolog_α
.Lx646_0:
                        .quad            .Lx646_0_s
.Lx646_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n261_move_label_α:
                        lea              rax, [rip + n260_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n262_call_builtin_prolog_α:
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
                                                                                        jmp   n263_var_ref_α
n262_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        add              rsp, 16
                                                                                        jmp   n264_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_integer_α:
                        mov              qword ptr [rbp + 2128], 6
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n265_lit_string_α
.Lx652_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              dword ptr [rbp + 2148], 3
                        mov              rax, qword ptr [rip + .Lx653_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n266_call_builtin_prolog_α
.Lx653_0:
                        .quad            .Lx653_0_s
.Lx653_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n266_call_builtin_prolog_α:
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
                                                                                        je    n290_var_ref_α
                                                                                        jmp   n267_var_ref_α
n266_call_builtin_prolog_β:
                                                                                        jmp   n290_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        add              rsp, 16
                                                                                        jmp   n268_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              dword ptr [rbp + 2036], 3
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n269_var_ref_α
.Lx657_0:
                        .quad            .Lx657_0_s
.Lx657_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        add              rsp, 16
                                                                                        jmp   n270_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n270_call_builtin_prolog_α:
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
                                                                                        je    n289_call_builtin_prolog_α
                                                                                        jmp   n271_call_builtin_prolog_α
n270_call_builtin_prolog_β:
                                                                                        jmp   n289_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n271_call_builtin_prolog_α:
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
.Lx661_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx661_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_41
                        cmp              esi, 1
                                                                                        jne   .Lx661_55
                        mov              r8, rax
                                                                                        jmp   .Lx661_40
.Lx661_55:
                        cmp              esi, 2
                                                                                        jne   .Lx661_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx661_41
                        mov              r8, rax
                                                                                        jmp   .Lx661_40
.Lx661_56:
                        cmp              eax, 13
                                                                                        jne   .Lx661_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_41
                        cmp              rax, r8
                                                                                        je    .Lx661_41
                        mov              r8, rax
                                                                                        jmp   .Lx661_40
.Lx661_41:
                        lea              r9, [rbp + 1920]
.Lx661_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx661_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_43
                        cmp              esi, 1
                                                                                        jne   .Lx661_57
                        mov              r9, rax
                                                                                        jmp   .Lx661_42
.Lx661_57:
                        cmp              esi, 2
                                                                                        jne   .Lx661_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx661_43
                        mov              r9, rax
                                                                                        jmp   .Lx661_42
.Lx661_58:
                        cmp              eax, 13
                                                                                        jne   .Lx661_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_43
                        cmp              rax, r9
                                                                                        je    .Lx661_43
                        mov              r9, rax
                                                                                        jmp   .Lx661_42
.Lx661_43:
                        cmp              r8, r9
                                                                                        je    .Lx661_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx661_44
                        cmp              eax, 99
                                                                                        je    .Lx661_44
                        cmp              eax, 13
                                                                                        jne   .Lx661_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx661_44
                                                                                        jmp   .Lx661_45
.Lx661_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx661_53
                        cmp              eax, 99
                                                                                        je    .Lx661_53
                        cmp              eax, 13
                                                                                        jne   .Lx661_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx661_53
                                                                                        jmp   .Lx661_46
.Lx661_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx661_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx661_53
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
                                                                                        jmp   .Lx661_51
.Lx661_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx661_47
                        cmp              eax, 99
                                                                                        je    .Lx661_47
                        cmp              eax, 13
                                                                                        jne   .Lx661_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx661_47
                                                                                        jmp   .Lx661_48
.Lx661_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx661_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx661_53
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
                                                                                        jmp   .Lx661_51
.Lx661_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx661_49
                        cmp              edx, 14
                                                                                        je    .Lx661_53
                                                                                        jmp   .Lx661_52
.Lx661_49:
                        cmp              edx, 14
                                                                                        je    .Lx661_52
                        cmp              ecx, 7
                                                                                        je    .Lx661_53
                        cmp              edx, 7
                                                                                        je    .Lx661_53
                        cmp              ecx, 6
                                                                                        jne   .Lx661_50
                        cmp              edx, 6
                                                                                        jne   .Lx661_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx661_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx661_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx661_51
                                                                                        jmp   .Lx661_52
.Lx661_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx661_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx661_53
.Lx661_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx661_54
.Lx661_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx661_54
.Lx661_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx661_54:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n289_call_builtin_prolog_α
                                                                                        jmp   n272_var_ref_α
n271_call_builtin_prolog_β:
                                                                                        jmp   n289_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        add              rsp, 16
                                                                                        jmp   n273_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        add              rsp, 16
                                                                                        jmp   n274_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n274_call_builtin_prolog_α:
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
.Lx666_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx666_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx666_41
                        cmp              esi, 1
                                                                                        jne   .Lx666_55
                        mov              r8, rax
                                                                                        jmp   .Lx666_40
.Lx666_55:
                        cmp              esi, 2
                                                                                        jne   .Lx666_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx666_41
                        mov              r8, rax
                                                                                        jmp   .Lx666_40
.Lx666_56:
                        cmp              eax, 13
                                                                                        jne   .Lx666_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx666_41
                        cmp              rax, r8
                                                                                        je    .Lx666_41
                        mov              r8, rax
                                                                                        jmp   .Lx666_40
.Lx666_41:
                        lea              r9, [rbp + 1840]
.Lx666_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx666_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx666_43
                        cmp              esi, 1
                                                                                        jne   .Lx666_57
                        mov              r9, rax
                                                                                        jmp   .Lx666_42
.Lx666_57:
                        cmp              esi, 2
                                                                                        jne   .Lx666_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx666_43
                        mov              r9, rax
                                                                                        jmp   .Lx666_42
.Lx666_58:
                        cmp              eax, 13
                                                                                        jne   .Lx666_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx666_43
                        cmp              rax, r9
                                                                                        je    .Lx666_43
                        mov              r9, rax
                                                                                        jmp   .Lx666_42
.Lx666_43:
                        cmp              r8, r9
                                                                                        je    .Lx666_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx666_44
                        cmp              eax, 99
                                                                                        je    .Lx666_44
                        cmp              eax, 13
                                                                                        jne   .Lx666_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx666_44
                                                                                        jmp   .Lx666_45
.Lx666_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx666_53
                        cmp              eax, 99
                                                                                        je    .Lx666_53
                        cmp              eax, 13
                                                                                        jne   .Lx666_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx666_53
                                                                                        jmp   .Lx666_46
.Lx666_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx666_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx666_53
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
                                                                                        jmp   .Lx666_51
.Lx666_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx666_47
                        cmp              eax, 99
                                                                                        je    .Lx666_47
                        cmp              eax, 13
                                                                                        jne   .Lx666_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx666_47
                                                                                        jmp   .Lx666_48
.Lx666_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx666_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx666_53
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
                                                                                        jmp   .Lx666_51
.Lx666_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx666_49
                        cmp              edx, 14
                                                                                        je    .Lx666_53
                                                                                        jmp   .Lx666_52
.Lx666_49:
                        cmp              edx, 14
                                                                                        je    .Lx666_52
                        cmp              ecx, 7
                                                                                        je    .Lx666_53
                        cmp              edx, 7
                                                                                        je    .Lx666_53
                        cmp              ecx, 6
                                                                                        jne   .Lx666_50
                        cmp              edx, 6
                                                                                        jne   .Lx666_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx666_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx666_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx666_51
                                                                                        jmp   .Lx666_52
.Lx666_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx666_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx666_53
.Lx666_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx666_54
.Lx666_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx666_54
.Lx666_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx666_54:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n289_call_builtin_prolog_α
                                                                                        jmp   n275_var_ref_α
n274_call_builtin_prolog_β:
                                                                                        jmp   n289_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n275_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        add              rsp, 16
                                                                                        jmp   n276_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              dword ptr [rbp + 1796], 1
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n277_lit_string_α
.Lx669_0:
                        .quad            .Lx669_0_s
.Lx669_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              dword ptr [rbp + 1684], 3
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n278_var_ref_α
.Lx670_0:
                        .quad            .Lx670_0_s
.Lx670_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n278_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        add              rsp, 16
                                                                                        jmp   n279_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n279_call_builtin_prolog_α:
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
                                                                                        jmp   n280_var_ref_α
n279_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        add              rsp, 16
                                                                                        jmp   n281_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n281_call_builtin_prolog_α:
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
                                                                                        je    n289_call_builtin_prolog_α
                                                                                        jmp   n282_call_builtin_prolog_α
n281_call_builtin_prolog_β:
                                                                                        jmp   n289_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n282_call_builtin_prolog_α:
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
.Lx677_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx677_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx677_41
                        cmp              esi, 1
                                                                                        jne   .Lx677_55
                        mov              r8, rax
                                                                                        jmp   .Lx677_40
.Lx677_55:
                        cmp              esi, 2
                                                                                        jne   .Lx677_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx677_41
                        mov              r8, rax
                                                                                        jmp   .Lx677_40
.Lx677_56:
                        cmp              eax, 13
                                                                                        jne   .Lx677_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx677_41
                        cmp              rax, r8
                                                                                        je    .Lx677_41
                        mov              r8, rax
                                                                                        jmp   .Lx677_40
.Lx677_41:
                        lea              r9, [rbp + 1568]
.Lx677_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx677_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx677_43
                        cmp              esi, 1
                                                                                        jne   .Lx677_57
                        mov              r9, rax
                                                                                        jmp   .Lx677_42
.Lx677_57:
                        cmp              esi, 2
                                                                                        jne   .Lx677_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx677_43
                        mov              r9, rax
                                                                                        jmp   .Lx677_42
.Lx677_58:
                        cmp              eax, 13
                                                                                        jne   .Lx677_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx677_43
                        cmp              rax, r9
                                                                                        je    .Lx677_43
                        mov              r9, rax
                                                                                        jmp   .Lx677_42
.Lx677_43:
                        cmp              r8, r9
                                                                                        je    .Lx677_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx677_44
                        cmp              eax, 99
                                                                                        je    .Lx677_44
                        cmp              eax, 13
                                                                                        jne   .Lx677_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx677_44
                                                                                        jmp   .Lx677_45
.Lx677_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx677_53
                        cmp              eax, 99
                                                                                        je    .Lx677_53
                        cmp              eax, 13
                                                                                        jne   .Lx677_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx677_53
                                                                                        jmp   .Lx677_46
.Lx677_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx677_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx677_53
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
                                                                                        jmp   .Lx677_51
.Lx677_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx677_47
                        cmp              eax, 99
                                                                                        je    .Lx677_47
                        cmp              eax, 13
                                                                                        jne   .Lx677_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx677_47
                                                                                        jmp   .Lx677_48
.Lx677_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx677_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx677_53
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
                                                                                        jmp   .Lx677_51
.Lx677_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx677_49
                        cmp              edx, 14
                                                                                        je    .Lx677_53
                                                                                        jmp   .Lx677_52
.Lx677_49:
                        cmp              edx, 14
                                                                                        je    .Lx677_52
                        cmp              ecx, 7
                                                                                        je    .Lx677_53
                        cmp              edx, 7
                                                                                        je    .Lx677_53
                        cmp              ecx, 6
                                                                                        jne   .Lx677_50
                        cmp              edx, 6
                                                                                        jne   .Lx677_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx677_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx677_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx677_51
                                                                                        jmp   .Lx677_52
.Lx677_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx677_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx677_53
.Lx677_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx677_54
.Lx677_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx677_54
.Lx677_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx677_54:
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    n289_call_builtin_prolog_α
                                                                                        jmp   n283_cut_α
n282_call_builtin_prolog_β:
                                                                                        jmp   n289_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n283_cut_α:
                                                                                        jmp   n284_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n284_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        add              rsp, 16
                                                                                        jmp   n285_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n285_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        add              rsp, 16
                                                                                        jmp   n286_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        add              rsp, 16
                                                                                        jmp   n287_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n287_call_proc_staged_α:
                        lea              rsi, [rbp + 1488]
                        lea              rdx, [rbp + 1504]
                        lea              rcx, [rbp + 1520]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx686_2
.Lx686_2:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n338_call_builtin_prolog_α
                                                                                        jmp   n288_move_label_α
n287_call_proc_staged_β:
                                                                                        jmp   n338_call_builtin_prolog_α
.Lx686_0:
                        .quad            .Lx686_0_s
.Lx686_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n288_move_label_α:
                        lea              rax, [rip + n287_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n289_call_builtin_prolog_α:
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
                                                                                        jmp   n290_var_ref_α
n289_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        add              rsp, 16
                                                                                        jmp   n291_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 6
                        mov              rax, qword ptr [rip + .Lx692_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n292_lit_string_α
.Lx692_0:
                        .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              dword ptr [rbp + 1364], 3
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n293_call_builtin_prolog_α
.Lx693_0:
                        .quad            .Lx693_0_s
.Lx693_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n293_call_builtin_prolog_α:
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
                                                                                        je    n315_var_ref_α
                                                                                        jmp   n294_var_ref_α
n293_call_builtin_prolog_β:
                                                                                        jmp   n315_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        add              rsp, 16
                                                                                        jmp   n295_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              dword ptr [rbp + 1252], 3
                        mov              rax, qword ptr [rip + .Lx697_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n296_var_ref_α
.Lx697_0:
                        .quad            .Lx697_0_s
.Lx697_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        add              rsp, 16
                                                                                        jmp   n297_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n297_call_builtin_prolog_α:
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
                                                                                        je    n314_call_builtin_prolog_α
                                                                                        jmp   n298_call_builtin_prolog_α
n297_call_builtin_prolog_β:
                                                                                        jmp   n314_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n298_call_builtin_prolog_α:
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
.Lx701_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx701_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx701_41
                        cmp              esi, 1
                                                                                        jne   .Lx701_55
                        mov              r8, rax
                                                                                        jmp   .Lx701_40
.Lx701_55:
                        cmp              esi, 2
                                                                                        jne   .Lx701_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx701_41
                        mov              r8, rax
                                                                                        jmp   .Lx701_40
.Lx701_56:
                        cmp              eax, 13
                                                                                        jne   .Lx701_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx701_41
                        cmp              rax, r8
                                                                                        je    .Lx701_41
                        mov              r8, rax
                                                                                        jmp   .Lx701_40
.Lx701_41:
                        lea              r9, [rbp + 1136]
.Lx701_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx701_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx701_43
                        cmp              esi, 1
                                                                                        jne   .Lx701_57
                        mov              r9, rax
                                                                                        jmp   .Lx701_42
.Lx701_57:
                        cmp              esi, 2
                                                                                        jne   .Lx701_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx701_43
                        mov              r9, rax
                                                                                        jmp   .Lx701_42
.Lx701_58:
                        cmp              eax, 13
                                                                                        jne   .Lx701_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx701_43
                        cmp              rax, r9
                                                                                        je    .Lx701_43
                        mov              r9, rax
                                                                                        jmp   .Lx701_42
.Lx701_43:
                        cmp              r8, r9
                                                                                        je    .Lx701_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx701_44
                        cmp              eax, 99
                                                                                        je    .Lx701_44
                        cmp              eax, 13
                                                                                        jne   .Lx701_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx701_44
                                                                                        jmp   .Lx701_45
.Lx701_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx701_53
                        cmp              eax, 99
                                                                                        je    .Lx701_53
                        cmp              eax, 13
                                                                                        jne   .Lx701_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx701_53
                                                                                        jmp   .Lx701_46
.Lx701_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx701_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx701_53
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
                                                                                        jmp   .Lx701_51
.Lx701_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx701_47
                        cmp              eax, 99
                                                                                        je    .Lx701_47
                        cmp              eax, 13
                                                                                        jne   .Lx701_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx701_47
                                                                                        jmp   .Lx701_48
.Lx701_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx701_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx701_53
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
                                                                                        jmp   .Lx701_51
.Lx701_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx701_49
                        cmp              edx, 14
                                                                                        je    .Lx701_53
                                                                                        jmp   .Lx701_52
.Lx701_49:
                        cmp              edx, 14
                                                                                        je    .Lx701_52
                        cmp              ecx, 7
                                                                                        je    .Lx701_53
                        cmp              edx, 7
                                                                                        je    .Lx701_53
                        cmp              ecx, 6
                                                                                        jne   .Lx701_50
                        cmp              edx, 6
                                                                                        jne   .Lx701_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx701_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx701_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx701_51
                                                                                        jmp   .Lx701_52
.Lx701_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx701_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx701_53
.Lx701_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx701_54
.Lx701_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx701_54
.Lx701_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx701_54:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n314_call_builtin_prolog_α
                                                                                        jmp   n299_var_ref_α
n298_call_builtin_prolog_β:
                                                                                        jmp   n314_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        add              rsp, 16
                                                                                        jmp   n300_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        add              rsp, 16
                                                                                        jmp   n301_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n301_call_builtin_prolog_α:
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
                        lea              r9, [rbp + 1056]
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
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n314_call_builtin_prolog_α
                                                                                        jmp   n302_var_ref_α
n301_call_builtin_prolog_β:
                                                                                        jmp   n314_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        add              rsp, 16
                                                                                        jmp   n303_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx709_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n304_var_ref_α
.Lx709_0:
                        .quad            .Lx709_0_s
.Lx709_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        add              rsp, 16
                                                                                        jmp   n305_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        add              rsp, 16
                                                                                        jmp   n306_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n306_call_builtin_prolog_α:
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
                                                                                        je    n314_call_builtin_prolog_α
                                                                                        jmp   n307_call_builtin_prolog_α
n306_call_builtin_prolog_β:
                                                                                        jmp   n314_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n307_call_builtin_prolog_α:
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
                        lea              r9, [rbp + 864]
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
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n314_call_builtin_prolog_α
                                                                                        jmp   n308_cut_α
n307_call_builtin_prolog_β:
                                                                                        jmp   n314_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n308_cut_α:
                                                                                        jmp   n309_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        add              rsp, 16
                                                                                        jmp   n310_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8176]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        add              rsp, 16
                                                                                        jmp   n311_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        add              rsp, 16
                                                                                        jmp   n312_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n312_call_proc_staged_α:
                        lea              rsi, [rbp + 784]
                        lea              rdx, [rbp + 800]
                        lea              rcx, [rbp + 816]
                        call             proc_d$2F3_dcα
                                                                                        jmp   .Lx724_2
.Lx724_2:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n338_call_builtin_prolog_α
                                                                                        jmp   n313_move_label_α
n312_call_proc_staged_β:
                                                                                        jmp   n338_call_builtin_prolog_α
.Lx724_0:
                        .quad            .Lx724_0_s
.Lx724_0_s:
                        .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n313_move_label_α:
                        lea              rax, [rip + n312_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n314_call_builtin_prolog_α:
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
                                                                                        jmp   n315_var_ref_α
n314_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n315_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        add              rsp, 16
                                                                                        jmp   n316_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8160]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        add              rsp, 16
                                                                                        jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n317_call_builtin_prolog_α:
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
.Lx732_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx732_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx732_41
                        cmp              esi, 1
                                                                                        jne   .Lx732_55
                        mov              r8, rax
                                                                                        jmp   .Lx732_40
.Lx732_55:
                        cmp              esi, 2
                                                                                        jne   .Lx732_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx732_41
                        mov              r8, rax
                                                                                        jmp   .Lx732_40
.Lx732_56:
                        cmp              eax, 13
                                                                                        jne   .Lx732_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx732_41
                        cmp              rax, r8
                                                                                        je    .Lx732_41
                        mov              r8, rax
                                                                                        jmp   .Lx732_40
.Lx732_41:
                        lea              r9, [rbp + 624]
.Lx732_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx732_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx732_43
                        cmp              esi, 1
                                                                                        jne   .Lx732_57
                        mov              r9, rax
                                                                                        jmp   .Lx732_42
.Lx732_57:
                        cmp              esi, 2
                                                                                        jne   .Lx732_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx732_43
                        mov              r9, rax
                                                                                        jmp   .Lx732_42
.Lx732_58:
                        cmp              eax, 13
                                                                                        jne   .Lx732_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx732_43
                        cmp              rax, r9
                                                                                        je    .Lx732_43
                        mov              r9, rax
                                                                                        jmp   .Lx732_42
.Lx732_43:
                        cmp              r8, r9
                                                                                        je    .Lx732_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx732_44
                        cmp              eax, 99
                                                                                        je    .Lx732_44
                        cmp              eax, 13
                                                                                        jne   .Lx732_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx732_44
                                                                                        jmp   .Lx732_45
.Lx732_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx732_53
                        cmp              eax, 99
                                                                                        je    .Lx732_53
                        cmp              eax, 13
                                                                                        jne   .Lx732_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx732_53
                                                                                        jmp   .Lx732_46
.Lx732_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx732_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx732_53
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
                                                                                        jmp   .Lx732_51
.Lx732_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx732_47
                        cmp              eax, 99
                                                                                        je    .Lx732_47
                        cmp              eax, 13
                                                                                        jne   .Lx732_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx732_47
                                                                                        jmp   .Lx732_48
.Lx732_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx732_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx732_53
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
                                                                                        jmp   .Lx732_51
.Lx732_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx732_49
                        cmp              edx, 14
                                                                                        je    .Lx732_53
                                                                                        jmp   .Lx732_52
.Lx732_49:
                        cmp              edx, 14
                                                                                        je    .Lx732_52
                        cmp              ecx, 7
                                                                                        je    .Lx732_53
                        cmp              edx, 7
                                                                                        je    .Lx732_53
                        cmp              ecx, 6
                                                                                        jne   .Lx732_50
                        cmp              edx, 6
                                                                                        jne   .Lx732_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx732_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx732_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx732_51
                                                                                        jmp   .Lx732_52
.Lx732_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx732_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx732_53
.Lx732_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx732_54
.Lx732_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx732_54
.Lx732_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx732_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n326_call_builtin_prolog_α
                                                                                        jmp   n318_var_ref_α
n317_call_builtin_prolog_β:
                                                                                        jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        add              rsp, 16
                                                                                        jmp   n319_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8160]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        add              rsp, 16
                                                                                        jmp   n320_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n320_call_builtin_prolog_α:
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
.Lx737_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx737_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx737_41
                        cmp              esi, 1
                                                                                        jne   .Lx737_55
                        mov              r8, rax
                                                                                        jmp   .Lx737_40
.Lx737_55:
                        cmp              esi, 2
                                                                                        jne   .Lx737_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx737_41
                        mov              r8, rax
                                                                                        jmp   .Lx737_40
.Lx737_56:
                        cmp              eax, 13
                                                                                        jne   .Lx737_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx737_41
                        cmp              rax, r8
                                                                                        je    .Lx737_41
                        mov              r8, rax
                                                                                        jmp   .Lx737_40
.Lx737_41:
                        lea              r9, [rbp + 544]
.Lx737_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx737_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx737_43
                        cmp              esi, 1
                                                                                        jne   .Lx737_57
                        mov              r9, rax
                                                                                        jmp   .Lx737_42
.Lx737_57:
                        cmp              esi, 2
                                                                                        jne   .Lx737_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx737_43
                        mov              r9, rax
                                                                                        jmp   .Lx737_42
.Lx737_58:
                        cmp              eax, 13
                                                                                        jne   .Lx737_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx737_43
                        cmp              rax, r9
                                                                                        je    .Lx737_43
                        mov              r9, rax
                                                                                        jmp   .Lx737_42
.Lx737_43:
                        cmp              r8, r9
                                                                                        je    .Lx737_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx737_44
                        cmp              eax, 99
                                                                                        je    .Lx737_44
                        cmp              eax, 13
                                                                                        jne   .Lx737_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx737_44
                                                                                        jmp   .Lx737_45
.Lx737_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx737_53
                        cmp              eax, 99
                                                                                        je    .Lx737_53
                        cmp              eax, 13
                                                                                        jne   .Lx737_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx737_53
                                                                                        jmp   .Lx737_46
.Lx737_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx737_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx737_53
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
                                                                                        jmp   .Lx737_51
.Lx737_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx737_47
                        cmp              eax, 99
                                                                                        je    .Lx737_47
                        cmp              eax, 13
                                                                                        jne   .Lx737_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx737_47
                                                                                        jmp   .Lx737_48
.Lx737_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx737_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx737_53
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
                                                                                        jmp   .Lx737_51
.Lx737_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx737_49
                        cmp              edx, 14
                                                                                        je    .Lx737_53
                                                                                        jmp   .Lx737_52
.Lx737_49:
                        cmp              edx, 14
                                                                                        je    .Lx737_52
                        cmp              ecx, 7
                                                                                        je    .Lx737_53
                        cmp              edx, 7
                                                                                        je    .Lx737_53
                        cmp              ecx, 6
                                                                                        jne   .Lx737_50
                        cmp              edx, 6
                                                                                        jne   .Lx737_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx737_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx737_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx737_51
                                                                                        jmp   .Lx737_52
.Lx737_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx737_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx737_53
.Lx737_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx737_54
.Lx737_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx737_54
.Lx737_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx737_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n326_call_builtin_prolog_α
                                                                                        jmp   n321_var_ref_α
n320_call_builtin_prolog_β:
                                                                                        jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        add              rsp, 16
                                                                                        jmp   n322_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx740_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n323_call_builtin_prolog_α
.Lx740_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n323_call_builtin_prolog_α:
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
                                                                                        je    n326_call_builtin_prolog_α
                                                                                        jmp   n324_cut_α
n323_call_builtin_prolog_β:
                                                                                        jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n324_cut_α:
                                                                                        jmp   n325_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n325_move_label_α:
                        lea              rax, [rip + n326_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n326_call_builtin_prolog_α:
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
                                                                                        jmp   n327_var_ref_α
n326_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        add              rsp, 16
                                                                                        jmp   n328_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8144]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        add              rsp, 16
                                                                                        jmp   n329_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n329_call_builtin_prolog_α:
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
.Lx750_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx750_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx750_41
                        cmp              esi, 1
                                                                                        jne   .Lx750_55
                        mov              r8, rax
                                                                                        jmp   .Lx750_40
.Lx750_55:
                        cmp              esi, 2
                                                                                        jne   .Lx750_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx750_41
                        mov              r8, rax
                                                                                        jmp   .Lx750_40
.Lx750_56:
                        cmp              eax, 13
                                                                                        jne   .Lx750_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx750_41
                        cmp              rax, r8
                                                                                        je    .Lx750_41
                        mov              r8, rax
                                                                                        jmp   .Lx750_40
.Lx750_41:
                        lea              r9, [rbp + 352]
.Lx750_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx750_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx750_43
                        cmp              esi, 1
                                                                                        jne   .Lx750_57
                        mov              r9, rax
                                                                                        jmp   .Lx750_42
.Lx750_57:
                        cmp              esi, 2
                                                                                        jne   .Lx750_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx750_43
                        mov              r9, rax
                                                                                        jmp   .Lx750_42
.Lx750_58:
                        cmp              eax, 13
                                                                                        jne   .Lx750_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx750_43
                        cmp              rax, r9
                                                                                        je    .Lx750_43
                        mov              r9, rax
                                                                                        jmp   .Lx750_42
.Lx750_43:
                        cmp              r8, r9
                                                                                        je    .Lx750_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx750_44
                        cmp              eax, 99
                                                                                        je    .Lx750_44
                        cmp              eax, 13
                                                                                        jne   .Lx750_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx750_44
                                                                                        jmp   .Lx750_45
.Lx750_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx750_53
                        cmp              eax, 99
                                                                                        je    .Lx750_53
                        cmp              eax, 13
                                                                                        jne   .Lx750_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx750_53
                                                                                        jmp   .Lx750_46
.Lx750_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx750_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx750_53
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
                                                                                        jmp   .Lx750_51
.Lx750_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx750_47
                        cmp              eax, 99
                                                                                        je    .Lx750_47
                        cmp              eax, 13
                                                                                        jne   .Lx750_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx750_47
                                                                                        jmp   .Lx750_48
.Lx750_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx750_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx750_53
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
                                                                                        jmp   .Lx750_51
.Lx750_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx750_49
                        cmp              edx, 14
                                                                                        je    .Lx750_53
                                                                                        jmp   .Lx750_52
.Lx750_49:
                        cmp              edx, 14
                                                                                        je    .Lx750_52
                        cmp              ecx, 7
                                                                                        je    .Lx750_53
                        cmp              edx, 7
                                                                                        je    .Lx750_53
                        cmp              ecx, 6
                                                                                        jne   .Lx750_50
                        cmp              edx, 6
                                                                                        jne   .Lx750_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx750_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx750_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx750_51
                                                                                        jmp   .Lx750_52
.Lx750_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx750_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx750_53
.Lx750_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx750_54
.Lx750_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx750_54
.Lx750_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx750_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n338_call_builtin_prolog_α
                                                                                        jmp   n330_var_ref_α
n329_call_builtin_prolog_β:
                                                                                        jmp   n338_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        add              rsp, 16
                                                                                        jmp   n331_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 8128]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        add              rsp, 16
                                                                                        jmp   n332_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n332_call_builtin_prolog_α:
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
.Lx755_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx755_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx755_41
                        cmp              esi, 1
                                                                                        jne   .Lx755_55
                        mov              r8, rax
                                                                                        jmp   .Lx755_40
.Lx755_55:
                        cmp              esi, 2
                                                                                        jne   .Lx755_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx755_41
                        mov              r8, rax
                                                                                        jmp   .Lx755_40
.Lx755_56:
                        cmp              eax, 13
                                                                                        jne   .Lx755_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx755_41
                        cmp              rax, r8
                                                                                        je    .Lx755_41
                        mov              r8, rax
                                                                                        jmp   .Lx755_40
.Lx755_41:
                        lea              r9, [rbp + 272]
.Lx755_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx755_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx755_43
                        cmp              esi, 1
                                                                                        jne   .Lx755_57
                        mov              r9, rax
                                                                                        jmp   .Lx755_42
.Lx755_57:
                        cmp              esi, 2
                                                                                        jne   .Lx755_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx755_43
                        mov              r9, rax
                                                                                        jmp   .Lx755_42
.Lx755_58:
                        cmp              eax, 13
                                                                                        jne   .Lx755_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx755_43
                        cmp              rax, r9
                                                                                        je    .Lx755_43
                        mov              r9, rax
                                                                                        jmp   .Lx755_42
.Lx755_43:
                        cmp              r8, r9
                                                                                        je    .Lx755_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx755_44
                        cmp              eax, 99
                                                                                        je    .Lx755_44
                        cmp              eax, 13
                                                                                        jne   .Lx755_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx755_44
                                                                                        jmp   .Lx755_45
.Lx755_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx755_53
                        cmp              eax, 99
                                                                                        je    .Lx755_53
                        cmp              eax, 13
                                                                                        jne   .Lx755_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx755_53
                                                                                        jmp   .Lx755_46
.Lx755_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx755_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx755_53
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
                                                                                        jmp   .Lx755_51
.Lx755_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx755_47
                        cmp              eax, 99
                                                                                        je    .Lx755_47
                        cmp              eax, 13
                                                                                        jne   .Lx755_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx755_47
                                                                                        jmp   .Lx755_48
.Lx755_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx755_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx755_53
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
                                                                                        jmp   .Lx755_51
.Lx755_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx755_49
                        cmp              edx, 14
                                                                                        je    .Lx755_53
                                                                                        jmp   .Lx755_52
.Lx755_49:
                        cmp              edx, 14
                                                                                        je    .Lx755_52
                        cmp              ecx, 7
                                                                                        je    .Lx755_53
                        cmp              edx, 7
                                                                                        je    .Lx755_53
                        cmp              ecx, 6
                                                                                        jne   .Lx755_50
                        cmp              edx, 6
                                                                                        jne   .Lx755_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx755_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx755_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx755_51
                                                                                        jmp   .Lx755_52
.Lx755_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx755_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx755_53
.Lx755_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx755_54
.Lx755_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx755_54
.Lx755_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx755_54:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n338_call_builtin_prolog_α
                                                                                        jmp   n333_var_ref_α
n332_call_builtin_prolog_β:
                                                                                        jmp   n338_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        add              rsp, 16
                                                                                        jmp   n334_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx758_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n335_call_builtin_prolog_α
.Lx758_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n335_call_builtin_prolog_α:
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
                                                                                        je    n338_call_builtin_prolog_α
                                                                                        jmp   n336_move_label_α
n335_call_builtin_prolog_β:
                                                                                        jmp   n338_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n336_move_label_α:
                        lea              rax, [rip + n338_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n337_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 80]
n337_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n338_call_builtin_prolog_α:
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
n338_call_builtin_prolog_β:
                                                                                        jmp   proc_d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_d$2F3_β:
                                                                                        jmp   n337_disjunction_α
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
                        lea              rax, [rip + .Lx765_2]
                        mov              qword ptr [rbp + 8248], rax
                        lea              rax, [rip + .Lx765_3]
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
.Lx765_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -8272
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx765_3:
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
                        lea              rax, [rip + n768_suspend_β]
                        mov              qword ptr [rbp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n766_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx770_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx770_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx770_101
.Lx770_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx770_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_top$2F0_ω
                                                                                        jmp   n767_call_proc_staged_α
n766_call_builtin_prolog_β:
                                                                                        jmp   proc_top$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n767_call_proc_staged_α:
                        call             proc_log10$2F0_dcα
                                                                                        jmp   .Lx772_2
.Lx772_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n769_call_builtin_prolog_α
                                                                                        jmp   n768_suspend_α
n767_call_proc_staged_β:
                                                                                        jmp   n769_call_builtin_prolog_α
.Lx772_0:
                        .quad            .Lx772_0_s
.Lx772_0_s:
                        .string          "log10/0"
#-----------------------------------------------------------------------------------------------------------------------
n768_suspend_α:
                        lea              rax, [rip + n768_suspend_β]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_top$2F0_γ
n768_suspend_β:
                                                                                        jmp   n767_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n769_call_builtin_prolog_α:
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
n769_call_builtin_prolog_β:
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
.Lstartup_pname0:       .string          "log10/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_log10$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1040
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_log10$2F0_dcα]
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
n776_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx787_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx787_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx787_101
.Lx787_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx787_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n777_call_proc_staged_α
n776_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n777_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              edi, 2
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx789_1
                        lea              rcx, [rip + .Lx789_3]
                        lea              rdx, [rip + .Lx789_4]
                                                                                        jmp   rax
.Lx789_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx789_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx789_2
.Lx789_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx789_2
.Lx789_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx789_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx789_2
.Lx789_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx789_2
.Lx789_1:
                        call             rt_faildescr@PLT
.Lx789_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n780_lit_string_α
                                                                                        jmp   n778_lit_string_α
n777_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx789_0:
                        .quad            .Lx789_0_s
.Lx789_0_s:
                        .string          "top/0"
#-----------------------------------------------------------------------------------------------------------------------
n778_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Lx790_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n779_call_builtin_prolog_α
.Lx790_0:
                        .quad            .Lx790_0_s
.Lx790_0_s:
                        .string          "ok"
#-----------------------------------------------------------------------------------------------------------------------
n779_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn792:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn792]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n786_call_builtin_prolog_α
                                                                                        jmp   n782_lit_string_α
n779_call_builtin_prolog_β:
                                                                                        jmp   n786_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n780_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              dword ptr [rbp + 228], 6
                        mov              rax, qword ptr [rip + .Lx793_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n781_call_builtin_prolog_α
.Lx793_0:
                        .quad            .Lx793_0_s
.Lx793_0_s:
                        .string          "failed"
#-----------------------------------------------------------------------------------------------------------------------
n781_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn795:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn795]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n786_call_builtin_prolog_α
                                                                                        jmp   n782_lit_string_α
n781_call_builtin_prolog_β:
                                                                                        jmp   n786_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n782_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Lx796_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n783_call_builtin_prolog_α
.Lx796_0:
                        .quad            .Lx796_0_s
.Lx796_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n783_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn798:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn798]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n786_call_builtin_prolog_α
                                                                                        jmp   n784_move_label_α
n783_call_builtin_prolog_β:
                                                                                        jmp   n786_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n784_move_label_α:
                        lea              rax, [rip + n786_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n785_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 16]
n785_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n786_call_builtin_prolog_α:
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
n786_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n785_disjunction_α
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
