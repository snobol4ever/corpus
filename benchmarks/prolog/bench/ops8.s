                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__ops8$2F0:
                        sub              rsp, 1072
                        mov              qword ptr [rsp + 1048], rcx
                        mov              qword ptr [rsp + 1056], rdx
                        mov              qword ptr [rsp + 1064], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1040
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
ops8$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx29_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx29_101
.Lx29_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx29_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx29_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx29_101
.Lx29_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx29_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    ops8$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                                                                              jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 1
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n2_lit_string_α
.Lx30_0:                .quad            .Lx30_0_s
.Lx30_0_s:              .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n3_lit_string_α
.Lx31_0:                .quad            .Lx31_0_s
.Lx31_0_s:              .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 1
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n4_lit_integer_α
.Lx32_0:                .quad            .Lx32_0_s
.Lx32_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n5_call_builtin_prolog_α
.Lx33_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              eax, 104;                            je    ops8$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_lit_string_α
n5_call_builtin_prolog_β:
                                                                              jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 1
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n7_lit_string_α
.Lx35_0:                .quad            .Lx35_0_s
.Lx35_0_s:              .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n8_lit_string_α
.Lx36_0:                .quad            .Lx36_0_s
.Lx36_0_s:              .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n9_lit_string_α
.Lx37_0:                .quad            .Lx37_0_s
.Lx37_0_s:              .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n10_lit_integer_α
.Lx38_0:                .quad            .Lx38_0_s
.Lx38_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n11_call_builtin_prolog_α
.Lx39_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 104;                            je    ops8$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_lit_integer_α
n11_call_builtin_prolog_β:
                                                                              jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n13_call_builtin_prolog_α
.Lx41_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 104;                            je    ops8$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_lit_string_α
n13_call_builtin_prolog_β:
                                                                              jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 1
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n15_lit_string_α
.Lx43_0:                .quad            .Lx43_0_s
.Lx43_0_s:              .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 1
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n16_lit_string_α
.Lx44_0:                .quad            .Lx44_0_s
.Lx44_0_s:              .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 1
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n17_lit_integer_α
.Lx45_0:                .quad            .Lx45_0_s
.Lx45_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n18_call_builtin_prolog_α
.Lx46_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 104;                            je    ops8$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_lit_integer_α
n18_call_builtin_prolog_β:
                                                                              jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n20_call_builtin_prolog_α
.Lx48_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104;                            je    ops8$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_call_builtin_prolog_α
n20_call_builtin_prolog_β:
                                                                              jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 808], rax
                        lea              rdi, [rsp + 800]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              eax, 104;                            je    ops8$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_call_builtin_prolog_α
n21_call_builtin_prolog_β:
                                                                              jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 904], rax
                        lea              rdi, [rsp + 896]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 104;                            je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n23_lit_string_α
n22_call_builtin_prolog_β:
                                                                              jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n24_var_ref_α
.Lx52_0:                .quad            .Lx52_0_s
.Lx52_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1008]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n25_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_proc_staged_α: lea              rsi, [rsp + 880]
                        lea              rdx, [rsp + 976]
                        lea              rcx, [rsp + 992]
                        call             d$2F3_dcα;                           jmp   .Lx56_2
.Lx56_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx56_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx56_29:               mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n28_call_builtin_prolog_α
                                                                              jmp   n26_move_label_α
n25_call_proc_staged_β:                                                       jmp   n28_call_builtin_prolog_α
.Lx56_0:                .quad            .Lx56_0_s
.Lx56_0_s:              .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n26_move_label_α:       lea              rax, [rip + n25_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   ops8$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n27_disjunction_α:      mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    ops8$2F0_ω
                                                                              jmp   rax
n27_disjunction_β:                                                            jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    ops8$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   ops8$2F0_ω
n28_call_builtin_prolog_β:
                                                                              jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_β:
                                                                              jmp   n27_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1048]
                        add              rsp, 1072;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_ω:
                        mov              rcx, qword ptr [rsp + 1056]
                        add              rsp, 1072;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx62_2]
                        lea              rdx, [rip + .Lx62_3];                jmp   FN__ops8$2F0
.Lx62_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx62_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__d$2F3:
                        sub              rsp, 8272
                        mov              qword ptr [rsp + 8248], rcx
                        mov              qword ptr [rsp + 8256], rdx
                        mov              qword ptr [rsp + 8264], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 8240
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
d$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx341_102
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lx341_101
.Lx341_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx341_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx341_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx341_101
.Lx341_100:             lea              rdi, [rsp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx341_101:             mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n64_var_ref_α
n63_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 8080], rax
                        mov              qword ptr [rsp + 8088], rdx;         jmp   n65_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      mov              qword ptr [rsp + 8096], 3            # result
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 8104], rax;         jmp   n66_lit_string_α
.Lx344_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              qword ptr [rsp + 8112], 2            # result
                        mov              dword ptr [rsp + 8116], 1
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 8120], rax;         jmp   n67_call_builtin_prolog_α
.Lx345_0:               .quad            .Lx345_0_s
.Lx345_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 8112]
                        mov              qword ptr [rsp + 8064], rax
                        mov              rax, qword ptr [rsp + 8120]
                        mov              qword ptr [rsp + 8072], rax
                        mov              rax, qword ptr [rsp + 8096]
                        mov              qword ptr [rsp + 8048], rax
                        mov              rax, qword ptr [rsp + 8104]
                        mov              qword ptr [rsp + 8056], rax
                        mov              rax, qword ptr [rsp + 8080]
                        mov              qword ptr [rsp + 8032], rax
                        mov              rax, qword ptr [rsp + 8088]
                        mov              qword ptr [rsp + 8040], rax
                        lea              rdi, [rsp + 8032]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 8016], rax
                        mov              qword ptr [rsp + 8024], rdx
                        cmp              eax, 104;                            je    n94_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_var_ref_α
n67_call_builtin_prolog_β:
                                                                              jmp   n94_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7872], rax
                        mov              qword ptr [rsp + 7880], rdx;         jmp   n69_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       mov              qword ptr [rsp + 8000], 2            # result
                        mov              dword ptr [rsp + 8004], 1
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 8008], rax;         jmp   n70_var_ref_α
.Lx349_0:               .quad            .Lx349_0_s
.Lx349_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7888], rax
                        mov              qword ptr [rsp + 7896], rdx;         jmp   n71_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7904], rax
                        mov              qword ptr [rsp + 7912], rdx;         jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7904]
                        mov              qword ptr [rsp + 7968], rax
                        mov              rax, qword ptr [rsp + 7912]
                        mov              qword ptr [rsp + 7976], rax
                        mov              rax, qword ptr [rsp + 7888]
                        mov              qword ptr [rsp + 7952], rax
                        mov              rax, qword ptr [rsp + 7896]
                        mov              qword ptr [rsp + 7960], rax
                        mov              rax, qword ptr [rsp + 8000]
                        mov              qword ptr [rsp + 7936], rax
                        mov              rax, qword ptr [rsp + 8008]
                        mov              qword ptr [rsp + 7944], rax
                        lea              rdi, [rsp + 7936]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 7920], rax
                        mov              qword ptr [rsp + 7928], rdx
                        cmp              eax, 104;                            je    n93_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n73_call_builtin_prolog_α
n72_call_builtin_prolog_β:
                                                                              jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7920]
                        mov              qword ptr [rsp + 7856], rax
                        mov              rax, qword ptr [rsp + 7928]
                        mov              qword ptr [rsp + 7864], rax
                        mov              rax, qword ptr [rsp + 7872]
                        mov              qword ptr [rsp + 7840], rax
                        mov              rax, qword ptr [rsp + 7880]
                        mov              qword ptr [rsp + 7848], rax
                        lea              rdi, [rsp + 7840]
                        lea              r8, [rsp + 7840]
.Lx355_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx355_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx355_41
                        cmp              esi, 1;                              jne   .Lx355_55
                        mov              r8, rax;                             jmp   .Lx355_40
.Lx355_55:              cmp              esi, 2;                              jne   .Lx355_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx355_41
                        mov              r8, rax;                             jmp   .Lx355_40
.Lx355_56:              cmp              eax, 72;                             jne   .Lx355_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx355_41
                        cmp              rax, r8;                             je    .Lx355_41
                        mov              r8, rax;                             jmp   .Lx355_40
.Lx355_41:              lea              r9, [rsp + 7856]
.Lx355_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx355_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx355_43
                        cmp              esi, 1;                              jne   .Lx355_57
                        mov              r9, rax;                             jmp   .Lx355_42
.Lx355_57:              cmp              esi, 2;                              jne   .Lx355_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx355_43
                        mov              r9, rax;                             jmp   .Lx355_42
.Lx355_58:              cmp              eax, 72;                             jne   .Lx355_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx355_43
                        cmp              rax, r9;                             je    .Lx355_43
                        mov              r9, rax;                             jmp   .Lx355_42
.Lx355_43:              cmp              r8, r9;                              je    .Lx355_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx355_44
                        cmp              eax, 104;                            je    .Lx355_44
                        cmp              eax, 72;                             jne   .Lx355_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx355_44
                                                                              jmp   .Lx355_45
.Lx355_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx355_53
                        cmp              eax, 104;                            je    .Lx355_53
                        cmp              eax, 72;                             jne   .Lx355_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx355_53
                                                                              jmp   .Lx355_46
.Lx355_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx355_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx355_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx355_51
.Lx355_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx355_47
                        cmp              eax, 104;                            je    .Lx355_47
                        cmp              eax, 72;                             jne   .Lx355_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx355_47
                                                                              jmp   .Lx355_48
.Lx355_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx355_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx355_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx355_51
.Lx355_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx355_49
                        cmp              edx, 80;                             je    .Lx355_53
                                                                              jmp   .Lx355_52
.Lx355_49:              cmp              edx, 80;                             je    .Lx355_52
                        cmp              ecx, 5;                              je    .Lx355_53
                        cmp              edx, 5;                              je    .Lx355_53
                        cmp              ecx, 3;                              jne   .Lx355_50
                        cmp              edx, 3;                              jne   .Lx355_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx355_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx355_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx355_51
                                                                              jmp   .Lx355_52
.Lx355_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx355_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx355_53
.Lx355_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx355_54
.Lx355_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx355_54
.Lx355_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx355_54:              mov              qword ptr [rsp + 7824], rax
                        mov              qword ptr [rsp + 7832], rdx
                        cmp              eax, 104;                            je    n93_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n74_var_ref_α
n73_call_builtin_prolog_β:
                                                                              jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 7792], rax
                        mov              qword ptr [rsp + 7800], rdx;         jmp   n75_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7808], rax
                        mov              qword ptr [rsp + 7816], rdx;         jmp   n76_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7808]
                        mov              qword ptr [rsp + 7776], rax
                        mov              rax, qword ptr [rsp + 7816]
                        mov              qword ptr [rsp + 7784], rax
                        mov              rax, qword ptr [rsp + 7792]
                        mov              qword ptr [rsp + 7760], rax
                        mov              rax, qword ptr [rsp + 7800]
                        mov              qword ptr [rsp + 7768], rax
                        lea              rdi, [rsp + 7760]
                        lea              r8, [rsp + 7760]
.Lx360_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx360_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx360_41
                        cmp              esi, 1;                              jne   .Lx360_55
                        mov              r8, rax;                             jmp   .Lx360_40
.Lx360_55:              cmp              esi, 2;                              jne   .Lx360_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx360_41
                        mov              r8, rax;                             jmp   .Lx360_40
.Lx360_56:              cmp              eax, 72;                             jne   .Lx360_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx360_41
                        cmp              rax, r8;                             je    .Lx360_41
                        mov              r8, rax;                             jmp   .Lx360_40
.Lx360_41:              lea              r9, [rsp + 7776]
.Lx360_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx360_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx360_43
                        cmp              esi, 1;                              jne   .Lx360_57
                        mov              r9, rax;                             jmp   .Lx360_42
.Lx360_57:              cmp              esi, 2;                              jne   .Lx360_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx360_43
                        mov              r9, rax;                             jmp   .Lx360_42
.Lx360_58:              cmp              eax, 72;                             jne   .Lx360_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx360_43
                        cmp              rax, r9;                             je    .Lx360_43
                        mov              r9, rax;                             jmp   .Lx360_42
.Lx360_43:              cmp              r8, r9;                              je    .Lx360_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx360_44
                        cmp              eax, 104;                            je    .Lx360_44
                        cmp              eax, 72;                             jne   .Lx360_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx360_44
                                                                              jmp   .Lx360_45
.Lx360_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx360_53
                        cmp              eax, 104;                            je    .Lx360_53
                        cmp              eax, 72;                             jne   .Lx360_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx360_53
                                                                              jmp   .Lx360_46
.Lx360_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx360_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx360_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx360_51
.Lx360_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx360_47
                        cmp              eax, 104;                            je    .Lx360_47
                        cmp              eax, 72;                             jne   .Lx360_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx360_47
                                                                              jmp   .Lx360_48
.Lx360_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx360_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx360_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx360_51
.Lx360_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx360_49
                        cmp              edx, 80;                             je    .Lx360_53
                                                                              jmp   .Lx360_52
.Lx360_49:              cmp              edx, 80;                             je    .Lx360_52
                        cmp              ecx, 5;                              je    .Lx360_53
                        cmp              edx, 5;                              je    .Lx360_53
                        cmp              ecx, 3;                              jne   .Lx360_50
                        cmp              edx, 3;                              jne   .Lx360_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx360_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx360_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx360_51
                                                                              jmp   .Lx360_52
.Lx360_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx360_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx360_53
.Lx360_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx360_54
.Lx360_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx360_54
.Lx360_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx360_54:              mov              qword ptr [rsp + 7744], rax
                        mov              qword ptr [rsp + 7752], rdx
                        cmp              eax, 104;                            je    n93_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n77_var_ref_α
n76_call_builtin_prolog_β:
                                                                              jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 7600], rax
                        mov              qword ptr [rsp + 7608], rdx;         jmp   n78_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       mov              qword ptr [rsp + 7728], 2            # result
                        mov              dword ptr [rsp + 7732], 1
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rsp + 7736], rax;         jmp   n79_var_ref_α
.Lx363_0:               .quad            .Lx363_0_s
.Lx363_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 7616], rax
                        mov              qword ptr [rsp + 7624], rdx;         jmp   n80_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 7632], rax
                        mov              qword ptr [rsp + 7640], rdx;         jmp   n81_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7632]
                        mov              qword ptr [rsp + 7696], rax
                        mov              rax, qword ptr [rsp + 7640]
                        mov              qword ptr [rsp + 7704], rax
                        mov              rax, qword ptr [rsp + 7616]
                        mov              qword ptr [rsp + 7680], rax
                        mov              rax, qword ptr [rsp + 7624]
                        mov              qword ptr [rsp + 7688], rax
                        mov              rax, qword ptr [rsp + 7728]
                        mov              qword ptr [rsp + 7664], rax
                        mov              rax, qword ptr [rsp + 7736]
                        mov              qword ptr [rsp + 7672], rax
                        lea              rdi, [rsp + 7664]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 7648], rax
                        mov              qword ptr [rsp + 7656], rdx
                        cmp              eax, 104;                            je    n93_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n82_call_builtin_prolog_α
n81_call_builtin_prolog_β:
                                                                              jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7648]
                        mov              qword ptr [rsp + 7584], rax
                        mov              rax, qword ptr [rsp + 7656]
                        mov              qword ptr [rsp + 7592], rax
                        mov              rax, qword ptr [rsp + 7600]
                        mov              qword ptr [rsp + 7568], rax
                        mov              rax, qword ptr [rsp + 7608]
                        mov              qword ptr [rsp + 7576], rax
                        lea              rdi, [rsp + 7568]
                        lea              r8, [rsp + 7568]
.Lx369_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx369_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx369_41
                        cmp              esi, 1;                              jne   .Lx369_55
                        mov              r8, rax;                             jmp   .Lx369_40
.Lx369_55:              cmp              esi, 2;                              jne   .Lx369_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx369_41
                        mov              r8, rax;                             jmp   .Lx369_40
.Lx369_56:              cmp              eax, 72;                             jne   .Lx369_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx369_41
                        cmp              rax, r8;                             je    .Lx369_41
                        mov              r8, rax;                             jmp   .Lx369_40
.Lx369_41:              lea              r9, [rsp + 7584]
.Lx369_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx369_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx369_43
                        cmp              esi, 1;                              jne   .Lx369_57
                        mov              r9, rax;                             jmp   .Lx369_42
.Lx369_57:              cmp              esi, 2;                              jne   .Lx369_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx369_43
                        mov              r9, rax;                             jmp   .Lx369_42
.Lx369_58:              cmp              eax, 72;                             jne   .Lx369_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx369_43
                        cmp              rax, r9;                             je    .Lx369_43
                        mov              r9, rax;                             jmp   .Lx369_42
.Lx369_43:              cmp              r8, r9;                              je    .Lx369_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx369_44
                        cmp              eax, 104;                            je    .Lx369_44
                        cmp              eax, 72;                             jne   .Lx369_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx369_44
                                                                              jmp   .Lx369_45
.Lx369_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx369_53
                        cmp              eax, 104;                            je    .Lx369_53
                        cmp              eax, 72;                             jne   .Lx369_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx369_53
                                                                              jmp   .Lx369_46
.Lx369_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx369_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx369_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx369_51
.Lx369_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx369_47
                        cmp              eax, 104;                            je    .Lx369_47
                        cmp              eax, 72;                             jne   .Lx369_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx369_47
                                                                              jmp   .Lx369_48
.Lx369_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx369_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx369_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx369_51
.Lx369_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx369_49
                        cmp              edx, 80;                             je    .Lx369_53
                                                                              jmp   .Lx369_52
.Lx369_49:              cmp              edx, 80;                             je    .Lx369_52
                        cmp              ecx, 5;                              je    .Lx369_53
                        cmp              edx, 5;                              je    .Lx369_53
                        cmp              ecx, 3;                              jne   .Lx369_50
                        cmp              edx, 3;                              jne   .Lx369_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx369_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx369_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx369_51
                                                                              jmp   .Lx369_52
.Lx369_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx369_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx369_53
.Lx369_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx369_54
.Lx369_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx369_54
.Lx369_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx369_54:              mov              qword ptr [rsp + 7552], rax
                        mov              qword ptr [rsp + 7560], rdx
                        cmp              eax, 104;                            je    n93_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n83_cut_α
n82_call_builtin_prolog_β:
                                                                              jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_cut_α:                                                                    jmp   n84_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7504], rax
                        mov              qword ptr [rsp + 7512], rdx;         jmp   n85_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7520], rax
                        mov              qword ptr [rsp + 7528], rdx;         jmp   n86_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 7536], rax
                        mov              qword ptr [rsp + 7544], rdx;         jmp   n87_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_proc_staged_α: lea              rsi, [rsp + 7504]
                        lea              rdx, [rsp + 7520]
                        lea              rcx, [rsp + 7536]
                        call             d$2F3_dcα;                           jmp   .Lx378_2
.Lx378_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx378_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7424], rax
                        mov              qword ptr [rsp + 7432], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 7424]
                        mov              rdx, qword ptr [rsp + 7432]
.Lx378_29:              mov              qword ptr [rsp + 7424], rax
                        mov              qword ptr [rsp + 7432], rdx
                        cmp              eax, 104;                            je    n340_call_builtin_prolog_α
                                                                              jmp   n88_var_ref_α
n87_call_proc_staged_β:                                                       jmp   n340_call_builtin_prolog_α
.Lx378_0:               .quad            .Lx378_0_s
.Lx378_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7376], rax
                        mov              qword ptr [rsp + 7384], rdx;         jmp   n89_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7392], rax
                        mov              qword ptr [rsp + 7400], rdx;         jmp   n90_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 7408], rax
                        mov              qword ptr [rsp + 7416], rdx;         jmp   n91_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_proc_staged_α: lea              rsi, [rsp + 7376]
                        lea              rdx, [rsp + 7392]
                        lea              rcx, [rsp + 7408]
                        call             d$2F3_dcα;                           jmp   .Lx386_2
.Lx386_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx386_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 7296]
                        mov              rdx, qword ptr [rsp + 7304]
.Lx386_29:              mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx
                        cmp              eax, 104;                            je    n87_call_proc_staged_β
                                                                              jmp   n92_move_label_α
n91_call_proc_staged_β:                                                       jmp   n87_call_proc_staged_β
.Lx386_0:               .quad            .Lx386_0_s
.Lx386_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n92_move_label_α:       lea              rax, [rip + n91_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 7280], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 7288], rax
                        lea              rdi, [rsp + 7280]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 7264], rax
                        mov              qword ptr [rsp + 7272], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n94_var_ref_α
n93_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7216], rax
                        mov              qword ptr [rsp + 7224], rdx;         jmp   n95_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      mov              qword ptr [rsp + 7232], 3            # result
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rsp + 7240], rax;         jmp   n96_lit_string_α
.Lx392_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       mov              qword ptr [rsp + 7248], 2            # result
                        mov              dword ptr [rsp + 7252], 1
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 7256], rax;         jmp   n97_call_builtin_prolog_α
.Lx393_0:               .quad            .Lx393_0_s
.Lx393_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7248]
                        mov              qword ptr [rsp + 7200], rax
                        mov              rax, qword ptr [rsp + 7256]
                        mov              qword ptr [rsp + 7208], rax
                        mov              rax, qword ptr [rsp + 7232]
                        mov              qword ptr [rsp + 7184], rax
                        mov              rax, qword ptr [rsp + 7240]
                        mov              qword ptr [rsp + 7192], rax
                        mov              rax, qword ptr [rsp + 7216]
                        mov              qword ptr [rsp + 7168], rax
                        mov              rax, qword ptr [rsp + 7224]
                        mov              qword ptr [rsp + 7176], rax
                        lea              rdi, [rsp + 7168]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 7152], rax
                        mov              qword ptr [rsp + 7160], rdx
                        cmp              eax, 104;                            je    n124_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_var_ref_α
n97_call_builtin_prolog_β:
                                                                              jmp   n124_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7008], rax
                        mov              qword ptr [rsp + 7016], rdx;         jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              qword ptr [rsp + 7136], 2            # result
                        mov              dword ptr [rsp + 7140], 1
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 7144], rax;         jmp   n100_var_ref_α
.Lx397_0:               .quad            .Lx397_0_s
.Lx397_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7024], rax
                        mov              qword ptr [rsp + 7032], rdx;         jmp   n101_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7040], rax
                        mov              qword ptr [rsp + 7048], rdx;         jmp   n102_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7040]
                        mov              qword ptr [rsp + 7104], rax
                        mov              rax, qword ptr [rsp + 7048]
                        mov              qword ptr [rsp + 7112], rax
                        mov              rax, qword ptr [rsp + 7024]
                        mov              qword ptr [rsp + 7088], rax
                        mov              rax, qword ptr [rsp + 7032]
                        mov              qword ptr [rsp + 7096], rax
                        mov              rax, qword ptr [rsp + 7136]
                        mov              qword ptr [rsp + 7072], rax
                        mov              rax, qword ptr [rsp + 7144]
                        mov              qword ptr [rsp + 7080], rax
                        lea              rdi, [rsp + 7072]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 7056], rax
                        mov              qword ptr [rsp + 7064], rdx
                        cmp              eax, 104;                            je    n123_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n103_call_builtin_prolog_α
n102_call_builtin_prolog_β:
                                                                              jmp   n123_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 7056]
                        mov              qword ptr [rsp + 6992], rax
                        mov              rax, qword ptr [rsp + 7064]
                        mov              qword ptr [rsp + 7000], rax
                        mov              rax, qword ptr [rsp + 7008]
                        mov              qword ptr [rsp + 6976], rax
                        mov              rax, qword ptr [rsp + 7016]
                        mov              qword ptr [rsp + 6984], rax
                        lea              rdi, [rsp + 6976]
                        lea              r8, [rsp + 6976]
.Lx403_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx403_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx403_41
                        cmp              esi, 1;                              jne   .Lx403_55
                        mov              r8, rax;                             jmp   .Lx403_40
.Lx403_55:              cmp              esi, 2;                              jne   .Lx403_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx403_41
                        mov              r8, rax;                             jmp   .Lx403_40
.Lx403_56:              cmp              eax, 72;                             jne   .Lx403_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx403_41
                        cmp              rax, r8;                             je    .Lx403_41
                        mov              r8, rax;                             jmp   .Lx403_40
.Lx403_41:              lea              r9, [rsp + 6992]
.Lx403_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx403_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx403_43
                        cmp              esi, 1;                              jne   .Lx403_57
                        mov              r9, rax;                             jmp   .Lx403_42
.Lx403_57:              cmp              esi, 2;                              jne   .Lx403_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx403_43
                        mov              r9, rax;                             jmp   .Lx403_42
.Lx403_58:              cmp              eax, 72;                             jne   .Lx403_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx403_43
                        cmp              rax, r9;                             je    .Lx403_43
                        mov              r9, rax;                             jmp   .Lx403_42
.Lx403_43:              cmp              r8, r9;                              je    .Lx403_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx403_44
                        cmp              eax, 104;                            je    .Lx403_44
                        cmp              eax, 72;                             jne   .Lx403_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx403_44
                                                                              jmp   .Lx403_45
.Lx403_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx403_53
                        cmp              eax, 104;                            je    .Lx403_53
                        cmp              eax, 72;                             jne   .Lx403_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx403_53
                                                                              jmp   .Lx403_46
.Lx403_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx403_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx403_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx403_51
.Lx403_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx403_47
                        cmp              eax, 104;                            je    .Lx403_47
                        cmp              eax, 72;                             jne   .Lx403_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx403_47
                                                                              jmp   .Lx403_48
.Lx403_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx403_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx403_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx403_51
.Lx403_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx403_49
                        cmp              edx, 80;                             je    .Lx403_53
                                                                              jmp   .Lx403_52
.Lx403_49:              cmp              edx, 80;                             je    .Lx403_52
                        cmp              ecx, 5;                              je    .Lx403_53
                        cmp              edx, 5;                              je    .Lx403_53
                        cmp              ecx, 3;                              jne   .Lx403_50
                        cmp              edx, 3;                              jne   .Lx403_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx403_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx403_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx403_51
                                                                              jmp   .Lx403_52
.Lx403_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx403_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx403_53
.Lx403_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx403_54
.Lx403_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx403_54
.Lx403_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx403_54:              mov              qword ptr [rsp + 6960], rax
                        mov              qword ptr [rsp + 6968], rdx
                        cmp              eax, 104;                            je    n123_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n104_var_ref_α
n103_call_builtin_prolog_β:
                                                                              jmp   n123_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 6928], rax
                        mov              qword ptr [rsp + 6936], rdx;         jmp   n105_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6944], rax
                        mov              qword ptr [rsp + 6952], rdx;         jmp   n106_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6944]
                        mov              qword ptr [rsp + 6912], rax
                        mov              rax, qword ptr [rsp + 6952]
                        mov              qword ptr [rsp + 6920], rax
                        mov              rax, qword ptr [rsp + 6928]
                        mov              qword ptr [rsp + 6896], rax
                        mov              rax, qword ptr [rsp + 6936]
                        mov              qword ptr [rsp + 6904], rax
                        lea              rdi, [rsp + 6896]
                        lea              r8, [rsp + 6896]
.Lx408_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx408_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx408_41
                        cmp              esi, 1;                              jne   .Lx408_55
                        mov              r8, rax;                             jmp   .Lx408_40
.Lx408_55:              cmp              esi, 2;                              jne   .Lx408_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx408_41
                        mov              r8, rax;                             jmp   .Lx408_40
.Lx408_56:              cmp              eax, 72;                             jne   .Lx408_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx408_41
                        cmp              rax, r8;                             je    .Lx408_41
                        mov              r8, rax;                             jmp   .Lx408_40
.Lx408_41:              lea              r9, [rsp + 6912]
.Lx408_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx408_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx408_43
                        cmp              esi, 1;                              jne   .Lx408_57
                        mov              r9, rax;                             jmp   .Lx408_42
.Lx408_57:              cmp              esi, 2;                              jne   .Lx408_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx408_43
                        mov              r9, rax;                             jmp   .Lx408_42
.Lx408_58:              cmp              eax, 72;                             jne   .Lx408_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx408_43
                        cmp              rax, r9;                             je    .Lx408_43
                        mov              r9, rax;                             jmp   .Lx408_42
.Lx408_43:              cmp              r8, r9;                              je    .Lx408_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx408_44
                        cmp              eax, 104;                            je    .Lx408_44
                        cmp              eax, 72;                             jne   .Lx408_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx408_44
                                                                              jmp   .Lx408_45
.Lx408_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx408_53
                        cmp              eax, 104;                            je    .Lx408_53
                        cmp              eax, 72;                             jne   .Lx408_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx408_53
                                                                              jmp   .Lx408_46
.Lx408_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx408_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx408_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx408_51
.Lx408_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx408_47
                        cmp              eax, 104;                            je    .Lx408_47
                        cmp              eax, 72;                             jne   .Lx408_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx408_47
                                                                              jmp   .Lx408_48
.Lx408_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx408_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx408_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx408_51
.Lx408_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx408_49
                        cmp              edx, 80;                             je    .Lx408_53
                                                                              jmp   .Lx408_52
.Lx408_49:              cmp              edx, 80;                             je    .Lx408_52
                        cmp              ecx, 5;                              je    .Lx408_53
                        cmp              edx, 5;                              je    .Lx408_53
                        cmp              ecx, 3;                              jne   .Lx408_50
                        cmp              edx, 3;                              jne   .Lx408_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx408_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx408_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx408_51
                                                                              jmp   .Lx408_52
.Lx408_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx408_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx408_53
.Lx408_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx408_54
.Lx408_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx408_54
.Lx408_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx408_54:              mov              qword ptr [rsp + 6880], rax
                        mov              qword ptr [rsp + 6888], rdx
                        cmp              eax, 104;                            je    n123_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n107_var_ref_α
n106_call_builtin_prolog_β:
                                                                              jmp   n123_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 6736], rax
                        mov              qword ptr [rsp + 6744], rdx;         jmp   n108_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      mov              qword ptr [rsp + 6864], 2            # result
                        mov              dword ptr [rsp + 6868], 1
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 6872], rax;         jmp   n109_var_ref_α
.Lx411_0:               .quad            .Lx411_0_s
.Lx411_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 6752], rax
                        mov              qword ptr [rsp + 6760], rdx;         jmp   n110_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 6768], rax
                        mov              qword ptr [rsp + 6776], rdx;         jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6768]
                        mov              qword ptr [rsp + 6832], rax
                        mov              rax, qword ptr [rsp + 6776]
                        mov              qword ptr [rsp + 6840], rax
                        mov              rax, qword ptr [rsp + 6752]
                        mov              qword ptr [rsp + 6816], rax
                        mov              rax, qword ptr [rsp + 6760]
                        mov              qword ptr [rsp + 6824], rax
                        mov              rax, qword ptr [rsp + 6864]
                        mov              qword ptr [rsp + 6800], rax
                        mov              rax, qword ptr [rsp + 6872]
                        mov              qword ptr [rsp + 6808], rax
                        lea              rdi, [rsp + 6800]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 6784], rax
                        mov              qword ptr [rsp + 6792], rdx
                        cmp              eax, 104;                            je    n123_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n112_call_builtin_prolog_α
n111_call_builtin_prolog_β:
                                                                              jmp   n123_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6784]
                        mov              qword ptr [rsp + 6720], rax
                        mov              rax, qword ptr [rsp + 6792]
                        mov              qword ptr [rsp + 6728], rax
                        mov              rax, qword ptr [rsp + 6736]
                        mov              qword ptr [rsp + 6704], rax
                        mov              rax, qword ptr [rsp + 6744]
                        mov              qword ptr [rsp + 6712], rax
                        lea              rdi, [rsp + 6704]
                        lea              r8, [rsp + 6704]
.Lx417_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx417_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx417_41
                        cmp              esi, 1;                              jne   .Lx417_55
                        mov              r8, rax;                             jmp   .Lx417_40
.Lx417_55:              cmp              esi, 2;                              jne   .Lx417_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx417_41
                        mov              r8, rax;                             jmp   .Lx417_40
.Lx417_56:              cmp              eax, 72;                             jne   .Lx417_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx417_41
                        cmp              rax, r8;                             je    .Lx417_41
                        mov              r8, rax;                             jmp   .Lx417_40
.Lx417_41:              lea              r9, [rsp + 6720]
.Lx417_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx417_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx417_43
                        cmp              esi, 1;                              jne   .Lx417_57
                        mov              r9, rax;                             jmp   .Lx417_42
.Lx417_57:              cmp              esi, 2;                              jne   .Lx417_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx417_43
                        mov              r9, rax;                             jmp   .Lx417_42
.Lx417_58:              cmp              eax, 72;                             jne   .Lx417_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx417_43
                        cmp              rax, r9;                             je    .Lx417_43
                        mov              r9, rax;                             jmp   .Lx417_42
.Lx417_43:              cmp              r8, r9;                              je    .Lx417_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx417_44
                        cmp              eax, 104;                            je    .Lx417_44
                        cmp              eax, 72;                             jne   .Lx417_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx417_44
                                                                              jmp   .Lx417_45
.Lx417_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx417_53
                        cmp              eax, 104;                            je    .Lx417_53
                        cmp              eax, 72;                             jne   .Lx417_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx417_53
                                                                              jmp   .Lx417_46
.Lx417_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx417_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx417_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx417_51
.Lx417_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx417_47
                        cmp              eax, 104;                            je    .Lx417_47
                        cmp              eax, 72;                             jne   .Lx417_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx417_47
                                                                              jmp   .Lx417_48
.Lx417_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx417_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx417_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx417_51
.Lx417_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx417_49
                        cmp              edx, 80;                             je    .Lx417_53
                                                                              jmp   .Lx417_52
.Lx417_49:              cmp              edx, 80;                             je    .Lx417_52
                        cmp              ecx, 5;                              je    .Lx417_53
                        cmp              edx, 5;                              je    .Lx417_53
                        cmp              ecx, 3;                              jne   .Lx417_50
                        cmp              edx, 3;                              jne   .Lx417_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx417_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx417_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx417_51
                                                                              jmp   .Lx417_52
.Lx417_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx417_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx417_53
.Lx417_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx417_54
.Lx417_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx417_54
.Lx417_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx417_54:              mov              qword ptr [rsp + 6688], rax
                        mov              qword ptr [rsp + 6696], rdx
                        cmp              eax, 104;                            je    n123_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n113_cut_α
n112_call_builtin_prolog_β:
                                                                              jmp   n123_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n113_cut_α:                                                                   jmp   n114_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 6640], rax
                        mov              qword ptr [rsp + 6648], rdx;         jmp   n115_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6656], rax
                        mov              qword ptr [rsp + 6664], rdx;         jmp   n116_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 6672], rax
                        mov              qword ptr [rsp + 6680], rdx;         jmp   n117_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n117_call_proc_staged_α:
                        lea              rsi, [rsp + 6640]
                        lea              rdx, [rsp + 6656]
                        lea              rcx, [rsp + 6672]
                        call             d$2F3_dcα;                           jmp   .Lx426_2
.Lx426_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx426_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6560], rax
                        mov              qword ptr [rsp + 6568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 6560]
                        mov              rdx, qword ptr [rsp + 6568]
.Lx426_29:              mov              qword ptr [rsp + 6560], rax
                        mov              qword ptr [rsp + 6568], rdx
                        cmp              eax, 104;                            je    n340_call_builtin_prolog_α
                                                                              jmp   n118_var_ref_α
n117_call_proc_staged_β:
                                                                              jmp   n340_call_builtin_prolog_α
.Lx426_0:               .quad            .Lx426_0_s
.Lx426_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 6512], rax
                        mov              qword ptr [rsp + 6520], rdx;         jmp   n119_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6528], rax
                        mov              qword ptr [rsp + 6536], rdx;         jmp   n120_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 6544], rax
                        mov              qword ptr [rsp + 6552], rdx;         jmp   n121_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_proc_staged_α:
                        lea              rsi, [rsp + 6512]
                        lea              rdx, [rsp + 6528]
                        lea              rcx, [rsp + 6544]
                        call             d$2F3_dcα;                           jmp   .Lx434_2
.Lx434_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx434_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 6432], rax
                        mov              qword ptr [rsp + 6440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 6432]
                        mov              rdx, qword ptr [rsp + 6440]
.Lx434_29:              mov              qword ptr [rsp + 6432], rax
                        mov              qword ptr [rsp + 6440], rdx
                        cmp              eax, 104;                            je    n117_call_proc_staged_β
                                                                              jmp   n122_move_label_α
n121_call_proc_staged_β:
                                                                              jmp   n117_call_proc_staged_β
.Lx434_0:               .quad            .Lx434_0_s
.Lx434_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n122_move_label_α:      lea              rax, [rip + n121_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n123_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 6416], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 6424], rax
                        lea              rdi, [rsp + 6416]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 6400], rax
                        mov              qword ptr [rsp + 6408], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n124_var_ref_α
n123_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 6352], rax
                        mov              qword ptr [rsp + 6360], rdx;         jmp   n125_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:     mov              qword ptr [rsp + 6368], 3            # result
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rsp + 6376], rax;         jmp   n126_lit_string_α
.Lx440_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      mov              qword ptr [rsp + 6384], 2            # result
                        mov              dword ptr [rsp + 6388], 1
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 6392], rax;         jmp   n127_call_builtin_prolog_α
.Lx441_0:               .quad            .Lx441_0_s
.Lx441_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6384]
                        mov              qword ptr [rsp + 6336], rax
                        mov              rax, qword ptr [rsp + 6392]
                        mov              qword ptr [rsp + 6344], rax
                        mov              rax, qword ptr [rsp + 6368]
                        mov              qword ptr [rsp + 6320], rax
                        mov              rax, qword ptr [rsp + 6376]
                        mov              qword ptr [rsp + 6328], rax
                        mov              rax, qword ptr [rsp + 6352]
                        mov              qword ptr [rsp + 6304], rax
                        mov              rax, qword ptr [rsp + 6360]
                        mov              qword ptr [rsp + 6312], rax
                        lea              rdi, [rsp + 6304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 6288], rax
                        mov              qword ptr [rsp + 6296], rdx
                        cmp              eax, 104;                            je    n160_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n128_var_ref_α
n127_call_builtin_prolog_β:
                                                                              jmp   n160_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 6144], rax
                        mov              qword ptr [rsp + 6152], rdx;         jmp   n129_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:      mov              qword ptr [rsp + 6272], 2            # result
                        mov              dword ptr [rsp + 6276], 1
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rsp + 6280], rax;         jmp   n130_var_ref_α
.Lx445_0:               .quad            .Lx445_0_s
.Lx445_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 6160], rax
                        mov              qword ptr [rsp + 6168], rdx;         jmp   n131_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 6176], rax
                        mov              qword ptr [rsp + 6184], rdx;         jmp   n132_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6176]
                        mov              qword ptr [rsp + 6240], rax
                        mov              rax, qword ptr [rsp + 6184]
                        mov              qword ptr [rsp + 6248], rax
                        mov              rax, qword ptr [rsp + 6160]
                        mov              qword ptr [rsp + 6224], rax
                        mov              rax, qword ptr [rsp + 6168]
                        mov              qword ptr [rsp + 6232], rax
                        mov              rax, qword ptr [rsp + 6272]
                        mov              qword ptr [rsp + 6208], rax
                        mov              rax, qword ptr [rsp + 6280]
                        mov              qword ptr [rsp + 6216], rax
                        lea              rdi, [rsp + 6208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 6192], rax
                        mov              qword ptr [rsp + 6200], rdx
                        cmp              eax, 104;                            je    n159_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n133_call_builtin_prolog_α
n132_call_builtin_prolog_β:
                                                                              jmp   n159_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6192]
                        mov              qword ptr [rsp + 6128], rax
                        mov              rax, qword ptr [rsp + 6200]
                        mov              qword ptr [rsp + 6136], rax
                        mov              rax, qword ptr [rsp + 6144]
                        mov              qword ptr [rsp + 6112], rax
                        mov              rax, qword ptr [rsp + 6152]
                        mov              qword ptr [rsp + 6120], rax
                        lea              rdi, [rsp + 6112]
                        lea              r8, [rsp + 6112]
.Lx451_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx451_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx451_41
                        cmp              esi, 1;                              jne   .Lx451_55
                        mov              r8, rax;                             jmp   .Lx451_40
.Lx451_55:              cmp              esi, 2;                              jne   .Lx451_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx451_41
                        mov              r8, rax;                             jmp   .Lx451_40
.Lx451_56:              cmp              eax, 72;                             jne   .Lx451_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx451_41
                        cmp              rax, r8;                             je    .Lx451_41
                        mov              r8, rax;                             jmp   .Lx451_40
.Lx451_41:              lea              r9, [rsp + 6128]
.Lx451_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx451_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx451_43
                        cmp              esi, 1;                              jne   .Lx451_57
                        mov              r9, rax;                             jmp   .Lx451_42
.Lx451_57:              cmp              esi, 2;                              jne   .Lx451_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx451_43
                        mov              r9, rax;                             jmp   .Lx451_42
.Lx451_58:              cmp              eax, 72;                             jne   .Lx451_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx451_43
                        cmp              rax, r9;                             je    .Lx451_43
                        mov              r9, rax;                             jmp   .Lx451_42
.Lx451_43:              cmp              r8, r9;                              je    .Lx451_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx451_44
                        cmp              eax, 104;                            je    .Lx451_44
                        cmp              eax, 72;                             jne   .Lx451_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx451_44
                                                                              jmp   .Lx451_45
.Lx451_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx451_53
                        cmp              eax, 104;                            je    .Lx451_53
                        cmp              eax, 72;                             jne   .Lx451_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx451_53
                                                                              jmp   .Lx451_46
.Lx451_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx451_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx451_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx451_51
.Lx451_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx451_47
                        cmp              eax, 104;                            je    .Lx451_47
                        cmp              eax, 72;                             jne   .Lx451_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx451_47
                                                                              jmp   .Lx451_48
.Lx451_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx451_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx451_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx451_51
.Lx451_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx451_49
                        cmp              edx, 80;                             je    .Lx451_53
                                                                              jmp   .Lx451_52
.Lx451_49:              cmp              edx, 80;                             je    .Lx451_52
                        cmp              ecx, 5;                              je    .Lx451_53
                        cmp              edx, 5;                              je    .Lx451_53
                        cmp              ecx, 3;                              jne   .Lx451_50
                        cmp              edx, 3;                              jne   .Lx451_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx451_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx451_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx451_51
                                                                              jmp   .Lx451_52
.Lx451_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx451_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx451_53
.Lx451_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx451_54
.Lx451_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx451_54
.Lx451_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx451_54:              mov              qword ptr [rsp + 6096], rax
                        mov              qword ptr [rsp + 6104], rdx
                        cmp              eax, 104;                            je    n159_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n134_var_ref_α
n133_call_builtin_prolog_β:
                                                                              jmp   n159_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 6064], rax
                        mov              qword ptr [rsp + 6072], rdx;         jmp   n135_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6080], rax
                        mov              qword ptr [rsp + 6088], rdx;         jmp   n136_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 6080]
                        mov              qword ptr [rsp + 6048], rax
                        mov              rax, qword ptr [rsp + 6088]
                        mov              qword ptr [rsp + 6056], rax
                        mov              rax, qword ptr [rsp + 6064]
                        mov              qword ptr [rsp + 6032], rax
                        mov              rax, qword ptr [rsp + 6072]
                        mov              qword ptr [rsp + 6040], rax
                        lea              rdi, [rsp + 6032]
                        lea              r8, [rsp + 6032]
.Lx456_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx456_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx456_41
                        cmp              esi, 1;                              jne   .Lx456_55
                        mov              r8, rax;                             jmp   .Lx456_40
.Lx456_55:              cmp              esi, 2;                              jne   .Lx456_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx456_41
                        mov              r8, rax;                             jmp   .Lx456_40
.Lx456_56:              cmp              eax, 72;                             jne   .Lx456_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx456_41
                        cmp              rax, r8;                             je    .Lx456_41
                        mov              r8, rax;                             jmp   .Lx456_40
.Lx456_41:              lea              r9, [rsp + 6048]
.Lx456_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx456_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx456_43
                        cmp              esi, 1;                              jne   .Lx456_57
                        mov              r9, rax;                             jmp   .Lx456_42
.Lx456_57:              cmp              esi, 2;                              jne   .Lx456_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx456_43
                        mov              r9, rax;                             jmp   .Lx456_42
.Lx456_58:              cmp              eax, 72;                             jne   .Lx456_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx456_43
                        cmp              rax, r9;                             je    .Lx456_43
                        mov              r9, rax;                             jmp   .Lx456_42
.Lx456_43:              cmp              r8, r9;                              je    .Lx456_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx456_44
                        cmp              eax, 104;                            je    .Lx456_44
                        cmp              eax, 72;                             jne   .Lx456_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx456_44
                                                                              jmp   .Lx456_45
.Lx456_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx456_53
                        cmp              eax, 104;                            je    .Lx456_53
                        cmp              eax, 72;                             jne   .Lx456_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx456_53
                                                                              jmp   .Lx456_46
.Lx456_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx456_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx456_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx456_51
.Lx456_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx456_47
                        cmp              eax, 104;                            je    .Lx456_47
                        cmp              eax, 72;                             jne   .Lx456_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx456_47
                                                                              jmp   .Lx456_48
.Lx456_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx456_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx456_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx456_51
.Lx456_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx456_49
                        cmp              edx, 80;                             je    .Lx456_53
                                                                              jmp   .Lx456_52
.Lx456_49:              cmp              edx, 80;                             je    .Lx456_52
                        cmp              ecx, 5;                              je    .Lx456_53
                        cmp              edx, 5;                              je    .Lx456_53
                        cmp              ecx, 3;                              jne   .Lx456_50
                        cmp              edx, 3;                              jne   .Lx456_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx456_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx456_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx456_51
                                                                              jmp   .Lx456_52
.Lx456_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx456_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx456_53
.Lx456_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx456_54
.Lx456_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx456_54
.Lx456_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx456_54:              mov              qword ptr [rsp + 6016], rax
                        mov              qword ptr [rsp + 6024], rdx
                        cmp              eax, 104;                            je    n159_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n137_var_ref_α
n136_call_builtin_prolog_β:
                                                                              jmp   n159_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 5648], rax
                        mov              qword ptr [rsp + 5656], rdx;         jmp   n138_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      mov              qword ptr [rsp + 6000], 2            # result
                        mov              dword ptr [rsp + 6004], 1
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 6008], rax;         jmp   n139_lit_string_α
.Lx459_0:               .quad            .Lx459_0_s
.Lx459_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:      mov              qword ptr [rsp + 5776], 2            # result
                        mov              dword ptr [rsp + 5780], 1
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rsp + 5784], rax;         jmp   n140_var_ref_α
.Lx460_0:               .quad            .Lx460_0_s
.Lx460_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx;         jmp   n141_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5680], rax
                        mov              qword ptr [rsp + 5688], rdx;         jmp   n142_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n142_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 5744], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 5752], rax
                        mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 5728], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 5736], rax
                        mov              rax, qword ptr [rsp + 5776]
                        mov              qword ptr [rsp + 5712], rax
                        mov              rax, qword ptr [rsp + 5784]
                        mov              qword ptr [rsp + 5720], rax
                        lea              rdi, [rsp + 5712]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5696], rax
                        mov              qword ptr [rsp + 5704], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n143_lit_string_α
n142_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:      mov              qword ptr [rsp + 5904], 2            # result
                        mov              dword ptr [rsp + 5908], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rsp + 5912], rax;         jmp   n144_var_ref_α
.Lx466_0:               .quad            .Lx466_0_s
.Lx466_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5792], rax
                        mov              qword ptr [rsp + 5800], rdx;         jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 5808], rax
                        mov              qword ptr [rsp + 5816], rdx;         jmp   n146_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5808]
                        mov              qword ptr [rsp + 5872], rax
                        mov              rax, qword ptr [rsp + 5816]
                        mov              qword ptr [rsp + 5880], rax
                        mov              rax, qword ptr [rsp + 5792]
                        mov              qword ptr [rsp + 5856], rax
                        mov              rax, qword ptr [rsp + 5800]
                        mov              qword ptr [rsp + 5864], rax
                        mov              rax, qword ptr [rsp + 5904]
                        mov              qword ptr [rsp + 5840], rax
                        mov              rax, qword ptr [rsp + 5912]
                        mov              qword ptr [rsp + 5848], rax
                        lea              rdi, [rsp + 5840]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5824], rax
                        mov              qword ptr [rsp + 5832], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n147_call_builtin_prolog_α
n146_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5824]
                        mov              qword ptr [rsp + 5968], rax
                        mov              rax, qword ptr [rsp + 5832]
                        mov              qword ptr [rsp + 5976], rax
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 5952], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 5960], rax
                        mov              rax, qword ptr [rsp + 6000]
                        mov              qword ptr [rsp + 5936], rax
                        mov              rax, qword ptr [rsp + 6008]
                        mov              qword ptr [rsp + 5944], rax
                        lea              rdi, [rsp + 5936]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5920], rax
                        mov              qword ptr [rsp + 5928], rdx
                        cmp              eax, 104;                            je    n159_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n148_call_builtin_prolog_α
n147_call_builtin_prolog_β:
                                                                              jmp   n159_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5920]
                        mov              qword ptr [rsp + 5632], rax
                        mov              rax, qword ptr [rsp + 5928]
                        mov              qword ptr [rsp + 5640], rax
                        mov              rax, qword ptr [rsp + 5648]
                        mov              qword ptr [rsp + 5616], rax
                        mov              rax, qword ptr [rsp + 5656]
                        mov              qword ptr [rsp + 5624], rax
                        lea              rdi, [rsp + 5616]
                        lea              r8, [rsp + 5616]
.Lx473_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx473_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx473_41
                        cmp              esi, 1;                              jne   .Lx473_55
                        mov              r8, rax;                             jmp   .Lx473_40
.Lx473_55:              cmp              esi, 2;                              jne   .Lx473_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx473_41
                        mov              r8, rax;                             jmp   .Lx473_40
.Lx473_56:              cmp              eax, 72;                             jne   .Lx473_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx473_41
                        cmp              rax, r8;                             je    .Lx473_41
                        mov              r8, rax;                             jmp   .Lx473_40
.Lx473_41:              lea              r9, [rsp + 5632]
.Lx473_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx473_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx473_43
                        cmp              esi, 1;                              jne   .Lx473_57
                        mov              r9, rax;                             jmp   .Lx473_42
.Lx473_57:              cmp              esi, 2;                              jne   .Lx473_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx473_43
                        mov              r9, rax;                             jmp   .Lx473_42
.Lx473_58:              cmp              eax, 72;                             jne   .Lx473_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx473_43
                        cmp              rax, r9;                             je    .Lx473_43
                        mov              r9, rax;                             jmp   .Lx473_42
.Lx473_43:              cmp              r8, r9;                              je    .Lx473_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx473_44
                        cmp              eax, 104;                            je    .Lx473_44
                        cmp              eax, 72;                             jne   .Lx473_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx473_44
                                                                              jmp   .Lx473_45
.Lx473_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx473_53
                        cmp              eax, 104;                            je    .Lx473_53
                        cmp              eax, 72;                             jne   .Lx473_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx473_53
                                                                              jmp   .Lx473_46
.Lx473_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx473_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx473_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx473_51
.Lx473_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx473_47
                        cmp              eax, 104;                            je    .Lx473_47
                        cmp              eax, 72;                             jne   .Lx473_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx473_47
                                                                              jmp   .Lx473_48
.Lx473_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx473_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx473_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx473_51
.Lx473_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx473_49
                        cmp              edx, 80;                             je    .Lx473_53
                                                                              jmp   .Lx473_52
.Lx473_49:              cmp              edx, 80;                             je    .Lx473_52
                        cmp              ecx, 5;                              je    .Lx473_53
                        cmp              edx, 5;                              je    .Lx473_53
                        cmp              ecx, 3;                              jne   .Lx473_50
                        cmp              edx, 3;                              jne   .Lx473_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx473_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx473_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx473_51
                                                                              jmp   .Lx473_52
.Lx473_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx473_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx473_53
.Lx473_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx473_54
.Lx473_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx473_54
.Lx473_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx473_54:              mov              qword ptr [rsp + 5600], rax
                        mov              qword ptr [rsp + 5608], rdx
                        cmp              eax, 104;                            je    n159_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n149_cut_α
n148_call_builtin_prolog_β:
                                                                              jmp   n159_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n149_cut_α:                                                                   jmp   n150_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5552], rax
                        mov              qword ptr [rsp + 5560], rdx;         jmp   n151_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 5568], rax
                        mov              qword ptr [rsp + 5576], rdx;         jmp   n152_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 5584], rax
                        mov              qword ptr [rsp + 5592], rdx;         jmp   n153_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_proc_staged_α:
                        lea              rsi, [rsp + 5552]
                        lea              rdx, [rsp + 5568]
                        lea              rcx, [rsp + 5584]
                        call             d$2F3_dcα;                           jmp   .Lx482_2
.Lx482_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx482_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 5472]
                        mov              rdx, qword ptr [rsp + 5480]
.Lx482_29:              mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx
                        cmp              eax, 104;                            je    n340_call_builtin_prolog_α
                                                                              jmp   n154_var_ref_α
n153_call_proc_staged_β:
                                                                              jmp   n340_call_builtin_prolog_α
.Lx482_0:               .quad            .Lx482_0_s
.Lx482_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5424], rax
                        mov              qword ptr [rsp + 5432], rdx;         jmp   n155_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 5440], rax
                        mov              qword ptr [rsp + 5448], rdx;         jmp   n156_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 5456], rax
                        mov              qword ptr [rsp + 5464], rdx;         jmp   n157_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_proc_staged_α:
                        lea              rsi, [rsp + 5424]
                        lea              rdx, [rsp + 5440]
                        lea              rcx, [rsp + 5456]
                        call             d$2F3_dcα;                           jmp   .Lx490_2
.Lx490_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx490_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 5344], rax
                        mov              qword ptr [rsp + 5352], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 5344]
                        mov              rdx, qword ptr [rsp + 5352]
.Lx490_29:              mov              qword ptr [rsp + 5344], rax
                        mov              qword ptr [rsp + 5352], rdx
                        cmp              eax, 104;                            je    n153_call_proc_staged_β
                                                                              jmp   n158_move_label_α
n157_call_proc_staged_β:
                                                                              jmp   n153_call_proc_staged_β
.Lx490_0:               .quad            .Lx490_0_s
.Lx490_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n158_move_label_α:      lea              rax, [rip + n157_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n159_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 5328], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 5336], rax
                        lea              rdi, [rsp + 5328]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5312], rax
                        mov              qword ptr [rsp + 5320], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n160_var_ref_α
n159_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5264], rax
                        mov              qword ptr [rsp + 5272], rdx;         jmp   n161_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:     mov              qword ptr [rsp + 5280], 3            # result
                        mov              rax, qword ptr [rip + .Lx496_0]
                        mov              qword ptr [rsp + 5288], rax;         jmp   n162_lit_string_α
.Lx496_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      mov              qword ptr [rsp + 5296], 2            # result
                        mov              dword ptr [rsp + 5300], 1
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rsp + 5304], rax;         jmp   n163_call_builtin_prolog_α
.Lx497_0:               .quad            .Lx497_0_s
.Lx497_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5296]
                        mov              qword ptr [rsp + 5248], rax
                        mov              rax, qword ptr [rsp + 5304]
                        mov              qword ptr [rsp + 5256], rax
                        mov              rax, qword ptr [rsp + 5280]
                        mov              qword ptr [rsp + 5232], rax
                        mov              rax, qword ptr [rsp + 5288]
                        mov              qword ptr [rsp + 5240], rax
                        mov              rax, qword ptr [rsp + 5264]
                        mov              qword ptr [rsp + 5216], rax
                        mov              rax, qword ptr [rsp + 5272]
                        mov              qword ptr [rsp + 5224], rax
                        lea              rdi, [rsp + 5216]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5200], rax
                        mov              qword ptr [rsp + 5208], rdx
                        cmp              eax, 104;                            je    n202_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n164_var_ref_α
n163_call_builtin_prolog_β:
                                                                              jmp   n202_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5056], rax
                        mov              qword ptr [rsp + 5064], rdx;         jmp   n165_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      mov              qword ptr [rsp + 5184], 2            # result
                        mov              dword ptr [rsp + 5188], 1
                        mov              rax, qword ptr [rip + .Lx501_0]
                        mov              qword ptr [rsp + 5192], rax;         jmp   n166_var_ref_α
.Lx501_0:               .quad            .Lx501_0_s
.Lx501_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5072], rax
                        mov              qword ptr [rsp + 5080], rdx;         jmp   n167_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5088], rax
                        mov              qword ptr [rsp + 5096], rdx;         jmp   n168_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n168_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5088]
                        mov              qword ptr [rsp + 5152], rax
                        mov              rax, qword ptr [rsp + 5096]
                        mov              qword ptr [rsp + 5160], rax
                        mov              rax, qword ptr [rsp + 5072]
                        mov              qword ptr [rsp + 5136], rax
                        mov              rax, qword ptr [rsp + 5080]
                        mov              qword ptr [rsp + 5144], rax
                        mov              rax, qword ptr [rsp + 5184]
                        mov              qword ptr [rsp + 5120], rax
                        mov              rax, qword ptr [rsp + 5192]
                        mov              qword ptr [rsp + 5128], rax
                        lea              rdi, [rsp + 5120]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5104], rax
                        mov              qword ptr [rsp + 5112], rdx
                        cmp              eax, 104;                            je    n201_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n169_call_builtin_prolog_α
n168_call_builtin_prolog_β:
                                                                              jmp   n201_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n169_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 5104]
                        mov              qword ptr [rsp + 5040], rax
                        mov              rax, qword ptr [rsp + 5112]
                        mov              qword ptr [rsp + 5048], rax
                        mov              rax, qword ptr [rsp + 5056]
                        mov              qword ptr [rsp + 5024], rax
                        mov              rax, qword ptr [rsp + 5064]
                        mov              qword ptr [rsp + 5032], rax
                        lea              rdi, [rsp + 5024]
                        lea              r8, [rsp + 5024]
.Lx507_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx507_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx507_41
                        cmp              esi, 1;                              jne   .Lx507_55
                        mov              r8, rax;                             jmp   .Lx507_40
.Lx507_55:              cmp              esi, 2;                              jne   .Lx507_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx507_41
                        mov              r8, rax;                             jmp   .Lx507_40
.Lx507_56:              cmp              eax, 72;                             jne   .Lx507_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx507_41
                        cmp              rax, r8;                             je    .Lx507_41
                        mov              r8, rax;                             jmp   .Lx507_40
.Lx507_41:              lea              r9, [rsp + 5040]
.Lx507_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx507_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx507_43
                        cmp              esi, 1;                              jne   .Lx507_57
                        mov              r9, rax;                             jmp   .Lx507_42
.Lx507_57:              cmp              esi, 2;                              jne   .Lx507_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx507_43
                        mov              r9, rax;                             jmp   .Lx507_42
.Lx507_58:              cmp              eax, 72;                             jne   .Lx507_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx507_43
                        cmp              rax, r9;                             je    .Lx507_43
                        mov              r9, rax;                             jmp   .Lx507_42
.Lx507_43:              cmp              r8, r9;                              je    .Lx507_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx507_44
                        cmp              eax, 104;                            je    .Lx507_44
                        cmp              eax, 72;                             jne   .Lx507_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx507_44
                                                                              jmp   .Lx507_45
.Lx507_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx507_53
                        cmp              eax, 104;                            je    .Lx507_53
                        cmp              eax, 72;                             jne   .Lx507_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx507_53
                                                                              jmp   .Lx507_46
.Lx507_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx507_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx507_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx507_51
.Lx507_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx507_47
                        cmp              eax, 104;                            je    .Lx507_47
                        cmp              eax, 72;                             jne   .Lx507_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx507_47
                                                                              jmp   .Lx507_48
.Lx507_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx507_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx507_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx507_51
.Lx507_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx507_49
                        cmp              edx, 80;                             je    .Lx507_53
                                                                              jmp   .Lx507_52
.Lx507_49:              cmp              edx, 80;                             je    .Lx507_52
                        cmp              ecx, 5;                              je    .Lx507_53
                        cmp              edx, 5;                              je    .Lx507_53
                        cmp              ecx, 3;                              jne   .Lx507_50
                        cmp              edx, 3;                              jne   .Lx507_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx507_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx507_51
                                                                              jmp   .Lx507_52
.Lx507_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx507_53
.Lx507_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx507_54
.Lx507_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx507_54
.Lx507_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx507_54:              mov              qword ptr [rsp + 5008], rax
                        mov              qword ptr [rsp + 5016], rdx
                        cmp              eax, 104;                            je    n201_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n170_var_ref_α
n169_call_builtin_prolog_β:
                                                                              jmp   n201_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4976], rax
                        mov              qword ptr [rsp + 4984], rdx;         jmp   n171_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx;         jmp   n172_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n172_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4992]
                        mov              qword ptr [rsp + 4960], rax
                        mov              rax, qword ptr [rsp + 5000]
                        mov              qword ptr [rsp + 4968], rax
                        mov              rax, qword ptr [rsp + 4976]
                        mov              qword ptr [rsp + 4944], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 4952], rax
                        lea              rdi, [rsp + 4944]
                        lea              r8, [rsp + 4944]
.Lx512_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx512_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx512_41
                        cmp              esi, 1;                              jne   .Lx512_55
                        mov              r8, rax;                             jmp   .Lx512_40
.Lx512_55:              cmp              esi, 2;                              jne   .Lx512_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx512_41
                        mov              r8, rax;                             jmp   .Lx512_40
.Lx512_56:              cmp              eax, 72;                             jne   .Lx512_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx512_41
                        cmp              rax, r8;                             je    .Lx512_41
                        mov              r8, rax;                             jmp   .Lx512_40
.Lx512_41:              lea              r9, [rsp + 4960]
.Lx512_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx512_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx512_43
                        cmp              esi, 1;                              jne   .Lx512_57
                        mov              r9, rax;                             jmp   .Lx512_42
.Lx512_57:              cmp              esi, 2;                              jne   .Lx512_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx512_43
                        mov              r9, rax;                             jmp   .Lx512_42
.Lx512_58:              cmp              eax, 72;                             jne   .Lx512_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx512_43
                        cmp              rax, r9;                             je    .Lx512_43
                        mov              r9, rax;                             jmp   .Lx512_42
.Lx512_43:              cmp              r8, r9;                              je    .Lx512_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx512_44
                        cmp              eax, 104;                            je    .Lx512_44
                        cmp              eax, 72;                             jne   .Lx512_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx512_44
                                                                              jmp   .Lx512_45
.Lx512_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx512_53
                        cmp              eax, 104;                            je    .Lx512_53
                        cmp              eax, 72;                             jne   .Lx512_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx512_53
                                                                              jmp   .Lx512_46
.Lx512_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx512_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx512_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx512_51
.Lx512_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx512_47
                        cmp              eax, 104;                            je    .Lx512_47
                        cmp              eax, 72;                             jne   .Lx512_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx512_47
                                                                              jmp   .Lx512_48
.Lx512_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx512_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx512_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx512_51
.Lx512_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx512_49
                        cmp              edx, 80;                             je    .Lx512_53
                                                                              jmp   .Lx512_52
.Lx512_49:              cmp              edx, 80;                             je    .Lx512_52
                        cmp              ecx, 5;                              je    .Lx512_53
                        cmp              edx, 5;                              je    .Lx512_53
                        cmp              ecx, 3;                              jne   .Lx512_50
                        cmp              edx, 3;                              jne   .Lx512_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx512_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx512_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx512_51
                                                                              jmp   .Lx512_52
.Lx512_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx512_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx512_53
.Lx512_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx512_54
.Lx512_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx512_54
.Lx512_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx512_54:              mov              qword ptr [rsp + 4928], rax
                        mov              qword ptr [rsp + 4936], rdx
                        cmp              eax, 104;                            je    n201_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n173_var_ref_α
n172_call_builtin_prolog_β:
                                                                              jmp   n201_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx;         jmp   n174_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              qword ptr [rsp + 4912], 2            # result
                        mov              dword ptr [rsp + 4916], 1
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rsp + 4920], rax;         jmp   n175_lit_string_α
.Lx515_0:               .quad            .Lx515_0_s
.Lx515_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:      mov              qword ptr [rsp + 4688], 2            # result
                        mov              dword ptr [rsp + 4692], 1
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rsp + 4696], rax;         jmp   n176_lit_string_α
.Lx516_0:               .quad            .Lx516_0_s
.Lx516_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:      mov              qword ptr [rsp + 4464], 2            # result
                        mov              dword ptr [rsp + 4468], 1
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rsp + 4472], rax;         jmp   n177_var_ref_α
.Lx517_0:               .quad            .Lx517_0_s
.Lx517_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx;         jmp   n178_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4368], rax
                        mov              qword ptr [rsp + 4376], rdx;         jmp   n179_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n179_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 4432], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 4440], rax
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 4416], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 4424], rax
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 4408], rax
                        lea              rdi, [rsp + 4400]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4384], rax
                        mov              qword ptr [rsp + 4392], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n180_lit_string_α
n179_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:      mov              qword ptr [rsp + 4592], 2            # result
                        mov              dword ptr [rsp + 4596], 1
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rsp + 4600], rax;         jmp   n181_var_ref_α
.Lx523_0:               .quad            .Lx523_0_s
.Lx523_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx;         jmp   n182_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx;         jmp   n183_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4496]
                        mov              qword ptr [rsp + 4560], rax
                        mov              rax, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 4568], rax
                        mov              rax, qword ptr [rsp + 4480]
                        mov              qword ptr [rsp + 4544], rax
                        mov              rax, qword ptr [rsp + 4488]
                        mov              qword ptr [rsp + 4552], rax
                        mov              rax, qword ptr [rsp + 4592]
                        mov              qword ptr [rsp + 4528], rax
                        mov              rax, qword ptr [rsp + 4600]
                        mov              qword ptr [rsp + 4536], rax
                        lea              rdi, [rsp + 4528]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4512], rax
                        mov              qword ptr [rsp + 4520], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n184_call_builtin_prolog_α
n183_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4512]
                        mov              qword ptr [rsp + 4656], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 4664], rax
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 4640], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 4648], rax
                        mov              rax, qword ptr [rsp + 4688]
                        mov              qword ptr [rsp + 4624], rax
                        mov              rax, qword ptr [rsp + 4696]
                        mov              qword ptr [rsp + 4632], rax
                        lea              rdi, [rsp + 4624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4608], rax
                        mov              qword ptr [rsp + 4616], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n185_lit_string_α
n184_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:      mov              qword ptr [rsp + 4816], 2            # result
                        mov              dword ptr [rsp + 4820], 1
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rsp + 4824], rax;         jmp   n186_var_ref_α
.Lx530_0:               .quad            .Lx530_0_s
.Lx530_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4704], rax
                        mov              qword ptr [rsp + 4712], rdx;         jmp   n187_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:     mov              qword ptr [rsp + 4720], 3            # result
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rsp + 4728], rax;         jmp   n188_call_builtin_prolog_α
.Lx533_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4720]
                        mov              qword ptr [rsp + 4784], rax
                        mov              rax, qword ptr [rsp + 4728]
                        mov              qword ptr [rsp + 4792], rax
                        mov              rax, qword ptr [rsp + 4704]
                        mov              qword ptr [rsp + 4768], rax
                        mov              rax, qword ptr [rsp + 4712]
                        mov              qword ptr [rsp + 4776], rax
                        mov              rax, qword ptr [rsp + 4816]
                        mov              qword ptr [rsp + 4752], rax
                        mov              rax, qword ptr [rsp + 4824]
                        mov              qword ptr [rsp + 4760], rax
                        lea              rdi, [rsp + 4752]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4736], rax
                        mov              qword ptr [rsp + 4744], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n189_call_builtin_prolog_α
n188_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4736]
                        mov              qword ptr [rsp + 4880], rax
                        mov              rax, qword ptr [rsp + 4744]
                        mov              qword ptr [rsp + 4888], rax
                        mov              rax, qword ptr [rsp + 4608]
                        mov              qword ptr [rsp + 4864], rax
                        mov              rax, qword ptr [rsp + 4616]
                        mov              qword ptr [rsp + 4872], rax
                        mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 4848], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 4856], rax
                        lea              rdi, [rsp + 4848]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4832], rax
                        mov              qword ptr [rsp + 4840], rdx
                        cmp              eax, 104;                            je    n201_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n190_call_builtin_prolog_α
n189_call_builtin_prolog_β:
                                                                              jmp   n201_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n190_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 4328], rax
                        mov              rax, qword ptr [rsp + 4336]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4344]
                        mov              qword ptr [rsp + 4312], rax
                        lea              rdi, [rsp + 4304]
                        lea              r8, [rsp + 4304]
.Lx536_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx536_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx536_41
                        cmp              esi, 1;                              jne   .Lx536_55
                        mov              r8, rax;                             jmp   .Lx536_40
.Lx536_55:              cmp              esi, 2;                              jne   .Lx536_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx536_41
                        mov              r8, rax;                             jmp   .Lx536_40
.Lx536_56:              cmp              eax, 72;                             jne   .Lx536_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx536_41
                        cmp              rax, r8;                             je    .Lx536_41
                        mov              r8, rax;                             jmp   .Lx536_40
.Lx536_41:              lea              r9, [rsp + 4320]
.Lx536_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx536_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx536_43
                        cmp              esi, 1;                              jne   .Lx536_57
                        mov              r9, rax;                             jmp   .Lx536_42
.Lx536_57:              cmp              esi, 2;                              jne   .Lx536_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx536_43
                        mov              r9, rax;                             jmp   .Lx536_42
.Lx536_58:              cmp              eax, 72;                             jne   .Lx536_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx536_43
                        cmp              rax, r9;                             je    .Lx536_43
                        mov              r9, rax;                             jmp   .Lx536_42
.Lx536_43:              cmp              r8, r9;                              je    .Lx536_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx536_44
                        cmp              eax, 104;                            je    .Lx536_44
                        cmp              eax, 72;                             jne   .Lx536_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx536_44
                                                                              jmp   .Lx536_45
.Lx536_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx536_53
                        cmp              eax, 104;                            je    .Lx536_53
                        cmp              eax, 72;                             jne   .Lx536_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx536_53
                                                                              jmp   .Lx536_46
.Lx536_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx536_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx536_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx536_51
.Lx536_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx536_47
                        cmp              eax, 104;                            je    .Lx536_47
                        cmp              eax, 72;                             jne   .Lx536_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx536_47
                                                                              jmp   .Lx536_48
.Lx536_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx536_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx536_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx536_51
.Lx536_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx536_49
                        cmp              edx, 80;                             je    .Lx536_53
                                                                              jmp   .Lx536_52
.Lx536_49:              cmp              edx, 80;                             je    .Lx536_52
                        cmp              ecx, 5;                              je    .Lx536_53
                        cmp              edx, 5;                              je    .Lx536_53
                        cmp              ecx, 3;                              jne   .Lx536_50
                        cmp              edx, 3;                              jne   .Lx536_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx536_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx536_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx536_51
                                                                              jmp   .Lx536_52
.Lx536_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx536_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx536_53
.Lx536_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx536_54
.Lx536_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx536_54
.Lx536_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx536_54:              mov              qword ptr [rsp + 4288], rax
                        mov              qword ptr [rsp + 4296], rdx
                        cmp              eax, 104;                            je    n201_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n191_cut_α
n190_call_builtin_prolog_β:
                                                                              jmp   n201_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n191_cut_α:                                                                   jmp   n192_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 4240], rax
                        mov              qword ptr [rsp + 4248], rdx;         jmp   n193_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx;         jmp   n194_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 4272], rax
                        mov              qword ptr [rsp + 4280], rdx;         jmp   n195_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n195_call_proc_staged_α:
                        lea              rsi, [rsp + 4240]
                        lea              rdx, [rsp + 4256]
                        lea              rcx, [rsp + 4272]
                        call             d$2F3_dcα;                           jmp   .Lx545_2
.Lx545_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx545_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4160]
                        mov              rdx, qword ptr [rsp + 4168]
.Lx545_29:              mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              eax, 104;                            je    n340_call_builtin_prolog_α
                                                                              jmp   n196_var_ref_α
n195_call_proc_staged_β:
                                                                              jmp   n340_call_builtin_prolog_α
.Lx545_0:               .quad            .Lx545_0_s
.Lx545_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx;         jmp   n197_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n198_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx;         jmp   n199_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n199_call_proc_staged_α:
                        lea              rsi, [rsp + 4112]
                        lea              rdx, [rsp + 4128]
                        lea              rcx, [rsp + 4144]
                        call             d$2F3_dcα;                           jmp   .Lx553_2
.Lx553_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx553_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4032]
                        mov              rdx, qword ptr [rsp + 4040]
.Lx553_29:              mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        cmp              eax, 104;                            je    n195_call_proc_staged_β
                                                                              jmp   n200_move_label_α
n199_call_proc_staged_β:
                                                                              jmp   n195_call_proc_staged_β
.Lx553_0:               .quad            .Lx553_0_s
.Lx553_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n200_move_label_α:      lea              rax, [rip + n199_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n201_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 4016], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 4024], rax
                        lea              rdi, [rsp + 4016]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4000], rax
                        mov              qword ptr [rsp + 4008], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n202_var_ref_α
n201_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx;         jmp   n203_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:     mov              qword ptr [rsp + 3968], 3            # result
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n204_lit_string_α
.Lx559_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:      mov              qword ptr [rsp + 3984], 2            # result
                        mov              dword ptr [rsp + 3988], 1
                        mov              rax, qword ptr [rip + .Lx560_0]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n205_call_builtin_prolog_α
.Lx560_0:               .quad            .Lx560_0_s
.Lx560_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3984]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 3992]
                        mov              qword ptr [rsp + 3944], rax
                        mov              rax, qword ptr [rsp + 3968]
                        mov              qword ptr [rsp + 3920], rax
                        mov              rax, qword ptr [rsp + 3976]
                        mov              qword ptr [rsp + 3928], rax
                        mov              rax, qword ptr [rsp + 3952]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 3960]
                        mov              qword ptr [rsp + 3912], rax
                        lea              rdi, [rsp + 3904]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3888], rax
                        mov              qword ptr [rsp + 3896], rdx
                        cmp              eax, 104;                            je    n241_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n206_var_ref_α
n205_call_builtin_prolog_β:
                                                                              jmp   n241_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx;         jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      mov              qword ptr [rsp + 3872], 2            # result
                        mov              dword ptr [rsp + 3876], 1
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n208_var_ref_α
.Lx564_0:               .quad            .Lx564_0_s
.Lx564_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx;         jmp   n209_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx;         jmp   n210_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n210_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3776]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 3784]
                        mov              qword ptr [rsp + 3848], rax
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 3832], rax
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3816], rax
                        lea              rdi, [rsp + 3808]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx
                        cmp              eax, 104;                            je    n240_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n211_call_builtin_prolog_α
n210_call_builtin_prolog_β:
                                                                              jmp   n240_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n211_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3728], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3736], rax
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3712], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3720], rax
                        lea              rdi, [rsp + 3712]
                        lea              r8, [rsp + 3712]
.Lx570_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx570_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx570_41
                        cmp              esi, 1;                              jne   .Lx570_55
                        mov              r8, rax;                             jmp   .Lx570_40
.Lx570_55:              cmp              esi, 2;                              jne   .Lx570_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx570_41
                        mov              r8, rax;                             jmp   .Lx570_40
.Lx570_56:              cmp              eax, 72;                             jne   .Lx570_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx570_41
                        cmp              rax, r8;                             je    .Lx570_41
                        mov              r8, rax;                             jmp   .Lx570_40
.Lx570_41:              lea              r9, [rsp + 3728]
.Lx570_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx570_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx570_43
                        cmp              esi, 1;                              jne   .Lx570_57
                        mov              r9, rax;                             jmp   .Lx570_42
.Lx570_57:              cmp              esi, 2;                              jne   .Lx570_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx570_43
                        mov              r9, rax;                             jmp   .Lx570_42
.Lx570_58:              cmp              eax, 72;                             jne   .Lx570_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx570_43
                        cmp              rax, r9;                             je    .Lx570_43
                        mov              r9, rax;                             jmp   .Lx570_42
.Lx570_43:              cmp              r8, r9;                              je    .Lx570_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx570_44
                        cmp              eax, 104;                            je    .Lx570_44
                        cmp              eax, 72;                             jne   .Lx570_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx570_44
                                                                              jmp   .Lx570_45
.Lx570_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx570_53
                        cmp              eax, 104;                            je    .Lx570_53
                        cmp              eax, 72;                             jne   .Lx570_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx570_53
                                                                              jmp   .Lx570_46
.Lx570_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx570_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx570_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx570_51
.Lx570_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx570_47
                        cmp              eax, 104;                            je    .Lx570_47
                        cmp              eax, 72;                             jne   .Lx570_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx570_47
                                                                              jmp   .Lx570_48
.Lx570_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx570_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx570_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx570_51
.Lx570_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx570_49
                        cmp              edx, 80;                             je    .Lx570_53
                                                                              jmp   .Lx570_52
.Lx570_49:              cmp              edx, 80;                             je    .Lx570_52
                        cmp              ecx, 5;                              je    .Lx570_53
                        cmp              edx, 5;                              je    .Lx570_53
                        cmp              ecx, 3;                              jne   .Lx570_50
                        cmp              edx, 3;                              jne   .Lx570_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx570_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx570_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx570_51
                                                                              jmp   .Lx570_52
.Lx570_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx570_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx570_53
.Lx570_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx570_54
.Lx570_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx570_54
.Lx570_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx570_54:              mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx
                        cmp              eax, 104;                            je    n240_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n212_var_ref_α
n211_call_builtin_prolog_β:
                                                                              jmp   n240_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx;         jmp   n213_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx;         jmp   n214_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n214_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3680]
                        mov              qword ptr [rsp + 3648], rax
                        mov              rax, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 3656], rax
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3640], rax
                        lea              rdi, [rsp + 3632]
                        lea              r8, [rsp + 3632]
.Lx575_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx575_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx575_41
                        cmp              esi, 1;                              jne   .Lx575_55
                        mov              r8, rax;                             jmp   .Lx575_40
.Lx575_55:              cmp              esi, 2;                              jne   .Lx575_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx575_41
                        mov              r8, rax;                             jmp   .Lx575_40
.Lx575_56:              cmp              eax, 72;                             jne   .Lx575_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx575_41
                        cmp              rax, r8;                             je    .Lx575_41
                        mov              r8, rax;                             jmp   .Lx575_40
.Lx575_41:              lea              r9, [rsp + 3648]
.Lx575_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx575_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx575_43
                        cmp              esi, 1;                              jne   .Lx575_57
                        mov              r9, rax;                             jmp   .Lx575_42
.Lx575_57:              cmp              esi, 2;                              jne   .Lx575_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx575_43
                        mov              r9, rax;                             jmp   .Lx575_42
.Lx575_58:              cmp              eax, 72;                             jne   .Lx575_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx575_43
                        cmp              rax, r9;                             je    .Lx575_43
                        mov              r9, rax;                             jmp   .Lx575_42
.Lx575_43:              cmp              r8, r9;                              je    .Lx575_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx575_44
                        cmp              eax, 104;                            je    .Lx575_44
                        cmp              eax, 72;                             jne   .Lx575_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx575_44
                                                                              jmp   .Lx575_45
.Lx575_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx575_53
                        cmp              eax, 104;                            je    .Lx575_53
                        cmp              eax, 72;                             jne   .Lx575_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx575_53
                                                                              jmp   .Lx575_46
.Lx575_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx575_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx575_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx575_51
.Lx575_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx575_47
                        cmp              eax, 104;                            je    .Lx575_47
                        cmp              eax, 72;                             jne   .Lx575_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx575_47
                                                                              jmp   .Lx575_48
.Lx575_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx575_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx575_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx575_51
.Lx575_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx575_49
                        cmp              edx, 80;                             je    .Lx575_53
                                                                              jmp   .Lx575_52
.Lx575_49:              cmp              edx, 80;                             je    .Lx575_52
                        cmp              ecx, 5;                              je    .Lx575_53
                        cmp              edx, 5;                              je    .Lx575_53
                        cmp              ecx, 3;                              jne   .Lx575_50
                        cmp              edx, 3;                              jne   .Lx575_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx575_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx575_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx575_51
                                                                              jmp   .Lx575_52
.Lx575_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx575_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx575_53
.Lx575_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx575_54
.Lx575_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx575_54
.Lx575_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx575_54:              mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx
                        cmp              eax, 104;                            je    n240_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n215_var_ref_α
n214_call_builtin_prolog_β:
                                                                              jmp   n240_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx;         jmp   n216_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:      mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 1
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n217_lit_string_α
.Lx578_0:               .quad            .Lx578_0_s
.Lx578_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:      mov              qword ptr [rsp + 3376], 2            # result
                        mov              dword ptr [rsp + 3380], 1
                        mov              rax, qword ptr [rip + .Lx579_0]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n218_var_ref_α
.Lx579_0:               .quad            .Lx579_0_s
.Lx579_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx;         jmp   n219_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx;         jmp   n220_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n220_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3352], rax
                        mov              rax, qword ptr [rsp + 3264]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3272]
                        mov              qword ptr [rsp + 3336], rax
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3320], rax
                        lea              rdi, [rsp + 3312]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n221_lit_string_α
n220_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:      mov              qword ptr [rsp + 3504], 2            # result
                        mov              dword ptr [rsp + 3508], 1
                        mov              rax, qword ptr [rip + .Lx585_0]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n222_var_ref_α
.Lx585_0:               .quad            .Lx585_0_s
.Lx585_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx;         jmp   n223_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx;         jmp   n224_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n224_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3480], rax
                        mov              rax, qword ptr [rsp + 3392]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3400]
                        mov              qword ptr [rsp + 3464], rax
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3448], rax
                        lea              rdi, [rsp + 3440]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n225_call_builtin_prolog_α
n224_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n225_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 3576], rax
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3560], rax
                        mov              rax, qword ptr [rsp + 3600]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3608]
                        mov              qword ptr [rsp + 3544], rax
                        lea              rdi, [rsp + 3536]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx
                        cmp              eax, 104;                            je    n240_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n226_call_builtin_prolog_α
n225_call_builtin_prolog_β:
                                                                              jmp   n240_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n226_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 3240], rax
                        mov              rax, qword ptr [rsp + 3248]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 3224], rax
                        lea              rdi, [rsp + 3216]
                        lea              r8, [rsp + 3216]
.Lx592_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx592_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx592_41
                        cmp              esi, 1;                              jne   .Lx592_55
                        mov              r8, rax;                             jmp   .Lx592_40
.Lx592_55:              cmp              esi, 2;                              jne   .Lx592_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx592_41
                        mov              r8, rax;                             jmp   .Lx592_40
.Lx592_56:              cmp              eax, 72;                             jne   .Lx592_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx592_41
                        cmp              rax, r8;                             je    .Lx592_41
                        mov              r8, rax;                             jmp   .Lx592_40
.Lx592_41:              lea              r9, [rsp + 3232]
.Lx592_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx592_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx592_43
                        cmp              esi, 1;                              jne   .Lx592_57
                        mov              r9, rax;                             jmp   .Lx592_42
.Lx592_57:              cmp              esi, 2;                              jne   .Lx592_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx592_43
                        mov              r9, rax;                             jmp   .Lx592_42
.Lx592_58:              cmp              eax, 72;                             jne   .Lx592_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx592_43
                        cmp              rax, r9;                             je    .Lx592_43
                        mov              r9, rax;                             jmp   .Lx592_42
.Lx592_43:              cmp              r8, r9;                              je    .Lx592_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx592_44
                        cmp              eax, 104;                            je    .Lx592_44
                        cmp              eax, 72;                             jne   .Lx592_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx592_44
                                                                              jmp   .Lx592_45
.Lx592_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx592_53
                        cmp              eax, 104;                            je    .Lx592_53
                        cmp              eax, 72;                             jne   .Lx592_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx592_53
                                                                              jmp   .Lx592_46
.Lx592_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx592_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx592_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx592_51
.Lx592_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx592_47
                        cmp              eax, 104;                            je    .Lx592_47
                        cmp              eax, 72;                             jne   .Lx592_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx592_47
                                                                              jmp   .Lx592_48
.Lx592_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx592_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx592_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx592_51
.Lx592_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx592_49
                        cmp              edx, 80;                             je    .Lx592_53
                                                                              jmp   .Lx592_52
.Lx592_49:              cmp              edx, 80;                             je    .Lx592_52
                        cmp              ecx, 5;                              je    .Lx592_53
                        cmp              edx, 5;                              je    .Lx592_53
                        cmp              ecx, 3;                              jne   .Lx592_50
                        cmp              edx, 3;                              jne   .Lx592_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx592_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx592_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx592_51
                                                                              jmp   .Lx592_52
.Lx592_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx592_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx592_53
.Lx592_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx592_54
.Lx592_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx592_54
.Lx592_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx592_54:              mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              eax, 104;                            je    n240_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n227_cut_α
n226_call_builtin_prolog_β:
                                                                              jmp   n240_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n227_cut_α:                                                                   jmp   n228_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3184], rax
                        mov              qword ptr [rsp + 3192], rdx;         jmp   n229_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n229_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3176], rax
                        .section         .rodata
.Lrkfn597:              .string          "$tt_integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn597]
                        lea              rsi, [rsp + 3168]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        cmp              eax, 104;                            je    n340_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n230_var_ref_α
n229_call_builtin_prolog_β:
                                                                              jmp   n340_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx;         jmp   n231_var_α
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             mov              rax, qword ptr [rsp + 8128]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 8136]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n232_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_integer_α:     mov              qword ptr [rsp + 3136], 3            # result
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n233_call_builtin_prolog_α
.Lx602_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n233_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3096], rax
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3080], rax
                        lea              rdi, [rsp + 3072]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        cmp              eax, 104;                            je    n340_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n234_call_builtin_prolog_α
n233_call_builtin_prolog_β:
                                                                              jmp   n340_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n234_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3032], rax
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 3016], rax
                        lea              rdi, [rsp + 3008]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              eax, 104;                            je    n340_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n235_var_ref_α
n234_call_builtin_prolog_β:
                                                                              jmp   n340_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n236_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n237_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n238_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_proc_staged_α:
                        lea              rsi, [rsp + 2944]
                        lea              rdx, [rsp + 2960]
                        lea              rcx, [rsp + 2976]
                        call             d$2F3_dcα;                           jmp   .Lx612_2
.Lx612_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx612_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2864]
                        mov              rdx, qword ptr [rsp + 2872]
.Lx612_29:              mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              eax, 104;                            je    n340_call_builtin_prolog_α
                                                                              jmp   n239_move_label_α
n238_call_proc_staged_β:
                                                                              jmp   n340_call_builtin_prolog_α
.Lx612_0:               .quad            .Lx612_0_s
.Lx612_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n239_move_label_α:      lea              rax, [rip + n238_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n240_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 2856], rax
                        lea              rdi, [rsp + 2848]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n241_var_ref_α
n240_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx;         jmp   n242_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:     mov              qword ptr [rsp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n243_lit_string_α
.Lx618_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:      mov              qword ptr [rsp + 2816], 2            # result
                        mov              dword ptr [rsp + 2820], 1
                        mov              rax, qword ptr [rip + .Lx619_0]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n244_call_builtin_prolog_α
.Lx619_0:               .quad            .Lx619_0_s
.Lx619_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n244_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2776], rax
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2760], rax
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2744], rax
                        lea              rdi, [rsp + 2736]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        cmp              eax, 104;                            je    n265_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n245_var_ref_α
n244_call_builtin_prolog_β:
                                                                              jmp   n265_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n246_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:      mov              qword ptr [rsp + 2704], 2            # result
                        mov              dword ptr [rsp + 2708], 1
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n247_var_ref_α
.Lx623_0:               .quad            .Lx623_0_s
.Lx623_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n248_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2680], rax
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2664], rax
                        lea              rdi, [rsp + 2656]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        cmp              eax, 104;                            je    n264_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n249_call_builtin_prolog_α
n248_call_builtin_prolog_β:
                                                                              jmp   n264_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n249_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2600], rax
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2584], rax
                        lea              rdi, [rsp + 2576]
                        lea              r8, [rsp + 2576]
.Lx627_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx627_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx627_41
                        cmp              esi, 1;                              jne   .Lx627_55
                        mov              r8, rax;                             jmp   .Lx627_40
.Lx627_55:              cmp              esi, 2;                              jne   .Lx627_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx627_41
                        mov              r8, rax;                             jmp   .Lx627_40
.Lx627_56:              cmp              eax, 72;                             jne   .Lx627_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx627_41
                        cmp              rax, r8;                             je    .Lx627_41
                        mov              r8, rax;                             jmp   .Lx627_40
.Lx627_41:              lea              r9, [rsp + 2592]
.Lx627_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx627_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx627_43
                        cmp              esi, 1;                              jne   .Lx627_57
                        mov              r9, rax;                             jmp   .Lx627_42
.Lx627_57:              cmp              esi, 2;                              jne   .Lx627_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx627_43
                        mov              r9, rax;                             jmp   .Lx627_42
.Lx627_58:              cmp              eax, 72;                             jne   .Lx627_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx627_43
                        cmp              rax, r9;                             je    .Lx627_43
                        mov              r9, rax;                             jmp   .Lx627_42
.Lx627_43:              cmp              r8, r9;                              je    .Lx627_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx627_44
                        cmp              eax, 104;                            je    .Lx627_44
                        cmp              eax, 72;                             jne   .Lx627_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx627_44
                                                                              jmp   .Lx627_45
.Lx627_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx627_53
                        cmp              eax, 104;                            je    .Lx627_53
                        cmp              eax, 72;                             jne   .Lx627_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx627_53
                                                                              jmp   .Lx627_46
.Lx627_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx627_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx627_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx627_51
.Lx627_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx627_47
                        cmp              eax, 104;                            je    .Lx627_47
                        cmp              eax, 72;                             jne   .Lx627_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx627_47
                                                                              jmp   .Lx627_48
.Lx627_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx627_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx627_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx627_51
.Lx627_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx627_49
                        cmp              edx, 80;                             je    .Lx627_53
                                                                              jmp   .Lx627_52
.Lx627_49:              cmp              edx, 80;                             je    .Lx627_52
                        cmp              ecx, 5;                              je    .Lx627_53
                        cmp              edx, 5;                              je    .Lx627_53
                        cmp              ecx, 3;                              jne   .Lx627_50
                        cmp              edx, 3;                              jne   .Lx627_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx627_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx627_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx627_51
                                                                              jmp   .Lx627_52
.Lx627_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx627_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx627_53
.Lx627_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx627_54
.Lx627_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx627_54
.Lx627_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx627_54:              mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                        cmp              eax, 104;                            je    n264_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n250_var_ref_α
n249_call_builtin_prolog_β:
                                                                              jmp   n264_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n251_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx;         jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n252_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2520], rax
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2504], rax
                        lea              rdi, [rsp + 2496]
                        lea              r8, [rsp + 2496]
.Lx632_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx632_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx632_41
                        cmp              esi, 1;                              jne   .Lx632_55
                        mov              r8, rax;                             jmp   .Lx632_40
.Lx632_55:              cmp              esi, 2;                              jne   .Lx632_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx632_41
                        mov              r8, rax;                             jmp   .Lx632_40
.Lx632_56:              cmp              eax, 72;                             jne   .Lx632_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx632_41
                        cmp              rax, r8;                             je    .Lx632_41
                        mov              r8, rax;                             jmp   .Lx632_40
.Lx632_41:              lea              r9, [rsp + 2512]
.Lx632_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx632_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx632_43
                        cmp              esi, 1;                              jne   .Lx632_57
                        mov              r9, rax;                             jmp   .Lx632_42
.Lx632_57:              cmp              esi, 2;                              jne   .Lx632_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx632_43
                        mov              r9, rax;                             jmp   .Lx632_42
.Lx632_58:              cmp              eax, 72;                             jne   .Lx632_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx632_43
                        cmp              rax, r9;                             je    .Lx632_43
                        mov              r9, rax;                             jmp   .Lx632_42
.Lx632_43:              cmp              r8, r9;                              je    .Lx632_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx632_44
                        cmp              eax, 104;                            je    .Lx632_44
                        cmp              eax, 72;                             jne   .Lx632_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx632_44
                                                                              jmp   .Lx632_45
.Lx632_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx632_53
                        cmp              eax, 104;                            je    .Lx632_53
                        cmp              eax, 72;                             jne   .Lx632_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx632_53
                                                                              jmp   .Lx632_46
.Lx632_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx632_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx632_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx632_51
.Lx632_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx632_47
                        cmp              eax, 104;                            je    .Lx632_47
                        cmp              eax, 72;                             jne   .Lx632_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx632_47
                                                                              jmp   .Lx632_48
.Lx632_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx632_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx632_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx632_51
.Lx632_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx632_49
                        cmp              edx, 80;                             je    .Lx632_53
                                                                              jmp   .Lx632_52
.Lx632_49:              cmp              edx, 80;                             je    .Lx632_52
                        cmp              ecx, 5;                              je    .Lx632_53
                        cmp              edx, 5;                              je    .Lx632_53
                        cmp              ecx, 3;                              jne   .Lx632_50
                        cmp              edx, 3;                              jne   .Lx632_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx632_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx632_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx632_51
                                                                              jmp   .Lx632_52
.Lx632_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx632_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx632_53
.Lx632_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx632_54
.Lx632_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx632_54
.Lx632_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx632_54:              mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              eax, 104;                            je    n264_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n253_var_ref_α
n252_call_builtin_prolog_β:
                                                                              jmp   n264_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx;         jmp   n254_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_string_α:      mov              qword ptr [rsp + 2464], 2            # result
                        mov              dword ptr [rsp + 2468], 1
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n255_var_ref_α
.Lx635_0:               .quad            .Lx635_0_s
.Lx635_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx;         jmp   n256_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n256_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2440], rax
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2424], rax
                        lea              rdi, [rsp + 2416]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              eax, 104;                            je    n264_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n257_call_builtin_prolog_α
n256_call_builtin_prolog_β:
                                                                              jmp   n264_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n257_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2360], rax
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2344], rax
                        lea              rdi, [rsp + 2336]
                        lea              r8, [rsp + 2336]
.Lx639_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx639_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx639_41
                        cmp              esi, 1;                              jne   .Lx639_55
                        mov              r8, rax;                             jmp   .Lx639_40
.Lx639_55:              cmp              esi, 2;                              jne   .Lx639_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx639_41
                        mov              r8, rax;                             jmp   .Lx639_40
.Lx639_56:              cmp              eax, 72;                             jne   .Lx639_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx639_41
                        cmp              rax, r8;                             je    .Lx639_41
                        mov              r8, rax;                             jmp   .Lx639_40
.Lx639_41:              lea              r9, [rsp + 2352]
.Lx639_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx639_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx639_43
                        cmp              esi, 1;                              jne   .Lx639_57
                        mov              r9, rax;                             jmp   .Lx639_42
.Lx639_57:              cmp              esi, 2;                              jne   .Lx639_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx639_43
                        mov              r9, rax;                             jmp   .Lx639_42
.Lx639_58:              cmp              eax, 72;                             jne   .Lx639_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx639_43
                        cmp              rax, r9;                             je    .Lx639_43
                        mov              r9, rax;                             jmp   .Lx639_42
.Lx639_43:              cmp              r8, r9;                              je    .Lx639_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx639_44
                        cmp              eax, 104;                            je    .Lx639_44
                        cmp              eax, 72;                             jne   .Lx639_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx639_44
                                                                              jmp   .Lx639_45
.Lx639_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx639_53
                        cmp              eax, 104;                            je    .Lx639_53
                        cmp              eax, 72;                             jne   .Lx639_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx639_53
                                                                              jmp   .Lx639_46
.Lx639_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx639_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx639_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx639_51
.Lx639_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx639_47
                        cmp              eax, 104;                            je    .Lx639_47
                        cmp              eax, 72;                             jne   .Lx639_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx639_47
                                                                              jmp   .Lx639_48
.Lx639_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx639_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx639_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx639_51
.Lx639_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx639_49
                        cmp              edx, 80;                             je    .Lx639_53
                                                                              jmp   .Lx639_52
.Lx639_49:              cmp              edx, 80;                             je    .Lx639_52
                        cmp              ecx, 5;                              je    .Lx639_53
                        cmp              edx, 5;                              je    .Lx639_53
                        cmp              ecx, 3;                              jne   .Lx639_50
                        cmp              edx, 3;                              jne   .Lx639_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx639_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx639_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx639_51
                                                                              jmp   .Lx639_52
.Lx639_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx639_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx639_53
.Lx639_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx639_54
.Lx639_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx639_54
.Lx639_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx639_54:              mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              eax, 104;                            je    n264_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n258_cut_α
n257_call_builtin_prolog_β:
                                                                              jmp   n264_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n258_cut_α:                                                                   jmp   n259_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n260_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n261_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n261_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n262_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n262_call_proc_staged_α:
                        lea              rsi, [rsp + 2272]
                        lea              rdx, [rsp + 2288]
                        lea              rcx, [rsp + 2304]
                        call             d$2F3_dcα;                           jmp   .Lx648_2
.Lx648_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx648_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2192]
                        mov              rdx, qword ptr [rsp + 2200]
.Lx648_29:              mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              eax, 104;                            je    n340_call_builtin_prolog_α
                                                                              jmp   n263_move_label_α
n262_call_proc_staged_β:
                                                                              jmp   n340_call_builtin_prolog_α
.Lx648_0:               .quad            .Lx648_0_s
.Lx648_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n263_move_label_α:      lea              rax, [rip + n262_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n264_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 2184], rax
                        lea              rdi, [rsp + 2176]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n265_var_ref_α
n264_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n265_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n266_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_integer_α:     mov              qword ptr [rsp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Lx654_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n267_lit_string_α
.Lx654_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:      mov              qword ptr [rsp + 2144], 2            # result
                        mov              dword ptr [rsp + 2148], 3
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n268_call_builtin_prolog_α
.Lx655_0:               .quad            .Lx655_0_s
.Lx655_0_s:             .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2104], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2088], rax
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2072], rax
                        lea              rdi, [rsp + 2064]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              eax, 104;                            je    n292_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n269_var_ref_α
n268_call_builtin_prolog_β:
                                                                              jmp   n292_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n270_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:      mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 3
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n271_var_ref_α
.Lx659_0:               .quad            .Lx659_0_s
.Lx659_0_s:             .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n272_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n272_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 2008], rax
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 1992], rax
                        lea              rdi, [rsp + 1984]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              eax, 104;                            je    n291_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n273_call_builtin_prolog_α
n272_call_builtin_prolog_β:
                                                                              jmp   n291_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n273_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1912], rax
                        lea              rdi, [rsp + 1904]
                        lea              r8, [rsp + 1904]
.Lx663_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx663_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx663_41
                        cmp              esi, 1;                              jne   .Lx663_55
                        mov              r8, rax;                             jmp   .Lx663_40
.Lx663_55:              cmp              esi, 2;                              jne   .Lx663_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx663_41
                        mov              r8, rax;                             jmp   .Lx663_40
.Lx663_56:              cmp              eax, 72;                             jne   .Lx663_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx663_41
                        cmp              rax, r8;                             je    .Lx663_41
                        mov              r8, rax;                             jmp   .Lx663_40
.Lx663_41:              lea              r9, [rsp + 1920]
.Lx663_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx663_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx663_43
                        cmp              esi, 1;                              jne   .Lx663_57
                        mov              r9, rax;                             jmp   .Lx663_42
.Lx663_57:              cmp              esi, 2;                              jne   .Lx663_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx663_43
                        mov              r9, rax;                             jmp   .Lx663_42
.Lx663_58:              cmp              eax, 72;                             jne   .Lx663_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx663_43
                        cmp              rax, r9;                             je    .Lx663_43
                        mov              r9, rax;                             jmp   .Lx663_42
.Lx663_43:              cmp              r8, r9;                              je    .Lx663_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx663_44
                        cmp              eax, 104;                            je    .Lx663_44
                        cmp              eax, 72;                             jne   .Lx663_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx663_44
                                                                              jmp   .Lx663_45
.Lx663_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx663_53
                        cmp              eax, 104;                            je    .Lx663_53
                        cmp              eax, 72;                             jne   .Lx663_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx663_53
                                                                              jmp   .Lx663_46
.Lx663_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx663_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx663_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx663_51
.Lx663_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx663_47
                        cmp              eax, 104;                            je    .Lx663_47
                        cmp              eax, 72;                             jne   .Lx663_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx663_47
                                                                              jmp   .Lx663_48
.Lx663_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx663_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx663_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx663_51
.Lx663_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx663_49
                        cmp              edx, 80;                             je    .Lx663_53
                                                                              jmp   .Lx663_52
.Lx663_49:              cmp              edx, 80;                             je    .Lx663_52
                        cmp              ecx, 5;                              je    .Lx663_53
                        cmp              edx, 5;                              je    .Lx663_53
                        cmp              ecx, 3;                              jne   .Lx663_50
                        cmp              edx, 3;                              jne   .Lx663_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx663_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx663_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx663_51
                                                                              jmp   .Lx663_52
.Lx663_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx663_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx663_53
.Lx663_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx663_54
.Lx663_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx663_54
.Lx663_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx663_54:              mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              eax, 104;                            je    n291_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n274_var_ref_α
n273_call_builtin_prolog_β:
                                                                              jmp   n291_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n275_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n275_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx;         jmp   n276_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n276_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1832], rax
                        lea              rdi, [rsp + 1824]
                        lea              r8, [rsp + 1824]
.Lx668_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx668_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx668_41
                        cmp              esi, 1;                              jne   .Lx668_55
                        mov              r8, rax;                             jmp   .Lx668_40
.Lx668_55:              cmp              esi, 2;                              jne   .Lx668_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx668_41
                        mov              r8, rax;                             jmp   .Lx668_40
.Lx668_56:              cmp              eax, 72;                             jne   .Lx668_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx668_41
                        cmp              rax, r8;                             je    .Lx668_41
                        mov              r8, rax;                             jmp   .Lx668_40
.Lx668_41:              lea              r9, [rsp + 1840]
.Lx668_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx668_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx668_43
                        cmp              esi, 1;                              jne   .Lx668_57
                        mov              r9, rax;                             jmp   .Lx668_42
.Lx668_57:              cmp              esi, 2;                              jne   .Lx668_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx668_43
                        mov              r9, rax;                             jmp   .Lx668_42
.Lx668_58:              cmp              eax, 72;                             jne   .Lx668_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx668_43
                        cmp              rax, r9;                             je    .Lx668_43
                        mov              r9, rax;                             jmp   .Lx668_42
.Lx668_43:              cmp              r8, r9;                              je    .Lx668_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx668_44
                        cmp              eax, 104;                            je    .Lx668_44
                        cmp              eax, 72;                             jne   .Lx668_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx668_44
                                                                              jmp   .Lx668_45
.Lx668_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx668_53
                        cmp              eax, 104;                            je    .Lx668_53
                        cmp              eax, 72;                             jne   .Lx668_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx668_53
                                                                              jmp   .Lx668_46
.Lx668_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx668_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx668_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx668_51
.Lx668_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx668_47
                        cmp              eax, 104;                            je    .Lx668_47
                        cmp              eax, 72;                             jne   .Lx668_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx668_47
                                                                              jmp   .Lx668_48
.Lx668_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx668_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx668_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx668_51
.Lx668_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx668_49
                        cmp              edx, 80;                             je    .Lx668_53
                                                                              jmp   .Lx668_52
.Lx668_49:              cmp              edx, 80;                             je    .Lx668_52
                        cmp              ecx, 5;                              je    .Lx668_53
                        cmp              edx, 5;                              je    .Lx668_53
                        cmp              ecx, 3;                              jne   .Lx668_50
                        cmp              edx, 3;                              jne   .Lx668_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx668_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx668_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx668_51
                                                                              jmp   .Lx668_52
.Lx668_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx668_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx668_53
.Lx668_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx668_54
.Lx668_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx668_54
.Lx668_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx668_54:              mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              eax, 104;                            je    n291_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n277_var_ref_α
n276_call_builtin_prolog_β:
                                                                              jmp   n291_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n278_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:      mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 1
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n279_lit_string_α
.Lx671_0:               .quad            .Lx671_0_s
.Lx671_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:      mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 3
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n280_var_ref_α
.Lx672_0:               .quad            .Lx672_0_s
.Lx672_0_s:             .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n281_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n281_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1656], rax
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax
                        lea              rdi, [rsp + 1632]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n282_var_ref_α
n281_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n282_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n283_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n283_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1752], rax
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1736], rax
                        lea              rdi, [rsp + 1728]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              eax, 104;                            je    n291_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n284_call_builtin_prolog_α
n283_call_builtin_prolog_β:
                                                                              jmp   n291_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n284_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1576], rax
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1560], rax
                        lea              rdi, [rsp + 1552]
                        lea              r8, [rsp + 1552]
.Lx679_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx679_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx679_41
                        cmp              esi, 1;                              jne   .Lx679_55
                        mov              r8, rax;                             jmp   .Lx679_40
.Lx679_55:              cmp              esi, 2;                              jne   .Lx679_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx679_41
                        mov              r8, rax;                             jmp   .Lx679_40
.Lx679_56:              cmp              eax, 72;                             jne   .Lx679_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx679_41
                        cmp              rax, r8;                             je    .Lx679_41
                        mov              r8, rax;                             jmp   .Lx679_40
.Lx679_41:              lea              r9, [rsp + 1568]
.Lx679_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx679_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx679_43
                        cmp              esi, 1;                              jne   .Lx679_57
                        mov              r9, rax;                             jmp   .Lx679_42
.Lx679_57:              cmp              esi, 2;                              jne   .Lx679_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx679_43
                        mov              r9, rax;                             jmp   .Lx679_42
.Lx679_58:              cmp              eax, 72;                             jne   .Lx679_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx679_43
                        cmp              rax, r9;                             je    .Lx679_43
                        mov              r9, rax;                             jmp   .Lx679_42
.Lx679_43:              cmp              r8, r9;                              je    .Lx679_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx679_44
                        cmp              eax, 104;                            je    .Lx679_44
                        cmp              eax, 72;                             jne   .Lx679_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx679_44
                                                                              jmp   .Lx679_45
.Lx679_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx679_53
                        cmp              eax, 104;                            je    .Lx679_53
                        cmp              eax, 72;                             jne   .Lx679_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx679_53
                                                                              jmp   .Lx679_46
.Lx679_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx679_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx679_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx679_51
.Lx679_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx679_47
                        cmp              eax, 104;                            je    .Lx679_47
                        cmp              eax, 72;                             jne   .Lx679_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx679_47
                                                                              jmp   .Lx679_48
.Lx679_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx679_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx679_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx679_51
.Lx679_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx679_49
                        cmp              edx, 80;                             je    .Lx679_53
                                                                              jmp   .Lx679_52
.Lx679_49:              cmp              edx, 80;                             je    .Lx679_52
                        cmp              ecx, 5;                              je    .Lx679_53
                        cmp              edx, 5;                              je    .Lx679_53
                        cmp              ecx, 3;                              jne   .Lx679_50
                        cmp              edx, 3;                              jne   .Lx679_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx679_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx679_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx679_51
                                                                              jmp   .Lx679_52
.Lx679_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx679_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx679_53
.Lx679_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx679_54
.Lx679_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx679_54
.Lx679_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx679_54:              mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              eax, 104;                            je    n291_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n285_cut_α
n284_call_builtin_prolog_β:
                                                                              jmp   n291_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n285_cut_α:                                                                   jmp   n286_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n287_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n288_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n289_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n289_call_proc_staged_α:
                        lea              rsi, [rsp + 1488]
                        lea              rdx, [rsp + 1504]
                        lea              rcx, [rsp + 1520]
                        call             d$2F3_dcα;                           jmp   .Lx688_2
.Lx688_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx688_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
.Lx688_29:              mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              eax, 104;                            je    n340_call_builtin_prolog_α
                                                                              jmp   n290_move_label_α
n289_call_proc_staged_β:
                                                                              jmp   n340_call_builtin_prolog_α
.Lx688_0:               .quad            .Lx688_0_s
.Lx688_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n290_move_label_α:      lea              rax, [rip + n289_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n291_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 1400], rax
                        lea              rdi, [rsp + 1392]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n292_var_ref_α
n291_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n293_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_integer_α:     mov              qword ptr [rsp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Lx694_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n294_lit_string_α
.Lx694_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:      mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 3
                        mov              rax, qword ptr [rip + .Lx695_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n295_call_builtin_prolog_α
.Lx695_0:               .quad            .Lx695_0_s
.Lx695_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n295_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1304], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1288], rax
                        lea              rdi, [rsp + 1280]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              eax, 104;                            je    n317_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n296_var_ref_α
n295_call_builtin_prolog_β:
                                                                              jmp   n317_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n297_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_string_α:      mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 3
                        mov              rax, qword ptr [rip + .Lx699_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n298_var_ref_α
.Lx699_0:               .quad            .Lx699_0_s
.Lx699_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n299_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n299_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1208], rax
                        lea              rdi, [rsp + 1200]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              eax, 104;                            je    n316_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n300_call_builtin_prolog_α
n299_call_builtin_prolog_β:
                                                                              jmp   n316_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n300_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        lea              rdi, [rsp + 1120]
                        lea              r8, [rsp + 1120]
.Lx703_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx703_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx703_41
                        cmp              esi, 1;                              jne   .Lx703_55
                        mov              r8, rax;                             jmp   .Lx703_40
.Lx703_55:              cmp              esi, 2;                              jne   .Lx703_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx703_41
                        mov              r8, rax;                             jmp   .Lx703_40
.Lx703_56:              cmp              eax, 72;                             jne   .Lx703_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx703_41
                        cmp              rax, r8;                             je    .Lx703_41
                        mov              r8, rax;                             jmp   .Lx703_40
.Lx703_41:              lea              r9, [rsp + 1136]
.Lx703_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx703_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx703_43
                        cmp              esi, 1;                              jne   .Lx703_57
                        mov              r9, rax;                             jmp   .Lx703_42
.Lx703_57:              cmp              esi, 2;                              jne   .Lx703_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx703_43
                        mov              r9, rax;                             jmp   .Lx703_42
.Lx703_58:              cmp              eax, 72;                             jne   .Lx703_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx703_43
                        cmp              rax, r9;                             je    .Lx703_43
                        mov              r9, rax;                             jmp   .Lx703_42
.Lx703_43:              cmp              r8, r9;                              je    .Lx703_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx703_44
                        cmp              eax, 104;                            je    .Lx703_44
                        cmp              eax, 72;                             jne   .Lx703_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx703_44
                                                                              jmp   .Lx703_45
.Lx703_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx703_53
                        cmp              eax, 104;                            je    .Lx703_53
                        cmp              eax, 72;                             jne   .Lx703_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx703_53
                                                                              jmp   .Lx703_46
.Lx703_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx703_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx703_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx703_51
.Lx703_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx703_47
                        cmp              eax, 104;                            je    .Lx703_47
                        cmp              eax, 72;                             jne   .Lx703_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx703_47
                                                                              jmp   .Lx703_48
.Lx703_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx703_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx703_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx703_51
.Lx703_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx703_49
                        cmp              edx, 80;                             je    .Lx703_53
                                                                              jmp   .Lx703_52
.Lx703_49:              cmp              edx, 80;                             je    .Lx703_52
                        cmp              ecx, 5;                              je    .Lx703_53
                        cmp              edx, 5;                              je    .Lx703_53
                        cmp              ecx, 3;                              jne   .Lx703_50
                        cmp              edx, 3;                              jne   .Lx703_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx703_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx703_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx703_51
                                                                              jmp   .Lx703_52
.Lx703_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx703_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx703_53
.Lx703_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx703_54
.Lx703_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx703_54
.Lx703_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx703_54:              mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              eax, 104;                            je    n316_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n301_var_ref_α
n300_call_builtin_prolog_β:
                                                                              jmp   n316_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n302_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n303_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n303_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1048], rax
                        lea              rdi, [rsp + 1040]
                        lea              r8, [rsp + 1040]
.Lx708_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx708_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx708_41
                        cmp              esi, 1;                              jne   .Lx708_55
                        mov              r8, rax;                             jmp   .Lx708_40
.Lx708_55:              cmp              esi, 2;                              jne   .Lx708_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx708_41
                        mov              r8, rax;                             jmp   .Lx708_40
.Lx708_56:              cmp              eax, 72;                             jne   .Lx708_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx708_41
                        cmp              rax, r8;                             je    .Lx708_41
                        mov              r8, rax;                             jmp   .Lx708_40
.Lx708_41:              lea              r9, [rsp + 1056]
.Lx708_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx708_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx708_43
                        cmp              esi, 1;                              jne   .Lx708_57
                        mov              r9, rax;                             jmp   .Lx708_42
.Lx708_57:              cmp              esi, 2;                              jne   .Lx708_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx708_43
                        mov              r9, rax;                             jmp   .Lx708_42
.Lx708_58:              cmp              eax, 72;                             jne   .Lx708_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx708_43
                        cmp              rax, r9;                             je    .Lx708_43
                        mov              r9, rax;                             jmp   .Lx708_42
.Lx708_43:              cmp              r8, r9;                              je    .Lx708_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx708_44
                        cmp              eax, 104;                            je    .Lx708_44
                        cmp              eax, 72;                             jne   .Lx708_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx708_44
                                                                              jmp   .Lx708_45
.Lx708_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx708_53
                        cmp              eax, 104;                            je    .Lx708_53
                        cmp              eax, 72;                             jne   .Lx708_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx708_53
                                                                              jmp   .Lx708_46
.Lx708_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx708_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx708_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx708_51
.Lx708_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx708_47
                        cmp              eax, 104;                            je    .Lx708_47
                        cmp              eax, 72;                             jne   .Lx708_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx708_47
                                                                              jmp   .Lx708_48
.Lx708_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx708_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx708_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx708_51
.Lx708_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx708_49
                        cmp              edx, 80;                             je    .Lx708_53
                                                                              jmp   .Lx708_52
.Lx708_49:              cmp              edx, 80;                             je    .Lx708_52
                        cmp              ecx, 5;                              je    .Lx708_53
                        cmp              edx, 5;                              je    .Lx708_53
                        cmp              ecx, 3;                              jne   .Lx708_50
                        cmp              edx, 3;                              jne   .Lx708_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx708_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx708_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx708_51
                                                                              jmp   .Lx708_52
.Lx708_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx708_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx708_53
.Lx708_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx708_54
.Lx708_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx708_54
.Lx708_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx708_54:              mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              eax, 104;                            je    n316_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n304_var_ref_α
n303_call_builtin_prolog_β:
                                                                              jmp   n316_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n305_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:      mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx711_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n306_var_ref_α
.Lx711_0:               .quad            .Lx711_0_s
.Lx711_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n307_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n308_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n308_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 944]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              eax, 104;                            je    n316_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n309_call_builtin_prolog_α
n308_call_builtin_prolog_β:
                                                                              jmp   n316_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n309_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        lea              r8, [rsp + 848]
.Lx717_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx717_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx717_41
                        cmp              esi, 1;                              jne   .Lx717_55
                        mov              r8, rax;                             jmp   .Lx717_40
.Lx717_55:              cmp              esi, 2;                              jne   .Lx717_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx717_41
                        mov              r8, rax;                             jmp   .Lx717_40
.Lx717_56:              cmp              eax, 72;                             jne   .Lx717_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx717_41
                        cmp              rax, r8;                             je    .Lx717_41
                        mov              r8, rax;                             jmp   .Lx717_40
.Lx717_41:              lea              r9, [rsp + 864]
.Lx717_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx717_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx717_43
                        cmp              esi, 1;                              jne   .Lx717_57
                        mov              r9, rax;                             jmp   .Lx717_42
.Lx717_57:              cmp              esi, 2;                              jne   .Lx717_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx717_43
                        mov              r9, rax;                             jmp   .Lx717_42
.Lx717_58:              cmp              eax, 72;                             jne   .Lx717_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx717_43
                        cmp              rax, r9;                             je    .Lx717_43
                        mov              r9, rax;                             jmp   .Lx717_42
.Lx717_43:              cmp              r8, r9;                              je    .Lx717_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx717_44
                        cmp              eax, 104;                            je    .Lx717_44
                        cmp              eax, 72;                             jne   .Lx717_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx717_44
                                                                              jmp   .Lx717_45
.Lx717_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx717_53
                        cmp              eax, 104;                            je    .Lx717_53
                        cmp              eax, 72;                             jne   .Lx717_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx717_53
                                                                              jmp   .Lx717_46
.Lx717_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx717_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx717_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx717_51
.Lx717_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx717_47
                        cmp              eax, 104;                            je    .Lx717_47
                        cmp              eax, 72;                             jne   .Lx717_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx717_47
                                                                              jmp   .Lx717_48
.Lx717_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx717_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx717_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx717_51
.Lx717_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx717_49
                        cmp              edx, 80;                             je    .Lx717_53
                                                                              jmp   .Lx717_52
.Lx717_49:              cmp              edx, 80;                             je    .Lx717_52
                        cmp              ecx, 5;                              je    .Lx717_53
                        cmp              edx, 5;                              je    .Lx717_53
                        cmp              ecx, 3;                              jne   .Lx717_50
                        cmp              edx, 3;                              jne   .Lx717_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx717_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx717_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx717_51
                                                                              jmp   .Lx717_52
.Lx717_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx717_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx717_53
.Lx717_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx717_54
.Lx717_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx717_54
.Lx717_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx717_54:              mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              eax, 104;                            je    n316_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n310_cut_α
n309_call_builtin_prolog_β:
                                                                              jmp   n316_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n310_cut_α:                                                                   jmp   n311_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n312_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n313_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n314_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n314_call_proc_staged_α:
                        lea              rsi, [rsp + 784]
                        lea              rdx, [rsp + 800]
                        lea              rcx, [rsp + 816]
                        call             d$2F3_dcα;                           jmp   .Lx726_2
.Lx726_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx726_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
.Lx726_29:              mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              eax, 104;                            je    n340_call_builtin_prolog_α
                                                                              jmp   n315_move_label_α
n314_call_proc_staged_β:
                                                                              jmp   n340_call_builtin_prolog_α
.Lx726_0:               .quad            .Lx726_0_s
.Lx726_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n315_move_label_α:      lea              rax, [rip + n314_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n316_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n317_var_ref_α
n316_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n318_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8160]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n319_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n319_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        lea              r8, [rsp + 608]
.Lx734_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx734_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx734_41
                        cmp              esi, 1;                              jne   .Lx734_55
                        mov              r8, rax;                             jmp   .Lx734_40
.Lx734_55:              cmp              esi, 2;                              jne   .Lx734_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx734_41
                        mov              r8, rax;                             jmp   .Lx734_40
.Lx734_56:              cmp              eax, 72;                             jne   .Lx734_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx734_41
                        cmp              rax, r8;                             je    .Lx734_41
                        mov              r8, rax;                             jmp   .Lx734_40
.Lx734_41:              lea              r9, [rsp + 624]
.Lx734_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx734_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx734_43
                        cmp              esi, 1;                              jne   .Lx734_57
                        mov              r9, rax;                             jmp   .Lx734_42
.Lx734_57:              cmp              esi, 2;                              jne   .Lx734_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx734_43
                        mov              r9, rax;                             jmp   .Lx734_42
.Lx734_58:              cmp              eax, 72;                             jne   .Lx734_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx734_43
                        cmp              rax, r9;                             je    .Lx734_43
                        mov              r9, rax;                             jmp   .Lx734_42
.Lx734_43:              cmp              r8, r9;                              je    .Lx734_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx734_44
                        cmp              eax, 104;                            je    .Lx734_44
                        cmp              eax, 72;                             jne   .Lx734_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx734_44
                                                                              jmp   .Lx734_45
.Lx734_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx734_53
                        cmp              eax, 104;                            je    .Lx734_53
                        cmp              eax, 72;                             jne   .Lx734_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx734_53
                                                                              jmp   .Lx734_46
.Lx734_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx734_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx734_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx734_51
.Lx734_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx734_47
                        cmp              eax, 104;                            je    .Lx734_47
                        cmp              eax, 72;                             jne   .Lx734_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx734_47
                                                                              jmp   .Lx734_48
.Lx734_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx734_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx734_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx734_51
.Lx734_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx734_49
                        cmp              edx, 80;                             je    .Lx734_53
                                                                              jmp   .Lx734_52
.Lx734_49:              cmp              edx, 80;                             je    .Lx734_52
                        cmp              ecx, 5;                              je    .Lx734_53
                        cmp              edx, 5;                              je    .Lx734_53
                        cmp              ecx, 3;                              jne   .Lx734_50
                        cmp              edx, 3;                              jne   .Lx734_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx734_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx734_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx734_51
                                                                              jmp   .Lx734_52
.Lx734_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx734_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx734_53
.Lx734_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx734_54
.Lx734_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx734_54
.Lx734_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx734_54:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              eax, 104;                            je    n328_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n320_var_ref_α
n319_call_builtin_prolog_β:
                                                                              jmp   n328_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n320_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n321_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8160]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n322_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n322_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        lea              r8, [rsp + 528]
.Lx739_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx739_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx739_41
                        cmp              esi, 1;                              jne   .Lx739_55
                        mov              r8, rax;                             jmp   .Lx739_40
.Lx739_55:              cmp              esi, 2;                              jne   .Lx739_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx739_41
                        mov              r8, rax;                             jmp   .Lx739_40
.Lx739_56:              cmp              eax, 72;                             jne   .Lx739_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx739_41
                        cmp              rax, r8;                             je    .Lx739_41
                        mov              r8, rax;                             jmp   .Lx739_40
.Lx739_41:              lea              r9, [rsp + 544]
.Lx739_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx739_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx739_43
                        cmp              esi, 1;                              jne   .Lx739_57
                        mov              r9, rax;                             jmp   .Lx739_42
.Lx739_57:              cmp              esi, 2;                              jne   .Lx739_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx739_43
                        mov              r9, rax;                             jmp   .Lx739_42
.Lx739_58:              cmp              eax, 72;                             jne   .Lx739_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx739_43
                        cmp              rax, r9;                             je    .Lx739_43
                        mov              r9, rax;                             jmp   .Lx739_42
.Lx739_43:              cmp              r8, r9;                              je    .Lx739_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx739_44
                        cmp              eax, 104;                            je    .Lx739_44
                        cmp              eax, 72;                             jne   .Lx739_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx739_44
                                                                              jmp   .Lx739_45
.Lx739_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx739_53
                        cmp              eax, 104;                            je    .Lx739_53
                        cmp              eax, 72;                             jne   .Lx739_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx739_53
                                                                              jmp   .Lx739_46
.Lx739_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx739_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx739_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx739_51
.Lx739_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx739_47
                        cmp              eax, 104;                            je    .Lx739_47
                        cmp              eax, 72;                             jne   .Lx739_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx739_47
                                                                              jmp   .Lx739_48
.Lx739_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx739_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx739_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx739_51
.Lx739_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx739_49
                        cmp              edx, 80;                             je    .Lx739_53
                                                                              jmp   .Lx739_52
.Lx739_49:              cmp              edx, 80;                             je    .Lx739_52
                        cmp              ecx, 5;                              je    .Lx739_53
                        cmp              edx, 5;                              je    .Lx739_53
                        cmp              ecx, 3;                              jne   .Lx739_50
                        cmp              edx, 3;                              jne   .Lx739_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx739_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx739_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx739_51
                                                                              jmp   .Lx739_52
.Lx739_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx739_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx739_53
.Lx739_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx739_54
.Lx739_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx739_54
.Lx739_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx739_54:              mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104;                            je    n328_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n323_var_ref_α
n322_call_builtin_prolog_β:
                                                                              jmp   n328_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n324_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_integer_α:     mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n325_call_builtin_prolog_α
.Lx742_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n325_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    n328_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n326_cut_α
n325_call_builtin_prolog_β:
                                                                              jmp   n328_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n326_cut_α:                                                                   jmp   n327_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n327_move_label_α:      lea              rax, [rip + n328_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n328_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n329_var_ref_α
n328_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n330_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n331_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n331_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        lea              r8, [rsp + 336]
.Lx752_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx752_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx752_41
                        cmp              esi, 1;                              jne   .Lx752_55
                        mov              r8, rax;                             jmp   .Lx752_40
.Lx752_55:              cmp              esi, 2;                              jne   .Lx752_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx752_41
                        mov              r8, rax;                             jmp   .Lx752_40
.Lx752_56:              cmp              eax, 72;                             jne   .Lx752_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx752_41
                        cmp              rax, r8;                             je    .Lx752_41
                        mov              r8, rax;                             jmp   .Lx752_40
.Lx752_41:              lea              r9, [rsp + 352]
.Lx752_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx752_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx752_43
                        cmp              esi, 1;                              jne   .Lx752_57
                        mov              r9, rax;                             jmp   .Lx752_42
.Lx752_57:              cmp              esi, 2;                              jne   .Lx752_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx752_43
                        mov              r9, rax;                             jmp   .Lx752_42
.Lx752_58:              cmp              eax, 72;                             jne   .Lx752_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx752_43
                        cmp              rax, r9;                             je    .Lx752_43
                        mov              r9, rax;                             jmp   .Lx752_42
.Lx752_43:              cmp              r8, r9;                              je    .Lx752_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx752_44
                        cmp              eax, 104;                            je    .Lx752_44
                        cmp              eax, 72;                             jne   .Lx752_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx752_44
                                                                              jmp   .Lx752_45
.Lx752_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx752_53
                        cmp              eax, 104;                            je    .Lx752_53
                        cmp              eax, 72;                             jne   .Lx752_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx752_53
                                                                              jmp   .Lx752_46
.Lx752_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx752_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx752_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx752_51
.Lx752_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx752_47
                        cmp              eax, 104;                            je    .Lx752_47
                        cmp              eax, 72;                             jne   .Lx752_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx752_47
                                                                              jmp   .Lx752_48
.Lx752_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx752_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx752_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx752_51
.Lx752_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx752_49
                        cmp              edx, 80;                             je    .Lx752_53
                                                                              jmp   .Lx752_52
.Lx752_49:              cmp              edx, 80;                             je    .Lx752_52
                        cmp              ecx, 5;                              je    .Lx752_53
                        cmp              edx, 5;                              je    .Lx752_53
                        cmp              ecx, 3;                              jne   .Lx752_50
                        cmp              edx, 3;                              jne   .Lx752_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx752_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx752_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx752_51
                                                                              jmp   .Lx752_52
.Lx752_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx752_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx752_53
.Lx752_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx752_54
.Lx752_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx752_54
.Lx752_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx752_54:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    n340_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n332_var_ref_α
n331_call_builtin_prolog_β:
                                                                              jmp   n340_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n333_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n334_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n334_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        lea              r8, [rsp + 256]
.Lx757_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx757_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx757_41
                        cmp              esi, 1;                              jne   .Lx757_55
                        mov              r8, rax;                             jmp   .Lx757_40
.Lx757_55:              cmp              esi, 2;                              jne   .Lx757_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx757_41
                        mov              r8, rax;                             jmp   .Lx757_40
.Lx757_56:              cmp              eax, 72;                             jne   .Lx757_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx757_41
                        cmp              rax, r8;                             je    .Lx757_41
                        mov              r8, rax;                             jmp   .Lx757_40
.Lx757_41:              lea              r9, [rsp + 272]
.Lx757_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx757_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx757_43
                        cmp              esi, 1;                              jne   .Lx757_57
                        mov              r9, rax;                             jmp   .Lx757_42
.Lx757_57:              cmp              esi, 2;                              jne   .Lx757_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx757_43
                        mov              r9, rax;                             jmp   .Lx757_42
.Lx757_58:              cmp              eax, 72;                             jne   .Lx757_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx757_43
                        cmp              rax, r9;                             je    .Lx757_43
                        mov              r9, rax;                             jmp   .Lx757_42
.Lx757_43:              cmp              r8, r9;                              je    .Lx757_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx757_44
                        cmp              eax, 104;                            je    .Lx757_44
                        cmp              eax, 72;                             jne   .Lx757_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx757_44
                                                                              jmp   .Lx757_45
.Lx757_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx757_53
                        cmp              eax, 104;                            je    .Lx757_53
                        cmp              eax, 72;                             jne   .Lx757_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx757_53
                                                                              jmp   .Lx757_46
.Lx757_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx757_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx757_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx757_51
.Lx757_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx757_47
                        cmp              eax, 104;                            je    .Lx757_47
                        cmp              eax, 72;                             jne   .Lx757_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx757_47
                                                                              jmp   .Lx757_48
.Lx757_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx757_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx757_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx757_51
.Lx757_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx757_49
                        cmp              edx, 80;                             je    .Lx757_53
                                                                              jmp   .Lx757_52
.Lx757_49:              cmp              edx, 80;                             je    .Lx757_52
                        cmp              ecx, 5;                              je    .Lx757_53
                        cmp              edx, 5;                              je    .Lx757_53
                        cmp              ecx, 3;                              jne   .Lx757_50
                        cmp              edx, 3;                              jne   .Lx757_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx757_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx757_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx757_51
                                                                              jmp   .Lx757_52
.Lx757_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx757_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx757_53
.Lx757_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx757_54
.Lx757_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx757_54
.Lx757_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx757_54:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n340_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n335_var_ref_α
n334_call_builtin_prolog_β:
                                                                              jmp   n340_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n336_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:     mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx760_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n337_call_builtin_prolog_α
.Lx760_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n337_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n340_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n338_move_label_α
n337_call_builtin_prolog_β:
                                                                              jmp   n340_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n338_move_label_α:      lea              rax, [rip + n340_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n339_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    d$2F3_ω
                                                                              jmp   rax
n339_disjunction_β:                                                           jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n340_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104;                            je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   d$2F3_ω
n340_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_β:
                                                                              jmp   n339_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 8248]
                        add              rsp, 8272;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ω:
                        mov              rcx, qword ptr [rsp + 8256]
                        add              rsp, 8272;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx767_2]
                        lea              rdx, [rip + .Lx767_3];               jmp   FN__d$2F3
.Lx767_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx767_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__top$2F0:
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rcx
                        mov              qword ptr [rsp + 160], rdx
                        mov              qword ptr [rsp + 168], rsp
                        mov              rdi, rsp
                        mov              esi, 112
                        mov              edx, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
top$2F0_α_body:
                        lea              rax, [rip + n770_suspend_β]
                        mov              qword ptr [rsp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n768_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx772_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx772_101
.Lx772_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx772_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx772_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx772_101
.Lx772_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx772_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    top$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n769_call_proc_staged_α
n768_call_builtin_prolog_β:
                                                                              jmp   top$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n769_call_proc_staged_α:
                        call             ops8$2F0_dcα;                        jmp   .Lx774_2
.Lx774_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx774_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx774_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n771_call_builtin_prolog_α
                                                                              jmp   n770_suspend_α
n769_call_proc_staged_β:
                                                                              jmp   n771_call_builtin_prolog_α
.Lx774_0:               .quad            .Lx774_0_s
.Lx774_0_s:             .string          "ops8/0"
#-----------------------------------------------------------------------------------------------------------------------
n770_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx776_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 112];          jmp   rax
.Lx776_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n770_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n770_suspend_β]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   top$2F0_γ
n770_suspend_β:                                                               jmp   n769_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n771_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    top$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   top$2F0_ω
n771_call_builtin_prolog_β:
                                                                              jmp   top$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_β:
                                                                              jmp   n770_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx777_50
                        mov              qword ptr [rsp + 112], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 112];          jmp   rax
.Lx777_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 152]
                        add              rsp, 176;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_ω:
                        mov              rcx, qword ptr [rsp + 160]
                        add              rsp, 176;                            jmp   rcx
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rt_gcheap_warmup@PLT
                        call             rt_plw_floor_bypass_on@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                              jmp   main_α
.Lmain_zf_γ:            xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:            mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 336
                        mov              qword ptr [rsp + 312], rcx
                        mov              qword ptr [rsp + 320], rdx
                        mov              qword ptr [rsp + 328], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 304
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n778_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx789_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx789_101
.Lx789_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx789_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx789_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx789_101
.Lx789_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx789_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n779_call_proc_staged_α
n778_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n779_call_proc_staged_α:
                        mov              qword ptr [rsp + 256], 0
                        lea              rax, [rip + .Lx791_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx791_1
                        lea              rcx, [rip + .Lx791_3]
                        lea              rdx, [rip + .Lx791_4];               jmp   rax
.Lx791_3:               mov              qword ptr [rsp + 264], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lx791_5
                        mov              qword ptr [rsp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx791_2
.Lx791_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx791_2
.Lx791_4:               mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lx791_6
                        mov              qword ptr [rsp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx791_2
.Lx791_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx791_2
.Lx791_1:               call             rt_faildescr@PLT
.Lx791_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx791_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
.Lx791_29:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n782_lit_string_α
                                                                              jmp   n780_lit_string_α
n779_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 256], 0
                        lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n782_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              ecx, 16
                        mov              r8d, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n782_lit_string_α
                        lea              r11, [rip + .Lx791_7]
                        push             r11
                        lea              rcx, [rip + .Lx791_3]
                        lea              rdx, [rip + .Lx791_4];               jmp   rax
.Lx791_7:               add              rsp, 8
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n782_lit_string_α
                                                                              jmp   n780_lit_string_α
.Lx791_0:               .quad            .Lx791_0_s
.Lx791_0_s:             .string          "top/0"
#-----------------------------------------------------------------------------------------------------------------------
n780_lit_string_α:      mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 2
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n781_call_builtin_prolog_α
.Lx792_0:               .quad            .Lx792_0_s
.Lx792_0_s:             .string          "ok"
#-----------------------------------------------------------------------------------------------------------------------
n781_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn794:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn794]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104;                            je    n788_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n784_lit_string_α
n781_call_builtin_prolog_β:
                                                                              jmp   n788_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n782_lit_string_α:      mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 6
                        mov              rax, qword ptr [rip + .Lx795_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n783_call_builtin_prolog_α
.Lx795_0:               .quad            .Lx795_0_s
.Lx795_0_s:             .string          "failed"
#-----------------------------------------------------------------------------------------------------------------------
n783_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn797:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn797]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    n788_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n784_lit_string_α
n783_call_builtin_prolog_β:
                                                                              jmp   n788_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n784_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx798_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n785_call_builtin_prolog_α
.Lx798_0:               .quad            .Lx798_0_s
.Lx798_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n785_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn800:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn800]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n788_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n786_move_label_α
n785_call_builtin_prolog_β:
                                                                              jmp   n788_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n786_move_label_α:      lea              rax, [rip + n788_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n787_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n787_disjunction_β:                                                           jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n788_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_ω
n788_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n787_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 312]
                        add              rsp, 336;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 320]
                        add              rsp, 336;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "ops8/0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__ops8$2F0
                        .quad            ops8$2F0_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1024
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "d/3"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__d$2F3
                        .quad            d$2F3_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            8224
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "top/0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__top$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            128
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
