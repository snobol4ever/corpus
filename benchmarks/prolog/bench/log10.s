                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__log10$2F0:
                        sub              rsp, 1088
                        mov              qword ptr [rsp + 1064], rcx
                        mov              qword ptr [rsp + 1072], rdx
                        mov              qword ptr [rsp + 1080], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1056
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
log10$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx28_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx28_101
.Lx28_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx28_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx28_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx28_101
.Lx28_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx28_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 3
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n2_lit_string_α
.Lx29_0:                .quad            .Lx29_0_s
.Lx29_0_s:              .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 3
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n3_lit_string_α
.Lx30_0:                .quad            .Lx30_0_s
.Lx30_0_s:              .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 3
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n4_lit_string_α
.Lx31_0:                .quad            .Lx31_0_s
.Lx31_0_s:              .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 3
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n5_lit_string_α
.Lx32_0:                .quad            .Lx32_0_s
.Lx32_0_s:              .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 3
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n6_lit_string_α
.Lx33_0:                .quad            .Lx33_0_s
.Lx33_0_s:              .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 3
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n7_lit_string_α
.Lx34_0:                .quad            .Lx34_0_s
.Lx34_0_s:              .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 3
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n8_lit_string_α
.Lx35_0:                .quad            .Lx35_0_s
.Lx35_0_s:              .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 3
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n9_lit_string_α
.Lx36_0:                .quad            .Lx36_0_s
.Lx36_0_s:              .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 3
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n10_lit_string_α
.Lx37_0:                .quad            .Lx37_0_s
.Lx37_0_s:              .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 3
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n11_lit_string_α
.Lx38_0:                .quad            .Lx38_0_s
.Lx38_0_s:              .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 1
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n12_call_builtin_prolog_α
.Lx39_0:                .quad            .Lx39_0_s
.Lx39_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_call_builtin_prolog_α
n12_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_call_builtin_prolog_α
n13_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        lea              rdi, [rsp + 368]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_call_builtin_prolog_α
n14_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_call_builtin_prolog_α
n15_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_call_builtin_prolog_α
n16_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_call_builtin_prolog_α
n17_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_call_builtin_prolog_α
n18_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_call_builtin_prolog_α
n19_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_call_builtin_prolog_α
n20_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n27_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_lit_string_α
n21_call_builtin_prolog_β:
                                                                              jmp   n27_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 1
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n23_var_ref_α
.Lx50_0:                .quad            .Lx50_0_s
.Lx50_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1024]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n24_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_proc_staged_α: lea              rsi, [rsp + 912]
                        lea              rdx, [rsp + 992]
                        lea              rcx, [rsp + 1008]
                        call             d$2F3_dcα;                           jmp   .Lx54_2
.Lx54_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx54_29
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
.Lx54_29:               mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n27_call_builtin_prolog_α
                                                                              jmp   n25_move_label_α
n24_call_proc_staged_β:                                                       jmp   n27_call_builtin_prolog_α
.Lx54_0:                .quad            .Lx54_0_s
.Lx54_0_s:              .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n25_move_label_α:       lea              rax, [rip + n24_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   log10$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n26_disjunction_α:      mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    log10$2F0_ω
                                                                              jmp   rax
n26_disjunction_β:                                                            jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    log10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   log10$2F0_ω
n27_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_β:
                                                                              jmp   n26_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1064]
                        add              rsp, 1088;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_ω:
                        mov              rcx, qword ptr [rsp + 1072]
                        add              rsp, 1088;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx60_2]
                        lea              rdx, [rip + .Lx60_3];                jmp   FN__log10$2F0
.Lx60_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx60_3:                pop              r11
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
n61_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx339_102
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lx339_101
.Lx339_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx339_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx339_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx339_101
.Lx339_100:             lea              rdi, [rsp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx339_101:             mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n62_var_ref_α
n61_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 8080], rax
                        mov              qword ptr [rsp + 8088], rdx;         jmp   n63_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      mov              qword ptr [rsp + 8096], 3            # result
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 8104], rax;         jmp   n64_lit_string_α
.Lx342_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       mov              qword ptr [rsp + 8112], 2            # result
                        mov              dword ptr [rsp + 8116], 1
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rsp + 8120], rax;         jmp   n65_call_builtin_prolog_α
.Lx343_0:               .quad            .Lx343_0_s
.Lx343_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n92_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n66_var_ref_α
n65_call_builtin_prolog_β:
                                                                              jmp   n92_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7872], rax
                        mov              qword ptr [rsp + 7880], rdx;         jmp   n67_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              qword ptr [rsp + 8000], 2            # result
                        mov              dword ptr [rsp + 8004], 1
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rsp + 8008], rax;         jmp   n68_var_ref_α
.Lx347_0:               .quad            .Lx347_0_s
.Lx347_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7888], rax
                        mov              qword ptr [rsp + 7896], rdx;         jmp   n69_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7904], rax
                        mov              qword ptr [rsp + 7912], rdx;         jmp   n70_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n91_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n71_call_builtin_prolog_α
n70_call_builtin_prolog_β:
                                                                              jmp   n91_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_prolog_α:
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
.Lx353_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx353_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx353_41
                        cmp              esi, 1;                              jne   .Lx353_55
                        mov              r8, rax;                             jmp   .Lx353_40
.Lx353_55:              cmp              esi, 2;                              jne   .Lx353_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx353_41
                        mov              r8, rax;                             jmp   .Lx353_40
.Lx353_56:              cmp              al, 72;                              jne   .Lx353_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx353_41
                        cmp              rax, r8;                             je    .Lx353_41
                        mov              r8, rax;                             jmp   .Lx353_40
.Lx353_41:              lea              r9, [rsp + 7856]
.Lx353_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx353_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx353_43
                        cmp              esi, 1;                              jne   .Lx353_57
                        mov              r9, rax;                             jmp   .Lx353_42
.Lx353_57:              cmp              esi, 2;                              jne   .Lx353_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx353_43
                        mov              r9, rax;                             jmp   .Lx353_42
.Lx353_58:              cmp              al, 72;                              jne   .Lx353_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx353_43
                        cmp              rax, r9;                             je    .Lx353_43
                        mov              r9, rax;                             jmp   .Lx353_42
.Lx353_43:              cmp              r8, r9;                              je    .Lx353_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx353_44
                        cmp              al, 104;                             je    .Lx353_44
                        cmp              al, 72;                              jne   .Lx353_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx353_44
                                                                              jmp   .Lx353_45
.Lx353_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx353_53
                        cmp              al, 104;                             je    .Lx353_53
                        cmp              al, 72;                              jne   .Lx353_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx353_53
                                                                              jmp   .Lx353_46
.Lx353_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx353_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx353_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx353_51
.Lx353_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx353_47
                        cmp              al, 104;                             je    .Lx353_47
                        cmp              al, 72;                              jne   .Lx353_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx353_47
                                                                              jmp   .Lx353_48
.Lx353_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx353_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx353_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx353_51
.Lx353_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx353_49
                        cmp              dl, 80;                              je    .Lx353_53
                                                                              jmp   .Lx353_52
.Lx353_49:              cmp              dl, 80;                              je    .Lx353_52
                        cmp              cl, 5;                               je    .Lx353_53
                        cmp              dl, 5;                               je    .Lx353_53
                        cmp              cl, 3;                               jne   .Lx353_50
                        cmp              dl, 3;                               jne   .Lx353_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx353_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx353_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx353_51
                                                                              jmp   .Lx353_52
.Lx353_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx353_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx353_53
.Lx353_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx353_54
.Lx353_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx353_54
.Lx353_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx353_54:              mov              qword ptr [rsp + 7824], rax
                        mov              qword ptr [rsp + 7832], rdx
                        cmp              al, 104;                             je    n91_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n72_var_ref_α
n71_call_builtin_prolog_β:
                                                                              jmp   n91_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 7792], rax
                        mov              qword ptr [rsp + 7800], rdx;         jmp   n73_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7808], rax
                        mov              qword ptr [rsp + 7816], rdx;         jmp   n74_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_prolog_α:
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
.Lx358_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx358_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx358_41
                        cmp              esi, 1;                              jne   .Lx358_55
                        mov              r8, rax;                             jmp   .Lx358_40
.Lx358_55:              cmp              esi, 2;                              jne   .Lx358_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx358_41
                        mov              r8, rax;                             jmp   .Lx358_40
.Lx358_56:              cmp              al, 72;                              jne   .Lx358_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx358_41
                        cmp              rax, r8;                             je    .Lx358_41
                        mov              r8, rax;                             jmp   .Lx358_40
.Lx358_41:              lea              r9, [rsp + 7776]
.Lx358_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx358_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx358_43
                        cmp              esi, 1;                              jne   .Lx358_57
                        mov              r9, rax;                             jmp   .Lx358_42
.Lx358_57:              cmp              esi, 2;                              jne   .Lx358_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx358_43
                        mov              r9, rax;                             jmp   .Lx358_42
.Lx358_58:              cmp              al, 72;                              jne   .Lx358_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx358_43
                        cmp              rax, r9;                             je    .Lx358_43
                        mov              r9, rax;                             jmp   .Lx358_42
.Lx358_43:              cmp              r8, r9;                              je    .Lx358_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx358_44
                        cmp              al, 104;                             je    .Lx358_44
                        cmp              al, 72;                              jne   .Lx358_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx358_44
                                                                              jmp   .Lx358_45
.Lx358_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx358_53
                        cmp              al, 104;                             je    .Lx358_53
                        cmp              al, 72;                              jne   .Lx358_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx358_53
                                                                              jmp   .Lx358_46
.Lx358_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx358_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx358_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx358_51
.Lx358_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx358_47
                        cmp              al, 104;                             je    .Lx358_47
                        cmp              al, 72;                              jne   .Lx358_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx358_47
                                                                              jmp   .Lx358_48
.Lx358_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx358_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx358_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx358_51
.Lx358_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx358_49
                        cmp              dl, 80;                              je    .Lx358_53
                                                                              jmp   .Lx358_52
.Lx358_49:              cmp              dl, 80;                              je    .Lx358_52
                        cmp              cl, 5;                               je    .Lx358_53
                        cmp              dl, 5;                               je    .Lx358_53
                        cmp              cl, 3;                               jne   .Lx358_50
                        cmp              dl, 3;                               jne   .Lx358_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx358_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx358_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx358_51
                                                                              jmp   .Lx358_52
.Lx358_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx358_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx358_53
.Lx358_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx358_54
.Lx358_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx358_54
.Lx358_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx358_54:              mov              qword ptr [rsp + 7744], rax
                        mov              qword ptr [rsp + 7752], rdx
                        cmp              al, 104;                             je    n91_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n75_var_ref_α
n74_call_builtin_prolog_β:
                                                                              jmp   n91_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 7600], rax
                        mov              qword ptr [rsp + 7608], rdx;         jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              qword ptr [rsp + 7728], 2            # result
                        mov              dword ptr [rsp + 7732], 1
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rsp + 7736], rax;         jmp   n77_var_ref_α
.Lx361_0:               .quad            .Lx361_0_s
.Lx361_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 7616], rax
                        mov              qword ptr [rsp + 7624], rdx;         jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 7632], rax
                        mov              qword ptr [rsp + 7640], rdx;         jmp   n79_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n91_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n80_call_builtin_prolog_α
n79_call_builtin_prolog_β:
                                                                              jmp   n91_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_prolog_α:
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
.Lx367_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx367_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx367_41
                        cmp              esi, 1;                              jne   .Lx367_55
                        mov              r8, rax;                             jmp   .Lx367_40
.Lx367_55:              cmp              esi, 2;                              jne   .Lx367_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx367_41
                        mov              r8, rax;                             jmp   .Lx367_40
.Lx367_56:              cmp              al, 72;                              jne   .Lx367_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx367_41
                        cmp              rax, r8;                             je    .Lx367_41
                        mov              r8, rax;                             jmp   .Lx367_40
.Lx367_41:              lea              r9, [rsp + 7584]
.Lx367_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx367_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx367_43
                        cmp              esi, 1;                              jne   .Lx367_57
                        mov              r9, rax;                             jmp   .Lx367_42
.Lx367_57:              cmp              esi, 2;                              jne   .Lx367_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx367_43
                        mov              r9, rax;                             jmp   .Lx367_42
.Lx367_58:              cmp              al, 72;                              jne   .Lx367_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx367_43
                        cmp              rax, r9;                             je    .Lx367_43
                        mov              r9, rax;                             jmp   .Lx367_42
.Lx367_43:              cmp              r8, r9;                              je    .Lx367_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx367_44
                        cmp              al, 104;                             je    .Lx367_44
                        cmp              al, 72;                              jne   .Lx367_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx367_44
                                                                              jmp   .Lx367_45
.Lx367_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx367_53
                        cmp              al, 104;                             je    .Lx367_53
                        cmp              al, 72;                              jne   .Lx367_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx367_53
                                                                              jmp   .Lx367_46
.Lx367_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx367_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx367_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx367_51
.Lx367_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx367_47
                        cmp              al, 104;                             je    .Lx367_47
                        cmp              al, 72;                              jne   .Lx367_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx367_47
                                                                              jmp   .Lx367_48
.Lx367_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx367_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx367_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx367_51
.Lx367_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx367_49
                        cmp              dl, 80;                              je    .Lx367_53
                                                                              jmp   .Lx367_52
.Lx367_49:              cmp              dl, 80;                              je    .Lx367_52
                        cmp              cl, 5;                               je    .Lx367_53
                        cmp              dl, 5;                               je    .Lx367_53
                        cmp              cl, 3;                               jne   .Lx367_50
                        cmp              dl, 3;                               jne   .Lx367_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx367_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx367_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx367_51
                                                                              jmp   .Lx367_52
.Lx367_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx367_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx367_53
.Lx367_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx367_54
.Lx367_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx367_54
.Lx367_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx367_54:              mov              qword ptr [rsp + 7552], rax
                        mov              qword ptr [rsp + 7560], rdx
                        cmp              al, 104;                             je    n91_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n81_cut_α
n80_call_builtin_prolog_β:
                                                                              jmp   n91_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n81_cut_α:                                                                    jmp   n82_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7504], rax
                        mov              qword ptr [rsp + 7512], rdx;         jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7520], rax
                        mov              qword ptr [rsp + 7528], rdx;         jmp   n84_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 7536], rax
                        mov              qword ptr [rsp + 7544], rdx;         jmp   n85_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_proc_staged_α: lea              rsi, [rsp + 7504]
                        lea              rdx, [rsp + 7520]
                        lea              rcx, [rsp + 7536]
                        call             d$2F3_dcα;                           jmp   .Lx376_2
.Lx376_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx376_29
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
.Lx376_29:              mov              qword ptr [rsp + 7424], rax
                        mov              qword ptr [rsp + 7432], rdx
                        cmp              al, 104;                             je    n338_call_builtin_prolog_α
                                                                              jmp   n86_var_ref_α
n85_call_proc_staged_β:                                                       jmp   n338_call_builtin_prolog_α
.Lx376_0:               .quad            .Lx376_0_s
.Lx376_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7376], rax
                        mov              qword ptr [rsp + 7384], rdx;         jmp   n87_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7392], rax
                        mov              qword ptr [rsp + 7400], rdx;         jmp   n88_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 7408], rax
                        mov              qword ptr [rsp + 7416], rdx;         jmp   n89_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n89_call_proc_staged_α: lea              rsi, [rsp + 7376]
                        lea              rdx, [rsp + 7392]
                        lea              rcx, [rsp + 7408]
                        call             d$2F3_dcα;                           jmp   .Lx384_2
.Lx384_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx384_29
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
.Lx384_29:              mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx
                        cmp              al, 104;                             je    n85_call_proc_staged_β
                                                                              jmp   n90_move_label_α
n89_call_proc_staged_β:                                                       jmp   n85_call_proc_staged_β
.Lx384_0:               .quad            .Lx384_0_s
.Lx384_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n90_move_label_α:       lea              rax, [rip + n89_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n92_var_ref_α
n91_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7216], rax
                        mov              qword ptr [rsp + 7224], rdx;         jmp   n93_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      mov              qword ptr [rsp + 7232], 3            # result
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rsp + 7240], rax;         jmp   n94_lit_string_α
.Lx390_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       mov              qword ptr [rsp + 7248], 2            # result
                        mov              dword ptr [rsp + 7252], 1
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rsp + 7256], rax;         jmp   n95_call_builtin_prolog_α
.Lx391_0:               .quad            .Lx391_0_s
.Lx391_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n122_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n96_var_ref_α
n95_call_builtin_prolog_β:
                                                                              jmp   n122_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7008], rax
                        mov              qword ptr [rsp + 7016], rdx;         jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              qword ptr [rsp + 7136], 2            # result
                        mov              dword ptr [rsp + 7140], 1
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rsp + 7144], rax;         jmp   n98_var_ref_α
.Lx395_0:               .quad            .Lx395_0_s
.Lx395_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7024], rax
                        mov              qword ptr [rsp + 7032], rdx;         jmp   n99_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7040], rax
                        mov              qword ptr [rsp + 7048], rdx;         jmp   n100_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n121_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n101_call_builtin_prolog_α
n100_call_builtin_prolog_β:
                                                                              jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_prolog_α:
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
.Lx401_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx401_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx401_41
                        cmp              esi, 1;                              jne   .Lx401_55
                        mov              r8, rax;                             jmp   .Lx401_40
.Lx401_55:              cmp              esi, 2;                              jne   .Lx401_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx401_41
                        mov              r8, rax;                             jmp   .Lx401_40
.Lx401_56:              cmp              al, 72;                              jne   .Lx401_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx401_41
                        cmp              rax, r8;                             je    .Lx401_41
                        mov              r8, rax;                             jmp   .Lx401_40
.Lx401_41:              lea              r9, [rsp + 6992]
.Lx401_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx401_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx401_43
                        cmp              esi, 1;                              jne   .Lx401_57
                        mov              r9, rax;                             jmp   .Lx401_42
.Lx401_57:              cmp              esi, 2;                              jne   .Lx401_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx401_43
                        mov              r9, rax;                             jmp   .Lx401_42
.Lx401_58:              cmp              al, 72;                              jne   .Lx401_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx401_43
                        cmp              rax, r9;                             je    .Lx401_43
                        mov              r9, rax;                             jmp   .Lx401_42
.Lx401_43:              cmp              r8, r9;                              je    .Lx401_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx401_44
                        cmp              al, 104;                             je    .Lx401_44
                        cmp              al, 72;                              jne   .Lx401_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx401_44
                                                                              jmp   .Lx401_45
.Lx401_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx401_53
                        cmp              al, 104;                             je    .Lx401_53
                        cmp              al, 72;                              jne   .Lx401_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx401_53
                                                                              jmp   .Lx401_46
.Lx401_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx401_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx401_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx401_51
.Lx401_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx401_47
                        cmp              al, 104;                             je    .Lx401_47
                        cmp              al, 72;                              jne   .Lx401_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx401_47
                                                                              jmp   .Lx401_48
.Lx401_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx401_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx401_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx401_51
.Lx401_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx401_49
                        cmp              dl, 80;                              je    .Lx401_53
                                                                              jmp   .Lx401_52
.Lx401_49:              cmp              dl, 80;                              je    .Lx401_52
                        cmp              cl, 5;                               je    .Lx401_53
                        cmp              dl, 5;                               je    .Lx401_53
                        cmp              cl, 3;                               jne   .Lx401_50
                        cmp              dl, 3;                               jne   .Lx401_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx401_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx401_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx401_51
                                                                              jmp   .Lx401_52
.Lx401_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx401_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx401_53
.Lx401_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx401_54
.Lx401_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx401_54
.Lx401_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx401_54:              mov              qword ptr [rsp + 6960], rax
                        mov              qword ptr [rsp + 6968], rdx
                        cmp              al, 104;                             je    n121_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n102_var_ref_α
n101_call_builtin_prolog_β:
                                                                              jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 6928], rax
                        mov              qword ptr [rsp + 6936], rdx;         jmp   n103_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6944], rax
                        mov              qword ptr [rsp + 6952], rdx;         jmp   n104_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_prolog_α:
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
.Lx406_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx406_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx406_41
                        cmp              esi, 1;                              jne   .Lx406_55
                        mov              r8, rax;                             jmp   .Lx406_40
.Lx406_55:              cmp              esi, 2;                              jne   .Lx406_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx406_41
                        mov              r8, rax;                             jmp   .Lx406_40
.Lx406_56:              cmp              al, 72;                              jne   .Lx406_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx406_41
                        cmp              rax, r8;                             je    .Lx406_41
                        mov              r8, rax;                             jmp   .Lx406_40
.Lx406_41:              lea              r9, [rsp + 6912]
.Lx406_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx406_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx406_43
                        cmp              esi, 1;                              jne   .Lx406_57
                        mov              r9, rax;                             jmp   .Lx406_42
.Lx406_57:              cmp              esi, 2;                              jne   .Lx406_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx406_43
                        mov              r9, rax;                             jmp   .Lx406_42
.Lx406_58:              cmp              al, 72;                              jne   .Lx406_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx406_43
                        cmp              rax, r9;                             je    .Lx406_43
                        mov              r9, rax;                             jmp   .Lx406_42
.Lx406_43:              cmp              r8, r9;                              je    .Lx406_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx406_44
                        cmp              al, 104;                             je    .Lx406_44
                        cmp              al, 72;                              jne   .Lx406_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx406_44
                                                                              jmp   .Lx406_45
.Lx406_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx406_53
                        cmp              al, 104;                             je    .Lx406_53
                        cmp              al, 72;                              jne   .Lx406_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx406_53
                                                                              jmp   .Lx406_46
.Lx406_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx406_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx406_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx406_51
.Lx406_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx406_47
                        cmp              al, 104;                             je    .Lx406_47
                        cmp              al, 72;                              jne   .Lx406_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx406_47
                                                                              jmp   .Lx406_48
.Lx406_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx406_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx406_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx406_51
.Lx406_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx406_49
                        cmp              dl, 80;                              je    .Lx406_53
                                                                              jmp   .Lx406_52
.Lx406_49:              cmp              dl, 80;                              je    .Lx406_52
                        cmp              cl, 5;                               je    .Lx406_53
                        cmp              dl, 5;                               je    .Lx406_53
                        cmp              cl, 3;                               jne   .Lx406_50
                        cmp              dl, 3;                               jne   .Lx406_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx406_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx406_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx406_51
                                                                              jmp   .Lx406_52
.Lx406_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx406_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx406_53
.Lx406_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx406_54
.Lx406_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx406_54
.Lx406_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx406_54:              mov              qword ptr [rsp + 6880], rax
                        mov              qword ptr [rsp + 6888], rdx
                        cmp              al, 104;                             je    n121_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n105_var_ref_α
n104_call_builtin_prolog_β:
                                                                              jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 6736], rax
                        mov              qword ptr [rsp + 6744], rdx;         jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      mov              qword ptr [rsp + 6864], 2            # result
                        mov              dword ptr [rsp + 6868], 1
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rsp + 6872], rax;         jmp   n107_var_ref_α
.Lx409_0:               .quad            .Lx409_0_s
.Lx409_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 6752], rax
                        mov              qword ptr [rsp + 6760], rdx;         jmp   n108_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 6768], rax
                        mov              qword ptr [rsp + 6776], rdx;         jmp   n109_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n121_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n110_call_builtin_prolog_α
n109_call_builtin_prolog_β:
                                                                              jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n110_call_builtin_prolog_α:
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
.Lx415_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx415_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx415_41
                        cmp              esi, 1;                              jne   .Lx415_55
                        mov              r8, rax;                             jmp   .Lx415_40
.Lx415_55:              cmp              esi, 2;                              jne   .Lx415_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx415_41
                        mov              r8, rax;                             jmp   .Lx415_40
.Lx415_56:              cmp              al, 72;                              jne   .Lx415_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx415_41
                        cmp              rax, r8;                             je    .Lx415_41
                        mov              r8, rax;                             jmp   .Lx415_40
.Lx415_41:              lea              r9, [rsp + 6720]
.Lx415_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx415_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx415_43
                        cmp              esi, 1;                              jne   .Lx415_57
                        mov              r9, rax;                             jmp   .Lx415_42
.Lx415_57:              cmp              esi, 2;                              jne   .Lx415_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx415_43
                        mov              r9, rax;                             jmp   .Lx415_42
.Lx415_58:              cmp              al, 72;                              jne   .Lx415_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx415_43
                        cmp              rax, r9;                             je    .Lx415_43
                        mov              r9, rax;                             jmp   .Lx415_42
.Lx415_43:              cmp              r8, r9;                              je    .Lx415_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx415_44
                        cmp              al, 104;                             je    .Lx415_44
                        cmp              al, 72;                              jne   .Lx415_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx415_44
                                                                              jmp   .Lx415_45
.Lx415_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx415_53
                        cmp              al, 104;                             je    .Lx415_53
                        cmp              al, 72;                              jne   .Lx415_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx415_53
                                                                              jmp   .Lx415_46
.Lx415_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx415_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx415_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx415_51
.Lx415_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx415_47
                        cmp              al, 104;                             je    .Lx415_47
                        cmp              al, 72;                              jne   .Lx415_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx415_47
                                                                              jmp   .Lx415_48
.Lx415_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx415_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx415_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx415_51
.Lx415_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx415_49
                        cmp              dl, 80;                              je    .Lx415_53
                                                                              jmp   .Lx415_52
.Lx415_49:              cmp              dl, 80;                              je    .Lx415_52
                        cmp              cl, 5;                               je    .Lx415_53
                        cmp              dl, 5;                               je    .Lx415_53
                        cmp              cl, 3;                               jne   .Lx415_50
                        cmp              dl, 3;                               jne   .Lx415_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx415_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx415_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx415_51
                                                                              jmp   .Lx415_52
.Lx415_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx415_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx415_53
.Lx415_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx415_54
.Lx415_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx415_54
.Lx415_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx415_54:              mov              qword ptr [rsp + 6688], rax
                        mov              qword ptr [rsp + 6696], rdx
                        cmp              al, 104;                             je    n121_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n111_cut_α
n110_call_builtin_prolog_β:
                                                                              jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_cut_α:                                                                   jmp   n112_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 6640], rax
                        mov              qword ptr [rsp + 6648], rdx;         jmp   n113_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6656], rax
                        mov              qword ptr [rsp + 6664], rdx;         jmp   n114_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 6672], rax
                        mov              qword ptr [rsp + 6680], rdx;         jmp   n115_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_proc_staged_α:
                        lea              rsi, [rsp + 6640]
                        lea              rdx, [rsp + 6656]
                        lea              rcx, [rsp + 6672]
                        call             d$2F3_dcα;                           jmp   .Lx424_2
.Lx424_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx424_29
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
.Lx424_29:              mov              qword ptr [rsp + 6560], rax
                        mov              qword ptr [rsp + 6568], rdx
                        cmp              al, 104;                             je    n338_call_builtin_prolog_α
                                                                              jmp   n116_var_ref_α
n115_call_proc_staged_β:
                                                                              jmp   n338_call_builtin_prolog_α
.Lx424_0:               .quad            .Lx424_0_s
.Lx424_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 6512], rax
                        mov              qword ptr [rsp + 6520], rdx;         jmp   n117_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6528], rax
                        mov              qword ptr [rsp + 6536], rdx;         jmp   n118_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 6544], rax
                        mov              qword ptr [rsp + 6552], rdx;         jmp   n119_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n119_call_proc_staged_α:
                        lea              rsi, [rsp + 6512]
                        lea              rdx, [rsp + 6528]
                        lea              rcx, [rsp + 6544]
                        call             d$2F3_dcα;                           jmp   .Lx432_2
.Lx432_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx432_29
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
.Lx432_29:              mov              qword ptr [rsp + 6432], rax
                        mov              qword ptr [rsp + 6440], rdx
                        cmp              al, 104;                             je    n115_call_proc_staged_β
                                                                              jmp   n120_move_label_α
n119_call_proc_staged_β:
                                                                              jmp   n115_call_proc_staged_β
.Lx432_0:               .quad            .Lx432_0_s
.Lx432_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n120_move_label_α:      lea              rax, [rip + n119_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n122_var_ref_α
n121_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 6352], rax
                        mov              qword ptr [rsp + 6360], rdx;         jmp   n123_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_integer_α:     mov              qword ptr [rsp + 6368], 3            # result
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rsp + 6376], rax;         jmp   n124_lit_string_α
.Lx438_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      mov              qword ptr [rsp + 6384], 2            # result
                        mov              dword ptr [rsp + 6388], 1
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rsp + 6392], rax;         jmp   n125_call_builtin_prolog_α
.Lx439_0:               .quad            .Lx439_0_s
.Lx439_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n158_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n126_var_ref_α
n125_call_builtin_prolog_β:
                                                                              jmp   n158_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 6144], rax
                        mov              qword ptr [rsp + 6152], rdx;         jmp   n127_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              qword ptr [rsp + 6272], 2            # result
                        mov              dword ptr [rsp + 6276], 1
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rsp + 6280], rax;         jmp   n128_var_ref_α
.Lx443_0:               .quad            .Lx443_0_s
.Lx443_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 6160], rax
                        mov              qword ptr [rsp + 6168], rdx;         jmp   n129_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 6176], rax
                        mov              qword ptr [rsp + 6184], rdx;         jmp   n130_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n157_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n131_call_builtin_prolog_α
n130_call_builtin_prolog_β:
                                                                              jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_prolog_α:
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
.Lx449_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx449_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx449_41
                        cmp              esi, 1;                              jne   .Lx449_55
                        mov              r8, rax;                             jmp   .Lx449_40
.Lx449_55:              cmp              esi, 2;                              jne   .Lx449_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx449_41
                        mov              r8, rax;                             jmp   .Lx449_40
.Lx449_56:              cmp              al, 72;                              jne   .Lx449_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx449_41
                        cmp              rax, r8;                             je    .Lx449_41
                        mov              r8, rax;                             jmp   .Lx449_40
.Lx449_41:              lea              r9, [rsp + 6128]
.Lx449_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx449_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx449_43
                        cmp              esi, 1;                              jne   .Lx449_57
                        mov              r9, rax;                             jmp   .Lx449_42
.Lx449_57:              cmp              esi, 2;                              jne   .Lx449_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx449_43
                        mov              r9, rax;                             jmp   .Lx449_42
.Lx449_58:              cmp              al, 72;                              jne   .Lx449_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx449_43
                        cmp              rax, r9;                             je    .Lx449_43
                        mov              r9, rax;                             jmp   .Lx449_42
.Lx449_43:              cmp              r8, r9;                              je    .Lx449_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx449_44
                        cmp              al, 104;                             je    .Lx449_44
                        cmp              al, 72;                              jne   .Lx449_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx449_44
                                                                              jmp   .Lx449_45
.Lx449_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx449_53
                        cmp              al, 104;                             je    .Lx449_53
                        cmp              al, 72;                              jne   .Lx449_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx449_53
                                                                              jmp   .Lx449_46
.Lx449_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx449_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx449_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx449_51
.Lx449_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx449_47
                        cmp              al, 104;                             je    .Lx449_47
                        cmp              al, 72;                              jne   .Lx449_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx449_47
                                                                              jmp   .Lx449_48
.Lx449_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx449_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx449_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx449_51
.Lx449_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx449_49
                        cmp              dl, 80;                              je    .Lx449_53
                                                                              jmp   .Lx449_52
.Lx449_49:              cmp              dl, 80;                              je    .Lx449_52
                        cmp              cl, 5;                               je    .Lx449_53
                        cmp              dl, 5;                               je    .Lx449_53
                        cmp              cl, 3;                               jne   .Lx449_50
                        cmp              dl, 3;                               jne   .Lx449_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx449_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx449_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx449_51
                                                                              jmp   .Lx449_52
.Lx449_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx449_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx449_53
.Lx449_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx449_54
.Lx449_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx449_54
.Lx449_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx449_54:              mov              qword ptr [rsp + 6096], rax
                        mov              qword ptr [rsp + 6104], rdx
                        cmp              al, 104;                             je    n157_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n132_var_ref_α
n131_call_builtin_prolog_β:
                                                                              jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 6064], rax
                        mov              qword ptr [rsp + 6072], rdx;         jmp   n133_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6080], rax
                        mov              qword ptr [rsp + 6088], rdx;         jmp   n134_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_prolog_α:
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
.Lx454_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx454_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx454_41
                        cmp              esi, 1;                              jne   .Lx454_55
                        mov              r8, rax;                             jmp   .Lx454_40
.Lx454_55:              cmp              esi, 2;                              jne   .Lx454_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx454_41
                        mov              r8, rax;                             jmp   .Lx454_40
.Lx454_56:              cmp              al, 72;                              jne   .Lx454_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx454_41
                        cmp              rax, r8;                             je    .Lx454_41
                        mov              r8, rax;                             jmp   .Lx454_40
.Lx454_41:              lea              r9, [rsp + 6048]
.Lx454_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx454_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx454_43
                        cmp              esi, 1;                              jne   .Lx454_57
                        mov              r9, rax;                             jmp   .Lx454_42
.Lx454_57:              cmp              esi, 2;                              jne   .Lx454_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx454_43
                        mov              r9, rax;                             jmp   .Lx454_42
.Lx454_58:              cmp              al, 72;                              jne   .Lx454_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx454_43
                        cmp              rax, r9;                             je    .Lx454_43
                        mov              r9, rax;                             jmp   .Lx454_42
.Lx454_43:              cmp              r8, r9;                              je    .Lx454_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx454_44
                        cmp              al, 104;                             je    .Lx454_44
                        cmp              al, 72;                              jne   .Lx454_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx454_44
                                                                              jmp   .Lx454_45
.Lx454_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx454_53
                        cmp              al, 104;                             je    .Lx454_53
                        cmp              al, 72;                              jne   .Lx454_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx454_53
                                                                              jmp   .Lx454_46
.Lx454_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx454_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx454_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx454_51
.Lx454_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx454_47
                        cmp              al, 104;                             je    .Lx454_47
                        cmp              al, 72;                              jne   .Lx454_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx454_47
                                                                              jmp   .Lx454_48
.Lx454_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx454_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx454_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx454_51
.Lx454_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx454_49
                        cmp              dl, 80;                              je    .Lx454_53
                                                                              jmp   .Lx454_52
.Lx454_49:              cmp              dl, 80;                              je    .Lx454_52
                        cmp              cl, 5;                               je    .Lx454_53
                        cmp              dl, 5;                               je    .Lx454_53
                        cmp              cl, 3;                               jne   .Lx454_50
                        cmp              dl, 3;                               jne   .Lx454_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx454_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx454_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx454_51
                                                                              jmp   .Lx454_52
.Lx454_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx454_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx454_53
.Lx454_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx454_54
.Lx454_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx454_54
.Lx454_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx454_54:              mov              qword ptr [rsp + 6016], rax
                        mov              qword ptr [rsp + 6024], rdx
                        cmp              al, 104;                             je    n157_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n135_var_ref_α
n134_call_builtin_prolog_β:
                                                                              jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 5648], rax
                        mov              qword ptr [rsp + 5656], rdx;         jmp   n136_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:      mov              qword ptr [rsp + 6000], 2            # result
                        mov              dword ptr [rsp + 6004], 1
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rsp + 6008], rax;         jmp   n137_lit_string_α
.Lx457_0:               .quad            .Lx457_0_s
.Lx457_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      mov              qword ptr [rsp + 5776], 2            # result
                        mov              dword ptr [rsp + 5780], 1
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rsp + 5784], rax;         jmp   n138_var_ref_α
.Lx458_0:               .quad            .Lx458_0_s
.Lx458_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx;         jmp   n139_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5680], rax
                        mov              qword ptr [rsp + 5688], rdx;         jmp   n140_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n141_lit_string_α
n140_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      mov              qword ptr [rsp + 5904], 2            # result
                        mov              dword ptr [rsp + 5908], 1
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rsp + 5912], rax;         jmp   n142_var_ref_α
.Lx464_0:               .quad            .Lx464_0_s
.Lx464_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5792], rax
                        mov              qword ptr [rsp + 5800], rdx;         jmp   n143_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 5808], rax
                        mov              qword ptr [rsp + 5816], rdx;         jmp   n144_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n145_call_builtin_prolog_α
n144_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n145_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n157_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n146_call_builtin_prolog_α
n145_call_builtin_prolog_β:
                                                                              jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_prolog_α:
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
.Lx471_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx471_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx471_41
                        cmp              esi, 1;                              jne   .Lx471_55
                        mov              r8, rax;                             jmp   .Lx471_40
.Lx471_55:              cmp              esi, 2;                              jne   .Lx471_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx471_41
                        mov              r8, rax;                             jmp   .Lx471_40
.Lx471_56:              cmp              al, 72;                              jne   .Lx471_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx471_41
                        cmp              rax, r8;                             je    .Lx471_41
                        mov              r8, rax;                             jmp   .Lx471_40
.Lx471_41:              lea              r9, [rsp + 5632]
.Lx471_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx471_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx471_43
                        cmp              esi, 1;                              jne   .Lx471_57
                        mov              r9, rax;                             jmp   .Lx471_42
.Lx471_57:              cmp              esi, 2;                              jne   .Lx471_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx471_43
                        mov              r9, rax;                             jmp   .Lx471_42
.Lx471_58:              cmp              al, 72;                              jne   .Lx471_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx471_43
                        cmp              rax, r9;                             je    .Lx471_43
                        mov              r9, rax;                             jmp   .Lx471_42
.Lx471_43:              cmp              r8, r9;                              je    .Lx471_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx471_44
                        cmp              al, 104;                             je    .Lx471_44
                        cmp              al, 72;                              jne   .Lx471_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx471_44
                                                                              jmp   .Lx471_45
.Lx471_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx471_53
                        cmp              al, 104;                             je    .Lx471_53
                        cmp              al, 72;                              jne   .Lx471_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx471_53
                                                                              jmp   .Lx471_46
.Lx471_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx471_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx471_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx471_51
.Lx471_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx471_47
                        cmp              al, 104;                             je    .Lx471_47
                        cmp              al, 72;                              jne   .Lx471_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx471_47
                                                                              jmp   .Lx471_48
.Lx471_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx471_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx471_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx471_51
.Lx471_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx471_49
                        cmp              dl, 80;                              je    .Lx471_53
                                                                              jmp   .Lx471_52
.Lx471_49:              cmp              dl, 80;                              je    .Lx471_52
                        cmp              cl, 5;                               je    .Lx471_53
                        cmp              dl, 5;                               je    .Lx471_53
                        cmp              cl, 3;                               jne   .Lx471_50
                        cmp              dl, 3;                               jne   .Lx471_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx471_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx471_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx471_51
                                                                              jmp   .Lx471_52
.Lx471_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx471_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx471_53
.Lx471_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx471_54
.Lx471_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx471_54
.Lx471_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx471_54:              mov              qword ptr [rsp + 5600], rax
                        mov              qword ptr [rsp + 5608], rdx
                        cmp              al, 104;                             je    n157_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n147_cut_α
n146_call_builtin_prolog_β:
                                                                              jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n147_cut_α:                                                                   jmp   n148_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5552], rax
                        mov              qword ptr [rsp + 5560], rdx;         jmp   n149_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 5568], rax
                        mov              qword ptr [rsp + 5576], rdx;         jmp   n150_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 5584], rax
                        mov              qword ptr [rsp + 5592], rdx;         jmp   n151_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_proc_staged_α:
                        lea              rsi, [rsp + 5552]
                        lea              rdx, [rsp + 5568]
                        lea              rcx, [rsp + 5584]
                        call             d$2F3_dcα;                           jmp   .Lx480_2
.Lx480_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx480_29
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
.Lx480_29:              mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx
                        cmp              al, 104;                             je    n338_call_builtin_prolog_α
                                                                              jmp   n152_var_ref_α
n151_call_proc_staged_β:
                                                                              jmp   n338_call_builtin_prolog_α
.Lx480_0:               .quad            .Lx480_0_s
.Lx480_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5424], rax
                        mov              qword ptr [rsp + 5432], rdx;         jmp   n153_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 5440], rax
                        mov              qword ptr [rsp + 5448], rdx;         jmp   n154_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 5456], rax
                        mov              qword ptr [rsp + 5464], rdx;         jmp   n155_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n155_call_proc_staged_α:
                        lea              rsi, [rsp + 5424]
                        lea              rdx, [rsp + 5440]
                        lea              rcx, [rsp + 5456]
                        call             d$2F3_dcα;                           jmp   .Lx488_2
.Lx488_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx488_29
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
.Lx488_29:              mov              qword ptr [rsp + 5344], rax
                        mov              qword ptr [rsp + 5352], rdx
                        cmp              al, 104;                             je    n151_call_proc_staged_β
                                                                              jmp   n156_move_label_α
n155_call_proc_staged_β:
                                                                              jmp   n151_call_proc_staged_β
.Lx488_0:               .quad            .Lx488_0_s
.Lx488_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n156_move_label_α:      lea              rax, [rip + n155_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n157_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n158_var_ref_α
n157_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5264], rax
                        mov              qword ptr [rsp + 5272], rdx;         jmp   n159_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:     mov              qword ptr [rsp + 5280], 3            # result
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rsp + 5288], rax;         jmp   n160_lit_string_α
.Lx494_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:      mov              qword ptr [rsp + 5296], 2            # result
                        mov              dword ptr [rsp + 5300], 1
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rsp + 5304], rax;         jmp   n161_call_builtin_prolog_α
.Lx495_0:               .quad            .Lx495_0_s
.Lx495_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n161_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n200_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n162_var_ref_α
n161_call_builtin_prolog_β:
                                                                              jmp   n200_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5056], rax
                        mov              qword ptr [rsp + 5064], rdx;         jmp   n163_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:      mov              qword ptr [rsp + 5184], 2            # result
                        mov              dword ptr [rsp + 5188], 1
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rsp + 5192], rax;         jmp   n164_var_ref_α
.Lx499_0:               .quad            .Lx499_0_s
.Lx499_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5072], rax
                        mov              qword ptr [rsp + 5080], rdx;         jmp   n165_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5088], rax
                        mov              qword ptr [rsp + 5096], rdx;         jmp   n166_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n167_call_builtin_prolog_α
n166_call_builtin_prolog_β:
                                                                              jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_builtin_prolog_α:
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
.Lx505_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx505_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx505_41
                        cmp              esi, 1;                              jne   .Lx505_55
                        mov              r8, rax;                             jmp   .Lx505_40
.Lx505_55:              cmp              esi, 2;                              jne   .Lx505_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx505_41
                        mov              r8, rax;                             jmp   .Lx505_40
.Lx505_56:              cmp              al, 72;                              jne   .Lx505_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx505_41
                        cmp              rax, r8;                             je    .Lx505_41
                        mov              r8, rax;                             jmp   .Lx505_40
.Lx505_41:              lea              r9, [rsp + 5040]
.Lx505_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx505_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx505_43
                        cmp              esi, 1;                              jne   .Lx505_57
                        mov              r9, rax;                             jmp   .Lx505_42
.Lx505_57:              cmp              esi, 2;                              jne   .Lx505_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx505_43
                        mov              r9, rax;                             jmp   .Lx505_42
.Lx505_58:              cmp              al, 72;                              jne   .Lx505_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx505_43
                        cmp              rax, r9;                             je    .Lx505_43
                        mov              r9, rax;                             jmp   .Lx505_42
.Lx505_43:              cmp              r8, r9;                              je    .Lx505_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx505_44
                        cmp              al, 104;                             je    .Lx505_44
                        cmp              al, 72;                              jne   .Lx505_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx505_44
                                                                              jmp   .Lx505_45
.Lx505_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx505_53
                        cmp              al, 104;                             je    .Lx505_53
                        cmp              al, 72;                              jne   .Lx505_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx505_53
                                                                              jmp   .Lx505_46
.Lx505_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx505_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx505_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx505_51
.Lx505_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx505_47
                        cmp              al, 104;                             je    .Lx505_47
                        cmp              al, 72;                              jne   .Lx505_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx505_47
                                                                              jmp   .Lx505_48
.Lx505_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx505_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx505_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx505_51
.Lx505_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx505_49
                        cmp              dl, 80;                              je    .Lx505_53
                                                                              jmp   .Lx505_52
.Lx505_49:              cmp              dl, 80;                              je    .Lx505_52
                        cmp              cl, 5;                               je    .Lx505_53
                        cmp              dl, 5;                               je    .Lx505_53
                        cmp              cl, 3;                               jne   .Lx505_50
                        cmp              dl, 3;                               jne   .Lx505_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx505_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx505_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx505_51
                                                                              jmp   .Lx505_52
.Lx505_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx505_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx505_53
.Lx505_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx505_54
.Lx505_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx505_54
.Lx505_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx505_54:              mov              qword ptr [rsp + 5008], rax
                        mov              qword ptr [rsp + 5016], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n168_var_ref_α
n167_call_builtin_prolog_β:
                                                                              jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4976], rax
                        mov              qword ptr [rsp + 4984], rdx;         jmp   n169_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx;         jmp   n170_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_prolog_α:
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
.Lx510_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx510_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx510_41
                        cmp              esi, 1;                              jne   .Lx510_55
                        mov              r8, rax;                             jmp   .Lx510_40
.Lx510_55:              cmp              esi, 2;                              jne   .Lx510_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx510_41
                        mov              r8, rax;                             jmp   .Lx510_40
.Lx510_56:              cmp              al, 72;                              jne   .Lx510_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx510_41
                        cmp              rax, r8;                             je    .Lx510_41
                        mov              r8, rax;                             jmp   .Lx510_40
.Lx510_41:              lea              r9, [rsp + 4960]
.Lx510_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx510_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx510_43
                        cmp              esi, 1;                              jne   .Lx510_57
                        mov              r9, rax;                             jmp   .Lx510_42
.Lx510_57:              cmp              esi, 2;                              jne   .Lx510_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx510_43
                        mov              r9, rax;                             jmp   .Lx510_42
.Lx510_58:              cmp              al, 72;                              jne   .Lx510_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx510_43
                        cmp              rax, r9;                             je    .Lx510_43
                        mov              r9, rax;                             jmp   .Lx510_42
.Lx510_43:              cmp              r8, r9;                              je    .Lx510_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx510_44
                        cmp              al, 104;                             je    .Lx510_44
                        cmp              al, 72;                              jne   .Lx510_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx510_44
                                                                              jmp   .Lx510_45
.Lx510_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx510_53
                        cmp              al, 104;                             je    .Lx510_53
                        cmp              al, 72;                              jne   .Lx510_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx510_53
                                                                              jmp   .Lx510_46
.Lx510_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx510_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx510_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx510_51
.Lx510_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx510_47
                        cmp              al, 104;                             je    .Lx510_47
                        cmp              al, 72;                              jne   .Lx510_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx510_47
                                                                              jmp   .Lx510_48
.Lx510_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx510_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx510_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx510_51
.Lx510_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx510_49
                        cmp              dl, 80;                              je    .Lx510_53
                                                                              jmp   .Lx510_52
.Lx510_49:              cmp              dl, 80;                              je    .Lx510_52
                        cmp              cl, 5;                               je    .Lx510_53
                        cmp              dl, 5;                               je    .Lx510_53
                        cmp              cl, 3;                               jne   .Lx510_50
                        cmp              dl, 3;                               jne   .Lx510_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx510_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx510_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx510_51
                                                                              jmp   .Lx510_52
.Lx510_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx510_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx510_53
.Lx510_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx510_54
.Lx510_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx510_54
.Lx510_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx510_54:              mov              qword ptr [rsp + 4928], rax
                        mov              qword ptr [rsp + 4936], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n171_var_ref_α
n170_call_builtin_prolog_β:
                                                                              jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx;         jmp   n172_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      mov              qword ptr [rsp + 4912], 2            # result
                        mov              dword ptr [rsp + 4916], 1
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rsp + 4920], rax;         jmp   n173_lit_string_α
.Lx513_0:               .quad            .Lx513_0_s
.Lx513_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:      mov              qword ptr [rsp + 4688], 2            # result
                        mov              dword ptr [rsp + 4692], 1
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rsp + 4696], rax;         jmp   n174_lit_string_α
.Lx514_0:               .quad            .Lx514_0_s
.Lx514_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              qword ptr [rsp + 4464], 2            # result
                        mov              dword ptr [rsp + 4468], 1
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rsp + 4472], rax;         jmp   n175_var_ref_α
.Lx515_0:               .quad            .Lx515_0_s
.Lx515_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx;         jmp   n176_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4368], rax
                        mov              qword ptr [rsp + 4376], rdx;         jmp   n177_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n178_lit_string_α
n177_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      mov              qword ptr [rsp + 4592], 2            # result
                        mov              dword ptr [rsp + 4596], 1
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rsp + 4600], rax;         jmp   n179_var_ref_α
.Lx521_0:               .quad            .Lx521_0_s
.Lx521_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx;         jmp   n180_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx;         jmp   n181_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n182_call_builtin_prolog_α
n181_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n182_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n183_lit_string_α
n182_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:      mov              qword ptr [rsp + 4816], 2            # result
                        mov              dword ptr [rsp + 4820], 1
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 4824], rax;         jmp   n184_var_ref_α
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4704], rax
                        mov              qword ptr [rsp + 4712], rdx;         jmp   n185_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_integer_α:     mov              qword ptr [rsp + 4720], 3            # result
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rsp + 4728], rax;         jmp   n186_call_builtin_prolog_α
.Lx531_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n186_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n187_call_builtin_prolog_α
n186_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n188_call_builtin_prolog_α
n187_call_builtin_prolog_β:
                                                                              jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_prolog_α:
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
.Lx534_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx534_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx534_41
                        cmp              esi, 1;                              jne   .Lx534_55
                        mov              r8, rax;                             jmp   .Lx534_40
.Lx534_55:              cmp              esi, 2;                              jne   .Lx534_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx534_41
                        mov              r8, rax;                             jmp   .Lx534_40
.Lx534_56:              cmp              al, 72;                              jne   .Lx534_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx534_41
                        cmp              rax, r8;                             je    .Lx534_41
                        mov              r8, rax;                             jmp   .Lx534_40
.Lx534_41:              lea              r9, [rsp + 4320]
.Lx534_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx534_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx534_43
                        cmp              esi, 1;                              jne   .Lx534_57
                        mov              r9, rax;                             jmp   .Lx534_42
.Lx534_57:              cmp              esi, 2;                              jne   .Lx534_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx534_43
                        mov              r9, rax;                             jmp   .Lx534_42
.Lx534_58:              cmp              al, 72;                              jne   .Lx534_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx534_43
                        cmp              rax, r9;                             je    .Lx534_43
                        mov              r9, rax;                             jmp   .Lx534_42
.Lx534_43:              cmp              r8, r9;                              je    .Lx534_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx534_44
                        cmp              al, 104;                             je    .Lx534_44
                        cmp              al, 72;                              jne   .Lx534_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx534_44
                                                                              jmp   .Lx534_45
.Lx534_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx534_53
                        cmp              al, 104;                             je    .Lx534_53
                        cmp              al, 72;                              jne   .Lx534_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx534_53
                                                                              jmp   .Lx534_46
.Lx534_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx534_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx534_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx534_51
.Lx534_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx534_47
                        cmp              al, 104;                             je    .Lx534_47
                        cmp              al, 72;                              jne   .Lx534_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx534_47
                                                                              jmp   .Lx534_48
.Lx534_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx534_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx534_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx534_51
.Lx534_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx534_49
                        cmp              dl, 80;                              je    .Lx534_53
                                                                              jmp   .Lx534_52
.Lx534_49:              cmp              dl, 80;                              je    .Lx534_52
                        cmp              cl, 5;                               je    .Lx534_53
                        cmp              dl, 5;                               je    .Lx534_53
                        cmp              cl, 3;                               jne   .Lx534_50
                        cmp              dl, 3;                               jne   .Lx534_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx534_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx534_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx534_51
                                                                              jmp   .Lx534_52
.Lx534_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx534_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx534_53
.Lx534_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx534_54
.Lx534_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx534_54
.Lx534_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx534_54:              mov              qword ptr [rsp + 4288], rax
                        mov              qword ptr [rsp + 4296], rdx
                        cmp              al, 104;                             je    n199_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n189_cut_α
n188_call_builtin_prolog_β:
                                                                              jmp   n199_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n189_cut_α:                                                                   jmp   n190_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 4240], rax
                        mov              qword ptr [rsp + 4248], rdx;         jmp   n191_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n191_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx;         jmp   n192_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 4272], rax
                        mov              qword ptr [rsp + 4280], rdx;         jmp   n193_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n193_call_proc_staged_α:
                        lea              rsi, [rsp + 4240]
                        lea              rdx, [rsp + 4256]
                        lea              rcx, [rsp + 4272]
                        call             d$2F3_dcα;                           jmp   .Lx543_2
.Lx543_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx543_29
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
.Lx543_29:              mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              al, 104;                             je    n338_call_builtin_prolog_α
                                                                              jmp   n194_var_ref_α
n193_call_proc_staged_β:
                                                                              jmp   n338_call_builtin_prolog_α
.Lx543_0:               .quad            .Lx543_0_s
.Lx543_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx;         jmp   n195_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n196_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx;         jmp   n197_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n197_call_proc_staged_α:
                        lea              rsi, [rsp + 4112]
                        lea              rdx, [rsp + 4128]
                        lea              rcx, [rsp + 4144]
                        call             d$2F3_dcα;                           jmp   .Lx551_2
.Lx551_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx551_29
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
.Lx551_29:              mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        cmp              al, 104;                             je    n193_call_proc_staged_β
                                                                              jmp   n198_move_label_α
n197_call_proc_staged_β:
                                                                              jmp   n193_call_proc_staged_β
.Lx551_0:               .quad            .Lx551_0_s
.Lx551_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n198_move_label_α:      lea              rax, [rip + n197_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n200_var_ref_α
n199_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx;         jmp   n201_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:     mov              qword ptr [rsp + 3968], 3            # result
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n202_lit_string_α
.Lx557_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:      mov              qword ptr [rsp + 3984], 2            # result
                        mov              dword ptr [rsp + 3988], 1
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n203_call_builtin_prolog_α
.Lx558_0:               .quad            .Lx558_0_s
.Lx558_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n203_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n239_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n204_var_ref_α
n203_call_builtin_prolog_β:
                                                                              jmp   n239_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx;         jmp   n205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:      mov              qword ptr [rsp + 3872], 2            # result
                        mov              dword ptr [rsp + 3876], 1
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n206_var_ref_α
.Lx562_0:               .quad            .Lx562_0_s
.Lx562_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx;         jmp   n207_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx;         jmp   n208_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n238_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n209_call_builtin_prolog_α
n208_call_builtin_prolog_β:
                                                                              jmp   n238_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_prolog_α:
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
.Lx568_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx568_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx568_41
                        cmp              esi, 1;                              jne   .Lx568_55
                        mov              r8, rax;                             jmp   .Lx568_40
.Lx568_55:              cmp              esi, 2;                              jne   .Lx568_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx568_41
                        mov              r8, rax;                             jmp   .Lx568_40
.Lx568_56:              cmp              al, 72;                              jne   .Lx568_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx568_41
                        cmp              rax, r8;                             je    .Lx568_41
                        mov              r8, rax;                             jmp   .Lx568_40
.Lx568_41:              lea              r9, [rsp + 3728]
.Lx568_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx568_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx568_43
                        cmp              esi, 1;                              jne   .Lx568_57
                        mov              r9, rax;                             jmp   .Lx568_42
.Lx568_57:              cmp              esi, 2;                              jne   .Lx568_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx568_43
                        mov              r9, rax;                             jmp   .Lx568_42
.Lx568_58:              cmp              al, 72;                              jne   .Lx568_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx568_43
                        cmp              rax, r9;                             je    .Lx568_43
                        mov              r9, rax;                             jmp   .Lx568_42
.Lx568_43:              cmp              r8, r9;                              je    .Lx568_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx568_44
                        cmp              al, 104;                             je    .Lx568_44
                        cmp              al, 72;                              jne   .Lx568_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx568_44
                                                                              jmp   .Lx568_45
.Lx568_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx568_53
                        cmp              al, 104;                             je    .Lx568_53
                        cmp              al, 72;                              jne   .Lx568_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx568_53
                                                                              jmp   .Lx568_46
.Lx568_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx568_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx568_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx568_51
.Lx568_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx568_47
                        cmp              al, 104;                             je    .Lx568_47
                        cmp              al, 72;                              jne   .Lx568_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx568_47
                                                                              jmp   .Lx568_48
.Lx568_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx568_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx568_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx568_51
.Lx568_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx568_49
                        cmp              dl, 80;                              je    .Lx568_53
                                                                              jmp   .Lx568_52
.Lx568_49:              cmp              dl, 80;                              je    .Lx568_52
                        cmp              cl, 5;                               je    .Lx568_53
                        cmp              dl, 5;                               je    .Lx568_53
                        cmp              cl, 3;                               jne   .Lx568_50
                        cmp              dl, 3;                               jne   .Lx568_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx568_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx568_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx568_51
                                                                              jmp   .Lx568_52
.Lx568_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx568_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx568_53
.Lx568_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx568_54
.Lx568_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx568_54
.Lx568_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx568_54:              mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx
                        cmp              al, 104;                             je    n238_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n210_var_ref_α
n209_call_builtin_prolog_β:
                                                                              jmp   n238_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx;         jmp   n211_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx;         jmp   n212_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n212_call_builtin_prolog_α:
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
.Lx573_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx573_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx573_41
                        cmp              esi, 1;                              jne   .Lx573_55
                        mov              r8, rax;                             jmp   .Lx573_40
.Lx573_55:              cmp              esi, 2;                              jne   .Lx573_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx573_41
                        mov              r8, rax;                             jmp   .Lx573_40
.Lx573_56:              cmp              al, 72;                              jne   .Lx573_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx573_41
                        cmp              rax, r8;                             je    .Lx573_41
                        mov              r8, rax;                             jmp   .Lx573_40
.Lx573_41:              lea              r9, [rsp + 3648]
.Lx573_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx573_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx573_43
                        cmp              esi, 1;                              jne   .Lx573_57
                        mov              r9, rax;                             jmp   .Lx573_42
.Lx573_57:              cmp              esi, 2;                              jne   .Lx573_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx573_43
                        mov              r9, rax;                             jmp   .Lx573_42
.Lx573_58:              cmp              al, 72;                              jne   .Lx573_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx573_43
                        cmp              rax, r9;                             je    .Lx573_43
                        mov              r9, rax;                             jmp   .Lx573_42
.Lx573_43:              cmp              r8, r9;                              je    .Lx573_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx573_44
                        cmp              al, 104;                             je    .Lx573_44
                        cmp              al, 72;                              jne   .Lx573_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx573_44
                                                                              jmp   .Lx573_45
.Lx573_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx573_53
                        cmp              al, 104;                             je    .Lx573_53
                        cmp              al, 72;                              jne   .Lx573_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx573_53
                                                                              jmp   .Lx573_46
.Lx573_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx573_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx573_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx573_51
.Lx573_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx573_47
                        cmp              al, 104;                             je    .Lx573_47
                        cmp              al, 72;                              jne   .Lx573_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx573_47
                                                                              jmp   .Lx573_48
.Lx573_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx573_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx573_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx573_51
.Lx573_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx573_49
                        cmp              dl, 80;                              je    .Lx573_53
                                                                              jmp   .Lx573_52
.Lx573_49:              cmp              dl, 80;                              je    .Lx573_52
                        cmp              cl, 5;                               je    .Lx573_53
                        cmp              dl, 5;                               je    .Lx573_53
                        cmp              cl, 3;                               jne   .Lx573_50
                        cmp              dl, 3;                               jne   .Lx573_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx573_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx573_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx573_51
                                                                              jmp   .Lx573_52
.Lx573_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx573_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx573_53
.Lx573_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx573_54
.Lx573_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx573_54
.Lx573_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx573_54:              mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx
                        cmp              al, 104;                             je    n238_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n213_var_ref_α
n212_call_builtin_prolog_β:
                                                                              jmp   n238_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx;         jmp   n214_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:      mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 1
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n215_lit_string_α
.Lx576_0:               .quad            .Lx576_0_s
.Lx576_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      mov              qword ptr [rsp + 3376], 2            # result
                        mov              dword ptr [rsp + 3380], 1
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n216_var_ref_α
.Lx577_0:               .quad            .Lx577_0_s
.Lx577_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx;         jmp   n217_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx;         jmp   n218_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n218_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n219_lit_string_α
n218_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      mov              qword ptr [rsp + 3504], 2            # result
                        mov              dword ptr [rsp + 3508], 1
                        mov              rax, qword ptr [rip + .Lx583_0]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n220_var_ref_α
.Lx583_0:               .quad            .Lx583_0_s
.Lx583_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx;         jmp   n221_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx;         jmp   n222_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n222_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n223_call_builtin_prolog_α
n222_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n223_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n238_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n224_call_builtin_prolog_α
n223_call_builtin_prolog_β:
                                                                              jmp   n238_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n224_call_builtin_prolog_α:
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
.Lx590_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx590_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx590_41
                        cmp              esi, 1;                              jne   .Lx590_55
                        mov              r8, rax;                             jmp   .Lx590_40
.Lx590_55:              cmp              esi, 2;                              jne   .Lx590_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx590_41
                        mov              r8, rax;                             jmp   .Lx590_40
.Lx590_56:              cmp              al, 72;                              jne   .Lx590_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx590_41
                        cmp              rax, r8;                             je    .Lx590_41
                        mov              r8, rax;                             jmp   .Lx590_40
.Lx590_41:              lea              r9, [rsp + 3232]
.Lx590_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx590_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx590_43
                        cmp              esi, 1;                              jne   .Lx590_57
                        mov              r9, rax;                             jmp   .Lx590_42
.Lx590_57:              cmp              esi, 2;                              jne   .Lx590_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx590_43
                        mov              r9, rax;                             jmp   .Lx590_42
.Lx590_58:              cmp              al, 72;                              jne   .Lx590_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx590_43
                        cmp              rax, r9;                             je    .Lx590_43
                        mov              r9, rax;                             jmp   .Lx590_42
.Lx590_43:              cmp              r8, r9;                              je    .Lx590_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx590_44
                        cmp              al, 104;                             je    .Lx590_44
                        cmp              al, 72;                              jne   .Lx590_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx590_44
                                                                              jmp   .Lx590_45
.Lx590_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx590_53
                        cmp              al, 104;                             je    .Lx590_53
                        cmp              al, 72;                              jne   .Lx590_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx590_53
                                                                              jmp   .Lx590_46
.Lx590_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx590_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx590_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx590_51
.Lx590_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx590_47
                        cmp              al, 104;                             je    .Lx590_47
                        cmp              al, 72;                              jne   .Lx590_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx590_47
                                                                              jmp   .Lx590_48
.Lx590_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx590_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx590_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx590_51
.Lx590_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx590_49
                        cmp              dl, 80;                              je    .Lx590_53
                                                                              jmp   .Lx590_52
.Lx590_49:              cmp              dl, 80;                              je    .Lx590_52
                        cmp              cl, 5;                               je    .Lx590_53
                        cmp              dl, 5;                               je    .Lx590_53
                        cmp              cl, 3;                               jne   .Lx590_50
                        cmp              dl, 3;                               jne   .Lx590_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx590_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx590_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx590_51
                                                                              jmp   .Lx590_52
.Lx590_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx590_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx590_53
.Lx590_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx590_54
.Lx590_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx590_54
.Lx590_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx590_54:              mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              al, 104;                             je    n238_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n225_cut_α
n224_call_builtin_prolog_β:
                                                                              jmp   n238_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n225_cut_α:                                                                   jmp   n226_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3184], rax
                        mov              qword ptr [rsp + 3192], rdx;         jmp   n227_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n227_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3176], rax
                        .section         .rodata
.Lrkfn595:              .string          "$tt_integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn595]
                        lea              rsi, [rsp + 3168]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        cmp              al, 104;                             je    n338_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n228_var_ref_α
n227_call_builtin_prolog_β:
                                                                              jmp   n338_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx;         jmp   n229_var_α
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:             mov              rax, qword ptr [rsp + 8128]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 8136]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n230_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:     mov              qword ptr [rsp + 3136], 3            # result
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n231_call_builtin_prolog_α
.Lx600_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n231_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n338_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n232_call_builtin_prolog_α
n231_call_builtin_prolog_β:
                                                                              jmp   n338_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n338_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n233_var_ref_α
n232_call_builtin_prolog_β:
                                                                              jmp   n338_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n234_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n235_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n236_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n236_call_proc_staged_α:
                        lea              rsi, [rsp + 2944]
                        lea              rdx, [rsp + 2960]
                        lea              rcx, [rsp + 2976]
                        call             d$2F3_dcα;                           jmp   .Lx610_2
.Lx610_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx610_29
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
.Lx610_29:              mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n338_call_builtin_prolog_α
                                                                              jmp   n237_move_label_α
n236_call_proc_staged_β:
                                                                              jmp   n338_call_builtin_prolog_α
.Lx610_0:               .quad            .Lx610_0_s
.Lx610_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n237_move_label_α:      lea              rax, [rip + n236_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n239_var_ref_α
n238_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx;         jmp   n240_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_integer_α:     mov              qword ptr [rsp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n241_lit_string_α
.Lx616_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:      mov              qword ptr [rsp + 2816], 2            # result
                        mov              dword ptr [rsp + 2820], 1
                        mov              rax, qword ptr [rip + .Lx617_0]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n242_call_builtin_prolog_α
.Lx617_0:               .quad            .Lx617_0_s
.Lx617_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n263_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n243_var_ref_α
n242_call_builtin_prolog_β:
                                                                              jmp   n263_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n244_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:      mov              qword ptr [rsp + 2704], 2            # result
                        mov              dword ptr [rsp + 2708], 1
                        mov              rax, qword ptr [rip + .Lx621_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n245_var_ref_α
.Lx621_0:               .quad            .Lx621_0_s
.Lx621_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n246_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n262_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n247_call_builtin_prolog_α
n246_call_builtin_prolog_β:
                                                                              jmp   n262_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n247_call_builtin_prolog_α:
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
.Lx625_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx625_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx625_41
                        cmp              esi, 1;                              jne   .Lx625_55
                        mov              r8, rax;                             jmp   .Lx625_40
.Lx625_55:              cmp              esi, 2;                              jne   .Lx625_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx625_41
                        mov              r8, rax;                             jmp   .Lx625_40
.Lx625_56:              cmp              al, 72;                              jne   .Lx625_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx625_41
                        cmp              rax, r8;                             je    .Lx625_41
                        mov              r8, rax;                             jmp   .Lx625_40
.Lx625_41:              lea              r9, [rsp + 2592]
.Lx625_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx625_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx625_43
                        cmp              esi, 1;                              jne   .Lx625_57
                        mov              r9, rax;                             jmp   .Lx625_42
.Lx625_57:              cmp              esi, 2;                              jne   .Lx625_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx625_43
                        mov              r9, rax;                             jmp   .Lx625_42
.Lx625_58:              cmp              al, 72;                              jne   .Lx625_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx625_43
                        cmp              rax, r9;                             je    .Lx625_43
                        mov              r9, rax;                             jmp   .Lx625_42
.Lx625_43:              cmp              r8, r9;                              je    .Lx625_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx625_44
                        cmp              al, 104;                             je    .Lx625_44
                        cmp              al, 72;                              jne   .Lx625_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx625_44
                                                                              jmp   .Lx625_45
.Lx625_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx625_53
                        cmp              al, 104;                             je    .Lx625_53
                        cmp              al, 72;                              jne   .Lx625_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx625_53
                                                                              jmp   .Lx625_46
.Lx625_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx625_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx625_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx625_51
.Lx625_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx625_47
                        cmp              al, 104;                             je    .Lx625_47
                        cmp              al, 72;                              jne   .Lx625_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx625_47
                                                                              jmp   .Lx625_48
.Lx625_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx625_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx625_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx625_51
.Lx625_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx625_49
                        cmp              dl, 80;                              je    .Lx625_53
                                                                              jmp   .Lx625_52
.Lx625_49:              cmp              dl, 80;                              je    .Lx625_52
                        cmp              cl, 5;                               je    .Lx625_53
                        cmp              dl, 5;                               je    .Lx625_53
                        cmp              cl, 3;                               jne   .Lx625_50
                        cmp              dl, 3;                               jne   .Lx625_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx625_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx625_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx625_51
                                                                              jmp   .Lx625_52
.Lx625_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx625_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx625_53
.Lx625_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx625_54
.Lx625_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx625_54
.Lx625_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx625_54:              mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                        cmp              al, 104;                             je    n262_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n248_var_ref_α
n247_call_builtin_prolog_β:
                                                                              jmp   n262_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n249_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx;         jmp   n250_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n250_call_builtin_prolog_α:
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
.Lx630_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx630_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx630_41
                        cmp              esi, 1;                              jne   .Lx630_55
                        mov              r8, rax;                             jmp   .Lx630_40
.Lx630_55:              cmp              esi, 2;                              jne   .Lx630_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx630_41
                        mov              r8, rax;                             jmp   .Lx630_40
.Lx630_56:              cmp              al, 72;                              jne   .Lx630_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx630_41
                        cmp              rax, r8;                             je    .Lx630_41
                        mov              r8, rax;                             jmp   .Lx630_40
.Lx630_41:              lea              r9, [rsp + 2512]
.Lx630_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx630_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx630_43
                        cmp              esi, 1;                              jne   .Lx630_57
                        mov              r9, rax;                             jmp   .Lx630_42
.Lx630_57:              cmp              esi, 2;                              jne   .Lx630_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx630_43
                        mov              r9, rax;                             jmp   .Lx630_42
.Lx630_58:              cmp              al, 72;                              jne   .Lx630_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx630_43
                        cmp              rax, r9;                             je    .Lx630_43
                        mov              r9, rax;                             jmp   .Lx630_42
.Lx630_43:              cmp              r8, r9;                              je    .Lx630_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx630_44
                        cmp              al, 104;                             je    .Lx630_44
                        cmp              al, 72;                              jne   .Lx630_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx630_44
                                                                              jmp   .Lx630_45
.Lx630_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx630_53
                        cmp              al, 104;                             je    .Lx630_53
                        cmp              al, 72;                              jne   .Lx630_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx630_53
                                                                              jmp   .Lx630_46
.Lx630_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx630_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx630_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx630_51
.Lx630_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx630_47
                        cmp              al, 104;                             je    .Lx630_47
                        cmp              al, 72;                              jne   .Lx630_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx630_47
                                                                              jmp   .Lx630_48
.Lx630_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx630_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx630_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx630_51
.Lx630_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx630_49
                        cmp              dl, 80;                              je    .Lx630_53
                                                                              jmp   .Lx630_52
.Lx630_49:              cmp              dl, 80;                              je    .Lx630_52
                        cmp              cl, 5;                               je    .Lx630_53
                        cmp              dl, 5;                               je    .Lx630_53
                        cmp              cl, 3;                               jne   .Lx630_50
                        cmp              dl, 3;                               jne   .Lx630_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx630_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx630_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx630_51
                                                                              jmp   .Lx630_52
.Lx630_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx630_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx630_53
.Lx630_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx630_54
.Lx630_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx630_54
.Lx630_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx630_54:              mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              al, 104;                             je    n262_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n251_var_ref_α
n250_call_builtin_prolog_β:
                                                                              jmp   n262_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx;         jmp   n252_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_string_α:      mov              qword ptr [rsp + 2464], 2            # result
                        mov              dword ptr [rsp + 2468], 1
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n253_var_ref_α
.Lx633_0:               .quad            .Lx633_0_s
.Lx633_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx;         jmp   n254_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n254_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n262_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n255_call_builtin_prolog_α
n254_call_builtin_prolog_β:
                                                                              jmp   n262_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n255_call_builtin_prolog_α:
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
.Lx637_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx637_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx637_41
                        cmp              esi, 1;                              jne   .Lx637_55
                        mov              r8, rax;                             jmp   .Lx637_40
.Lx637_55:              cmp              esi, 2;                              jne   .Lx637_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx637_41
                        mov              r8, rax;                             jmp   .Lx637_40
.Lx637_56:              cmp              al, 72;                              jne   .Lx637_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx637_41
                        cmp              rax, r8;                             je    .Lx637_41
                        mov              r8, rax;                             jmp   .Lx637_40
.Lx637_41:              lea              r9, [rsp + 2352]
.Lx637_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx637_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx637_43
                        cmp              esi, 1;                              jne   .Lx637_57
                        mov              r9, rax;                             jmp   .Lx637_42
.Lx637_57:              cmp              esi, 2;                              jne   .Lx637_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx637_43
                        mov              r9, rax;                             jmp   .Lx637_42
.Lx637_58:              cmp              al, 72;                              jne   .Lx637_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx637_43
                        cmp              rax, r9;                             je    .Lx637_43
                        mov              r9, rax;                             jmp   .Lx637_42
.Lx637_43:              cmp              r8, r9;                              je    .Lx637_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx637_44
                        cmp              al, 104;                             je    .Lx637_44
                        cmp              al, 72;                              jne   .Lx637_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx637_44
                                                                              jmp   .Lx637_45
.Lx637_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx637_53
                        cmp              al, 104;                             je    .Lx637_53
                        cmp              al, 72;                              jne   .Lx637_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx637_53
                                                                              jmp   .Lx637_46
.Lx637_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx637_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx637_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx637_51
.Lx637_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx637_47
                        cmp              al, 104;                             je    .Lx637_47
                        cmp              al, 72;                              jne   .Lx637_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx637_47
                                                                              jmp   .Lx637_48
.Lx637_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx637_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx637_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx637_51
.Lx637_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx637_49
                        cmp              dl, 80;                              je    .Lx637_53
                                                                              jmp   .Lx637_52
.Lx637_49:              cmp              dl, 80;                              je    .Lx637_52
                        cmp              cl, 5;                               je    .Lx637_53
                        cmp              dl, 5;                               je    .Lx637_53
                        cmp              cl, 3;                               jne   .Lx637_50
                        cmp              dl, 3;                               jne   .Lx637_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx637_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx637_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx637_51
                                                                              jmp   .Lx637_52
.Lx637_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx637_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx637_53
.Lx637_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx637_54
.Lx637_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx637_54
.Lx637_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx637_54:              mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              al, 104;                             je    n262_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n256_cut_α
n255_call_builtin_prolog_β:
                                                                              jmp   n262_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n256_cut_α:                                                                   jmp   n257_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n258_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n259_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n260_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n260_call_proc_staged_α:
                        lea              rsi, [rsp + 2272]
                        lea              rdx, [rsp + 2288]
                        lea              rcx, [rsp + 2304]
                        call             d$2F3_dcα;                           jmp   .Lx646_2
.Lx646_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx646_29
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
.Lx646_29:              mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              al, 104;                             je    n338_call_builtin_prolog_α
                                                                              jmp   n261_move_label_α
n260_call_proc_staged_β:
                                                                              jmp   n338_call_builtin_prolog_α
.Lx646_0:               .quad            .Lx646_0_s
.Lx646_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n261_move_label_α:      lea              rax, [rip + n260_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n262_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n263_var_ref_α
n262_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n264_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_integer_α:     mov              qword ptr [rsp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n265_lit_string_α
.Lx652_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:      mov              qword ptr [rsp + 2144], 2            # result
                        mov              dword ptr [rsp + 2148], 3
                        mov              rax, qword ptr [rip + .Lx653_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n266_call_builtin_prolog_α
.Lx653_0:               .quad            .Lx653_0_s
.Lx653_0_s:             .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n266_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n290_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n267_var_ref_α
n266_call_builtin_prolog_β:
                                                                              jmp   n290_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n268_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:      mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 3
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n269_var_ref_α
.Lx657_0:               .quad            .Lx657_0_s
.Lx657_0_s:             .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n270_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n270_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n289_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n271_call_builtin_prolog_α
n270_call_builtin_prolog_β:
                                                                              jmp   n289_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n271_call_builtin_prolog_α:
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
.Lx661_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx661_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx661_41
                        cmp              esi, 1;                              jne   .Lx661_55
                        mov              r8, rax;                             jmp   .Lx661_40
.Lx661_55:              cmp              esi, 2;                              jne   .Lx661_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx661_41
                        mov              r8, rax;                             jmp   .Lx661_40
.Lx661_56:              cmp              al, 72;                              jne   .Lx661_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx661_41
                        cmp              rax, r8;                             je    .Lx661_41
                        mov              r8, rax;                             jmp   .Lx661_40
.Lx661_41:              lea              r9, [rsp + 1920]
.Lx661_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx661_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx661_43
                        cmp              esi, 1;                              jne   .Lx661_57
                        mov              r9, rax;                             jmp   .Lx661_42
.Lx661_57:              cmp              esi, 2;                              jne   .Lx661_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx661_43
                        mov              r9, rax;                             jmp   .Lx661_42
.Lx661_58:              cmp              al, 72;                              jne   .Lx661_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx661_43
                        cmp              rax, r9;                             je    .Lx661_43
                        mov              r9, rax;                             jmp   .Lx661_42
.Lx661_43:              cmp              r8, r9;                              je    .Lx661_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx661_44
                        cmp              al, 104;                             je    .Lx661_44
                        cmp              al, 72;                              jne   .Lx661_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx661_44
                                                                              jmp   .Lx661_45
.Lx661_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx661_53
                        cmp              al, 104;                             je    .Lx661_53
                        cmp              al, 72;                              jne   .Lx661_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx661_53
                                                                              jmp   .Lx661_46
.Lx661_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx661_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx661_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx661_51
.Lx661_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx661_47
                        cmp              al, 104;                             je    .Lx661_47
                        cmp              al, 72;                              jne   .Lx661_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx661_47
                                                                              jmp   .Lx661_48
.Lx661_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx661_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx661_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx661_51
.Lx661_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx661_49
                        cmp              dl, 80;                              je    .Lx661_53
                                                                              jmp   .Lx661_52
.Lx661_49:              cmp              dl, 80;                              je    .Lx661_52
                        cmp              cl, 5;                               je    .Lx661_53
                        cmp              dl, 5;                               je    .Lx661_53
                        cmp              cl, 3;                               jne   .Lx661_50
                        cmp              dl, 3;                               jne   .Lx661_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx661_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx661_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx661_51
                                                                              jmp   .Lx661_52
.Lx661_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx661_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx661_53
.Lx661_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx661_54
.Lx661_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx661_54
.Lx661_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx661_54:              mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    n289_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n272_var_ref_α
n271_call_builtin_prolog_β:
                                                                              jmp   n289_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n273_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx;         jmp   n274_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n274_call_builtin_prolog_α:
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
.Lx666_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx666_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx666_41
                        cmp              esi, 1;                              jne   .Lx666_55
                        mov              r8, rax;                             jmp   .Lx666_40
.Lx666_55:              cmp              esi, 2;                              jne   .Lx666_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx666_41
                        mov              r8, rax;                             jmp   .Lx666_40
.Lx666_56:              cmp              al, 72;                              jne   .Lx666_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx666_41
                        cmp              rax, r8;                             je    .Lx666_41
                        mov              r8, rax;                             jmp   .Lx666_40
.Lx666_41:              lea              r9, [rsp + 1840]
.Lx666_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx666_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx666_43
                        cmp              esi, 1;                              jne   .Lx666_57
                        mov              r9, rax;                             jmp   .Lx666_42
.Lx666_57:              cmp              esi, 2;                              jne   .Lx666_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx666_43
                        mov              r9, rax;                             jmp   .Lx666_42
.Lx666_58:              cmp              al, 72;                              jne   .Lx666_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx666_43
                        cmp              rax, r9;                             je    .Lx666_43
                        mov              r9, rax;                             jmp   .Lx666_42
.Lx666_43:              cmp              r8, r9;                              je    .Lx666_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx666_44
                        cmp              al, 104;                             je    .Lx666_44
                        cmp              al, 72;                              jne   .Lx666_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx666_44
                                                                              jmp   .Lx666_45
.Lx666_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx666_53
                        cmp              al, 104;                             je    .Lx666_53
                        cmp              al, 72;                              jne   .Lx666_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx666_53
                                                                              jmp   .Lx666_46
.Lx666_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx666_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx666_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx666_51
.Lx666_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx666_47
                        cmp              al, 104;                             je    .Lx666_47
                        cmp              al, 72;                              jne   .Lx666_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx666_47
                                                                              jmp   .Lx666_48
.Lx666_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx666_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx666_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx666_51
.Lx666_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx666_49
                        cmp              dl, 80;                              je    .Lx666_53
                                                                              jmp   .Lx666_52
.Lx666_49:              cmp              dl, 80;                              je    .Lx666_52
                        cmp              cl, 5;                               je    .Lx666_53
                        cmp              dl, 5;                               je    .Lx666_53
                        cmp              cl, 3;                               jne   .Lx666_50
                        cmp              dl, 3;                               jne   .Lx666_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx666_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx666_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx666_51
                                                                              jmp   .Lx666_52
.Lx666_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx666_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx666_53
.Lx666_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx666_54
.Lx666_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx666_54
.Lx666_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx666_54:              mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              al, 104;                             je    n289_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n275_var_ref_α
n274_call_builtin_prolog_β:
                                                                              jmp   n289_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n275_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n276_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:      mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 1
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n277_lit_string_α
.Lx669_0:               .quad            .Lx669_0_s
.Lx669_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:      mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 3
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n278_var_ref_α
.Lx670_0:               .quad            .Lx670_0_s
.Lx670_0_s:             .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n278_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n279_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n279_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n280_var_ref_α
n279_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n281_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n281_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n289_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n282_call_builtin_prolog_α
n281_call_builtin_prolog_β:
                                                                              jmp   n289_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n282_call_builtin_prolog_α:
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
.Lx677_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx677_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx677_41
                        cmp              esi, 1;                              jne   .Lx677_55
                        mov              r8, rax;                             jmp   .Lx677_40
.Lx677_55:              cmp              esi, 2;                              jne   .Lx677_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx677_41
                        mov              r8, rax;                             jmp   .Lx677_40
.Lx677_56:              cmp              al, 72;                              jne   .Lx677_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx677_41
                        cmp              rax, r8;                             je    .Lx677_41
                        mov              r8, rax;                             jmp   .Lx677_40
.Lx677_41:              lea              r9, [rsp + 1568]
.Lx677_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx677_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx677_43
                        cmp              esi, 1;                              jne   .Lx677_57
                        mov              r9, rax;                             jmp   .Lx677_42
.Lx677_57:              cmp              esi, 2;                              jne   .Lx677_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx677_43
                        mov              r9, rax;                             jmp   .Lx677_42
.Lx677_58:              cmp              al, 72;                              jne   .Lx677_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx677_43
                        cmp              rax, r9;                             je    .Lx677_43
                        mov              r9, rax;                             jmp   .Lx677_42
.Lx677_43:              cmp              r8, r9;                              je    .Lx677_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx677_44
                        cmp              al, 104;                             je    .Lx677_44
                        cmp              al, 72;                              jne   .Lx677_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx677_44
                                                                              jmp   .Lx677_45
.Lx677_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx677_53
                        cmp              al, 104;                             je    .Lx677_53
                        cmp              al, 72;                              jne   .Lx677_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx677_53
                                                                              jmp   .Lx677_46
.Lx677_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx677_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx677_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx677_51
.Lx677_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx677_47
                        cmp              al, 104;                             je    .Lx677_47
                        cmp              al, 72;                              jne   .Lx677_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx677_47
                                                                              jmp   .Lx677_48
.Lx677_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx677_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx677_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx677_51
.Lx677_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx677_49
                        cmp              dl, 80;                              je    .Lx677_53
                                                                              jmp   .Lx677_52
.Lx677_49:              cmp              dl, 80;                              je    .Lx677_52
                        cmp              cl, 5;                               je    .Lx677_53
                        cmp              dl, 5;                               je    .Lx677_53
                        cmp              cl, 3;                               jne   .Lx677_50
                        cmp              dl, 3;                               jne   .Lx677_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx677_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx677_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx677_51
                                                                              jmp   .Lx677_52
.Lx677_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx677_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx677_53
.Lx677_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx677_54
.Lx677_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx677_54
.Lx677_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx677_54:              mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    n289_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n283_cut_α
n282_call_builtin_prolog_β:
                                                                              jmp   n289_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n283_cut_α:                                                                   jmp   n284_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n284_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n285_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n285_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n286_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n287_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n287_call_proc_staged_α:
                        lea              rsi, [rsp + 1488]
                        lea              rdx, [rsp + 1504]
                        lea              rcx, [rsp + 1520]
                        call             d$2F3_dcα;                           jmp   .Lx686_2
.Lx686_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx686_29
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
.Lx686_29:              mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n338_call_builtin_prolog_α
                                                                              jmp   n288_move_label_α
n287_call_proc_staged_β:
                                                                              jmp   n338_call_builtin_prolog_α
.Lx686_0:               .quad            .Lx686_0_s
.Lx686_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n288_move_label_α:      lea              rax, [rip + n287_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n289_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n290_var_ref_α
n289_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n291_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_integer_α:     mov              qword ptr [rsp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Lx692_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n292_lit_string_α
.Lx692_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:      mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 3
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n293_call_builtin_prolog_α
.Lx693_0:               .quad            .Lx693_0_s
.Lx693_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n293_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n315_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n294_var_ref_α
n293_call_builtin_prolog_β:
                                                                              jmp   n315_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n295_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:      mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 3
                        mov              rax, qword ptr [rip + .Lx697_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n296_var_ref_α
.Lx697_0:               .quad            .Lx697_0_s
.Lx697_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n297_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n297_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n314_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n298_call_builtin_prolog_α
n297_call_builtin_prolog_β:
                                                                              jmp   n314_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n298_call_builtin_prolog_α:
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
.Lx701_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx701_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx701_41
                        cmp              esi, 1;                              jne   .Lx701_55
                        mov              r8, rax;                             jmp   .Lx701_40
.Lx701_55:              cmp              esi, 2;                              jne   .Lx701_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx701_41
                        mov              r8, rax;                             jmp   .Lx701_40
.Lx701_56:              cmp              al, 72;                              jne   .Lx701_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx701_41
                        cmp              rax, r8;                             je    .Lx701_41
                        mov              r8, rax;                             jmp   .Lx701_40
.Lx701_41:              lea              r9, [rsp + 1136]
.Lx701_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx701_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx701_43
                        cmp              esi, 1;                              jne   .Lx701_57
                        mov              r9, rax;                             jmp   .Lx701_42
.Lx701_57:              cmp              esi, 2;                              jne   .Lx701_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx701_43
                        mov              r9, rax;                             jmp   .Lx701_42
.Lx701_58:              cmp              al, 72;                              jne   .Lx701_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx701_43
                        cmp              rax, r9;                             je    .Lx701_43
                        mov              r9, rax;                             jmp   .Lx701_42
.Lx701_43:              cmp              r8, r9;                              je    .Lx701_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx701_44
                        cmp              al, 104;                             je    .Lx701_44
                        cmp              al, 72;                              jne   .Lx701_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx701_44
                                                                              jmp   .Lx701_45
.Lx701_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx701_53
                        cmp              al, 104;                             je    .Lx701_53
                        cmp              al, 72;                              jne   .Lx701_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx701_53
                                                                              jmp   .Lx701_46
.Lx701_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx701_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx701_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx701_51
.Lx701_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx701_47
                        cmp              al, 104;                             je    .Lx701_47
                        cmp              al, 72;                              jne   .Lx701_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx701_47
                                                                              jmp   .Lx701_48
.Lx701_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx701_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx701_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx701_51
.Lx701_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx701_49
                        cmp              dl, 80;                              je    .Lx701_53
                                                                              jmp   .Lx701_52
.Lx701_49:              cmp              dl, 80;                              je    .Lx701_52
                        cmp              cl, 5;                               je    .Lx701_53
                        cmp              dl, 5;                               je    .Lx701_53
                        cmp              cl, 3;                               jne   .Lx701_50
                        cmp              dl, 3;                               jne   .Lx701_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx701_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx701_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx701_51
                                                                              jmp   .Lx701_52
.Lx701_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx701_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx701_53
.Lx701_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx701_54
.Lx701_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx701_54
.Lx701_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx701_54:              mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n314_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n299_var_ref_α
n298_call_builtin_prolog_β:
                                                                              jmp   n314_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n300_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n301_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n301_call_builtin_prolog_α:
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
.Lx706_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx706_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx706_41
                        cmp              esi, 1;                              jne   .Lx706_55
                        mov              r8, rax;                             jmp   .Lx706_40
.Lx706_55:              cmp              esi, 2;                              jne   .Lx706_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx706_41
                        mov              r8, rax;                             jmp   .Lx706_40
.Lx706_56:              cmp              al, 72;                              jne   .Lx706_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx706_41
                        cmp              rax, r8;                             je    .Lx706_41
                        mov              r8, rax;                             jmp   .Lx706_40
.Lx706_41:              lea              r9, [rsp + 1056]
.Lx706_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx706_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx706_43
                        cmp              esi, 1;                              jne   .Lx706_57
                        mov              r9, rax;                             jmp   .Lx706_42
.Lx706_57:              cmp              esi, 2;                              jne   .Lx706_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx706_43
                        mov              r9, rax;                             jmp   .Lx706_42
.Lx706_58:              cmp              al, 72;                              jne   .Lx706_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx706_43
                        cmp              rax, r9;                             je    .Lx706_43
                        mov              r9, rax;                             jmp   .Lx706_42
.Lx706_43:              cmp              r8, r9;                              je    .Lx706_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx706_44
                        cmp              al, 104;                             je    .Lx706_44
                        cmp              al, 72;                              jne   .Lx706_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx706_44
                                                                              jmp   .Lx706_45
.Lx706_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx706_53
                        cmp              al, 104;                             je    .Lx706_53
                        cmp              al, 72;                              jne   .Lx706_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx706_53
                                                                              jmp   .Lx706_46
.Lx706_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx706_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx706_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx706_51
.Lx706_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx706_47
                        cmp              al, 104;                             je    .Lx706_47
                        cmp              al, 72;                              jne   .Lx706_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx706_47
                                                                              jmp   .Lx706_48
.Lx706_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx706_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx706_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx706_51
.Lx706_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx706_49
                        cmp              dl, 80;                              je    .Lx706_53
                                                                              jmp   .Lx706_52
.Lx706_49:              cmp              dl, 80;                              je    .Lx706_52
                        cmp              cl, 5;                               je    .Lx706_53
                        cmp              dl, 5;                               je    .Lx706_53
                        cmp              cl, 3;                               jne   .Lx706_50
                        cmp              dl, 3;                               jne   .Lx706_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx706_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx706_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx706_51
                                                                              jmp   .Lx706_52
.Lx706_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx706_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx706_53
.Lx706_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx706_54
.Lx706_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx706_54
.Lx706_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx706_54:              mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n314_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n302_var_ref_α
n301_call_builtin_prolog_β:
                                                                              jmp   n314_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n303_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:      mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx709_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n304_var_ref_α
.Lx709_0:               .quad            .Lx709_0_s
.Lx709_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n305_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n306_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n306_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n314_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n307_call_builtin_prolog_α
n306_call_builtin_prolog_β:
                                                                              jmp   n314_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n307_call_builtin_prolog_α:
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
.Lx715_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx715_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx715_41
                        cmp              esi, 1;                              jne   .Lx715_55
                        mov              r8, rax;                             jmp   .Lx715_40
.Lx715_55:              cmp              esi, 2;                              jne   .Lx715_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx715_41
                        mov              r8, rax;                             jmp   .Lx715_40
.Lx715_56:              cmp              al, 72;                              jne   .Lx715_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx715_41
                        cmp              rax, r8;                             je    .Lx715_41
                        mov              r8, rax;                             jmp   .Lx715_40
.Lx715_41:              lea              r9, [rsp + 864]
.Lx715_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx715_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx715_43
                        cmp              esi, 1;                              jne   .Lx715_57
                        mov              r9, rax;                             jmp   .Lx715_42
.Lx715_57:              cmp              esi, 2;                              jne   .Lx715_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx715_43
                        mov              r9, rax;                             jmp   .Lx715_42
.Lx715_58:              cmp              al, 72;                              jne   .Lx715_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx715_43
                        cmp              rax, r9;                             je    .Lx715_43
                        mov              r9, rax;                             jmp   .Lx715_42
.Lx715_43:              cmp              r8, r9;                              je    .Lx715_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx715_44
                        cmp              al, 104;                             je    .Lx715_44
                        cmp              al, 72;                              jne   .Lx715_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx715_44
                                                                              jmp   .Lx715_45
.Lx715_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx715_53
                        cmp              al, 104;                             je    .Lx715_53
                        cmp              al, 72;                              jne   .Lx715_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx715_53
                                                                              jmp   .Lx715_46
.Lx715_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx715_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx715_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx715_51
.Lx715_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx715_47
                        cmp              al, 104;                             je    .Lx715_47
                        cmp              al, 72;                              jne   .Lx715_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx715_47
                                                                              jmp   .Lx715_48
.Lx715_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx715_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx715_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx715_51
.Lx715_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx715_49
                        cmp              dl, 80;                              je    .Lx715_53
                                                                              jmp   .Lx715_52
.Lx715_49:              cmp              dl, 80;                              je    .Lx715_52
                        cmp              cl, 5;                               je    .Lx715_53
                        cmp              dl, 5;                               je    .Lx715_53
                        cmp              cl, 3;                               jne   .Lx715_50
                        cmp              dl, 3;                               jne   .Lx715_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx715_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx715_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx715_51
                                                                              jmp   .Lx715_52
.Lx715_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx715_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx715_53
.Lx715_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx715_54
.Lx715_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx715_54
.Lx715_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx715_54:              mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n314_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n308_cut_α
n307_call_builtin_prolog_β:
                                                                              jmp   n314_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n308_cut_α:                                                                   jmp   n309_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n310_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n311_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n312_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n312_call_proc_staged_α:
                        lea              rsi, [rsp + 784]
                        lea              rdx, [rsp + 800]
                        lea              rcx, [rsp + 816]
                        call             d$2F3_dcα;                           jmp   .Lx724_2
.Lx724_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx724_29
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
.Lx724_29:              mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n338_call_builtin_prolog_α
                                                                              jmp   n313_move_label_α
n312_call_proc_staged_β:
                                                                              jmp   n338_call_builtin_prolog_α
.Lx724_0:               .quad            .Lx724_0_s
.Lx724_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n313_move_label_α:      lea              rax, [rip + n312_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n314_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n315_var_ref_α
n314_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n315_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n316_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8160]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n317_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n317_call_builtin_prolog_α:
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
.Lx732_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx732_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx732_41
                        cmp              esi, 1;                              jne   .Lx732_55
                        mov              r8, rax;                             jmp   .Lx732_40
.Lx732_55:              cmp              esi, 2;                              jne   .Lx732_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx732_41
                        mov              r8, rax;                             jmp   .Lx732_40
.Lx732_56:              cmp              al, 72;                              jne   .Lx732_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx732_41
                        cmp              rax, r8;                             je    .Lx732_41
                        mov              r8, rax;                             jmp   .Lx732_40
.Lx732_41:              lea              r9, [rsp + 624]
.Lx732_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx732_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx732_43
                        cmp              esi, 1;                              jne   .Lx732_57
                        mov              r9, rax;                             jmp   .Lx732_42
.Lx732_57:              cmp              esi, 2;                              jne   .Lx732_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx732_43
                        mov              r9, rax;                             jmp   .Lx732_42
.Lx732_58:              cmp              al, 72;                              jne   .Lx732_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx732_43
                        cmp              rax, r9;                             je    .Lx732_43
                        mov              r9, rax;                             jmp   .Lx732_42
.Lx732_43:              cmp              r8, r9;                              je    .Lx732_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx732_44
                        cmp              al, 104;                             je    .Lx732_44
                        cmp              al, 72;                              jne   .Lx732_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx732_44
                                                                              jmp   .Lx732_45
.Lx732_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx732_53
                        cmp              al, 104;                             je    .Lx732_53
                        cmp              al, 72;                              jne   .Lx732_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx732_53
                                                                              jmp   .Lx732_46
.Lx732_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx732_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx732_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx732_51
.Lx732_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx732_47
                        cmp              al, 104;                             je    .Lx732_47
                        cmp              al, 72;                              jne   .Lx732_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx732_47
                                                                              jmp   .Lx732_48
.Lx732_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx732_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx732_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx732_51
.Lx732_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx732_49
                        cmp              dl, 80;                              je    .Lx732_53
                                                                              jmp   .Lx732_52
.Lx732_49:              cmp              dl, 80;                              je    .Lx732_52
                        cmp              cl, 5;                               je    .Lx732_53
                        cmp              dl, 5;                               je    .Lx732_53
                        cmp              cl, 3;                               jne   .Lx732_50
                        cmp              dl, 3;                               jne   .Lx732_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx732_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx732_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx732_51
                                                                              jmp   .Lx732_52
.Lx732_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx732_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx732_53
.Lx732_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx732_54
.Lx732_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx732_54
.Lx732_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx732_54:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n318_var_ref_α
n317_call_builtin_prolog_β:
                                                                              jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n319_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8160]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n320_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n320_call_builtin_prolog_α:
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
.Lx737_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx737_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx737_41
                        cmp              esi, 1;                              jne   .Lx737_55
                        mov              r8, rax;                             jmp   .Lx737_40
.Lx737_55:              cmp              esi, 2;                              jne   .Lx737_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx737_41
                        mov              r8, rax;                             jmp   .Lx737_40
.Lx737_56:              cmp              al, 72;                              jne   .Lx737_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx737_41
                        cmp              rax, r8;                             je    .Lx737_41
                        mov              r8, rax;                             jmp   .Lx737_40
.Lx737_41:              lea              r9, [rsp + 544]
.Lx737_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx737_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx737_43
                        cmp              esi, 1;                              jne   .Lx737_57
                        mov              r9, rax;                             jmp   .Lx737_42
.Lx737_57:              cmp              esi, 2;                              jne   .Lx737_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx737_43
                        mov              r9, rax;                             jmp   .Lx737_42
.Lx737_58:              cmp              al, 72;                              jne   .Lx737_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx737_43
                        cmp              rax, r9;                             je    .Lx737_43
                        mov              r9, rax;                             jmp   .Lx737_42
.Lx737_43:              cmp              r8, r9;                              je    .Lx737_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx737_44
                        cmp              al, 104;                             je    .Lx737_44
                        cmp              al, 72;                              jne   .Lx737_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx737_44
                                                                              jmp   .Lx737_45
.Lx737_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx737_53
                        cmp              al, 104;                             je    .Lx737_53
                        cmp              al, 72;                              jne   .Lx737_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx737_53
                                                                              jmp   .Lx737_46
.Lx737_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx737_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx737_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx737_51
.Lx737_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx737_47
                        cmp              al, 104;                             je    .Lx737_47
                        cmp              al, 72;                              jne   .Lx737_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx737_47
                                                                              jmp   .Lx737_48
.Lx737_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx737_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx737_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx737_51
.Lx737_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx737_49
                        cmp              dl, 80;                              je    .Lx737_53
                                                                              jmp   .Lx737_52
.Lx737_49:              cmp              dl, 80;                              je    .Lx737_52
                        cmp              cl, 5;                               je    .Lx737_53
                        cmp              dl, 5;                               je    .Lx737_53
                        cmp              cl, 3;                               jne   .Lx737_50
                        cmp              dl, 3;                               jne   .Lx737_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx737_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx737_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx737_51
                                                                              jmp   .Lx737_52
.Lx737_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx737_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx737_53
.Lx737_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx737_54
.Lx737_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx737_54
.Lx737_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx737_54:              mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n321_var_ref_α
n320_call_builtin_prolog_β:
                                                                              jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n322_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_integer_α:     mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx740_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n323_call_builtin_prolog_α
.Lx740_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n323_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n326_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n324_cut_α
n323_call_builtin_prolog_β:
                                                                              jmp   n326_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n324_cut_α:                                                                   jmp   n325_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n325_move_label_α:      lea              rax, [rip + n326_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n326_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n327_var_ref_α
n326_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n328_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n329_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n329_call_builtin_prolog_α:
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
.Lx750_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx750_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx750_41
                        cmp              esi, 1;                              jne   .Lx750_55
                        mov              r8, rax;                             jmp   .Lx750_40
.Lx750_55:              cmp              esi, 2;                              jne   .Lx750_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx750_41
                        mov              r8, rax;                             jmp   .Lx750_40
.Lx750_56:              cmp              al, 72;                              jne   .Lx750_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx750_41
                        cmp              rax, r8;                             je    .Lx750_41
                        mov              r8, rax;                             jmp   .Lx750_40
.Lx750_41:              lea              r9, [rsp + 352]
.Lx750_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx750_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx750_43
                        cmp              esi, 1;                              jne   .Lx750_57
                        mov              r9, rax;                             jmp   .Lx750_42
.Lx750_57:              cmp              esi, 2;                              jne   .Lx750_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx750_43
                        mov              r9, rax;                             jmp   .Lx750_42
.Lx750_58:              cmp              al, 72;                              jne   .Lx750_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx750_43
                        cmp              rax, r9;                             je    .Lx750_43
                        mov              r9, rax;                             jmp   .Lx750_42
.Lx750_43:              cmp              r8, r9;                              je    .Lx750_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx750_44
                        cmp              al, 104;                             je    .Lx750_44
                        cmp              al, 72;                              jne   .Lx750_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx750_44
                                                                              jmp   .Lx750_45
.Lx750_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx750_53
                        cmp              al, 104;                             je    .Lx750_53
                        cmp              al, 72;                              jne   .Lx750_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx750_53
                                                                              jmp   .Lx750_46
.Lx750_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx750_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx750_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx750_51
.Lx750_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx750_47
                        cmp              al, 104;                             je    .Lx750_47
                        cmp              al, 72;                              jne   .Lx750_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx750_47
                                                                              jmp   .Lx750_48
.Lx750_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx750_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx750_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx750_51
.Lx750_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx750_49
                        cmp              dl, 80;                              je    .Lx750_53
                                                                              jmp   .Lx750_52
.Lx750_49:              cmp              dl, 80;                              je    .Lx750_52
                        cmp              cl, 5;                               je    .Lx750_53
                        cmp              dl, 5;                               je    .Lx750_53
                        cmp              cl, 3;                               jne   .Lx750_50
                        cmp              dl, 3;                               jne   .Lx750_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx750_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx750_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx750_51
                                                                              jmp   .Lx750_52
.Lx750_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx750_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx750_53
.Lx750_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx750_54
.Lx750_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx750_54
.Lx750_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx750_54:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n338_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n330_var_ref_α
n329_call_builtin_prolog_β:
                                                                              jmp   n338_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n331_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n332_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n332_call_builtin_prolog_α:
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
.Lx755_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx755_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx755_41
                        cmp              esi, 1;                              jne   .Lx755_55
                        mov              r8, rax;                             jmp   .Lx755_40
.Lx755_55:              cmp              esi, 2;                              jne   .Lx755_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx755_41
                        mov              r8, rax;                             jmp   .Lx755_40
.Lx755_56:              cmp              al, 72;                              jne   .Lx755_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx755_41
                        cmp              rax, r8;                             je    .Lx755_41
                        mov              r8, rax;                             jmp   .Lx755_40
.Lx755_41:              lea              r9, [rsp + 272]
.Lx755_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx755_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx755_43
                        cmp              esi, 1;                              jne   .Lx755_57
                        mov              r9, rax;                             jmp   .Lx755_42
.Lx755_57:              cmp              esi, 2;                              jne   .Lx755_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx755_43
                        mov              r9, rax;                             jmp   .Lx755_42
.Lx755_58:              cmp              al, 72;                              jne   .Lx755_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx755_43
                        cmp              rax, r9;                             je    .Lx755_43
                        mov              r9, rax;                             jmp   .Lx755_42
.Lx755_43:              cmp              r8, r9;                              je    .Lx755_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx755_44
                        cmp              al, 104;                             je    .Lx755_44
                        cmp              al, 72;                              jne   .Lx755_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx755_44
                                                                              jmp   .Lx755_45
.Lx755_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx755_53
                        cmp              al, 104;                             je    .Lx755_53
                        cmp              al, 72;                              jne   .Lx755_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx755_53
                                                                              jmp   .Lx755_46
.Lx755_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx755_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx755_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx755_51
.Lx755_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx755_47
                        cmp              al, 104;                             je    .Lx755_47
                        cmp              al, 72;                              jne   .Lx755_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx755_47
                                                                              jmp   .Lx755_48
.Lx755_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx755_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx755_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx755_51
.Lx755_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx755_49
                        cmp              dl, 80;                              je    .Lx755_53
                                                                              jmp   .Lx755_52
.Lx755_49:              cmp              dl, 80;                              je    .Lx755_52
                        cmp              cl, 5;                               je    .Lx755_53
                        cmp              dl, 5;                               je    .Lx755_53
                        cmp              cl, 3;                               jne   .Lx755_50
                        cmp              dl, 3;                               jne   .Lx755_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx755_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx755_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx755_51
                                                                              jmp   .Lx755_52
.Lx755_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx755_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx755_53
.Lx755_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx755_54
.Lx755_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx755_54
.Lx755_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx755_54:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n338_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n333_var_ref_α
n332_call_builtin_prolog_β:
                                                                              jmp   n338_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n334_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_integer_α:     mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx758_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n335_call_builtin_prolog_α
.Lx758_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n335_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n338_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n336_move_label_α
n335_call_builtin_prolog_β:
                                                                              jmp   n338_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n336_move_label_α:      lea              rax, [rip + n338_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n337_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    d$2F3_ω
                                                                              jmp   rax
n337_disjunction_β:                                                           jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n338_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   d$2F3_ω
n338_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_β:
                                                                              jmp   n337_disjunction_α
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
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx765_2]
                        lea              rdx, [rip + .Lx765_3];               jmp   FN__d$2F3
.Lx765_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx765_3:               pop              r11
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
                        lea              rax, [rip + n768_suspend_β]
                        mov              qword ptr [rsp + 112], rax
#-----------------------------------------------------------------------------------------------------------------------
n766_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx770_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx770_101
.Lx770_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx770_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx770_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx770_101
.Lx770_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx770_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    top$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n767_call_proc_staged_α
n766_call_builtin_prolog_β:
                                                                              jmp   top$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n767_call_proc_staged_α:
                        call             log10$2F0_dcα;                       jmp   .Lx772_2
.Lx772_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx772_29
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
.Lx772_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n769_call_builtin_prolog_α
                                                                              jmp   n768_suspend_α
n767_call_proc_staged_β:
                                                                              jmp   n769_call_builtin_prolog_α
.Lx772_0:               .quad            .Lx772_0_s
.Lx772_0_s:             .string          "log10/0"
#-----------------------------------------------------------------------------------------------------------------------
n768_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx774_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 112];          jmp   rax
.Lx774_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n768_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n768_suspend_β]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   top$2F0_γ
n768_suspend_β:                                                               jmp   n767_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n769_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    top$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   top$2F0_ω
n769_call_builtin_prolog_β:
                                                                              jmp   top$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_β:
                                                                              jmp   n768_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx775_50
                        mov              qword ptr [rsp + 112], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 112];          jmp   rax
.Lx775_50:              mov              rdi, rax
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
n776_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx787_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx787_101
.Lx787_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx787_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx787_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx787_101
.Lx787_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx787_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n777_call_proc_staged_α
n776_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n777_call_proc_staged_α:
                        mov              qword ptr [rsp + 256], 0
                        lea              rax, [rip + .Lx789_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx789_1
                        lea              rcx, [rip + .Lx789_3]
                        lea              rdx, [rip + .Lx789_4];               jmp   rax
.Lx789_3:               mov              qword ptr [rsp + 264], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lx789_5
                        mov              qword ptr [rsp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx789_2
.Lx789_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx789_2
.Lx789_4:               mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lx789_6
                        mov              qword ptr [rsp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx789_2
.Lx789_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx789_2
.Lx789_1:               call             rt_faildescr@PLT
.Lx789_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx789_29
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
.Lx789_29:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n780_lit_string_α
                                                                              jmp   n778_lit_string_α
n777_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 256], 0
                        lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n780_lit_string_α
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
                        test             rax, rax;                            je    n780_lit_string_α
                        lea              r11, [rip + .Lx789_7]
                        push             r11
                        lea              rcx, [rip + .Lx789_3]
                        lea              rdx, [rip + .Lx789_4];               jmp   rax
.Lx789_7:               add              rsp, 8
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n780_lit_string_α
                                                                              jmp   n778_lit_string_α
.Lx789_0:               .quad            .Lx789_0_s
.Lx789_0_s:             .string          "top/0"
#-----------------------------------------------------------------------------------------------------------------------
n778_lit_string_α:      mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 2
                        mov              rax, qword ptr [rip + .Lx790_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n779_call_builtin_prolog_α
.Lx790_0:               .quad            .Lx790_0_s
.Lx790_0_s:             .string          "ok"
#-----------------------------------------------------------------------------------------------------------------------
n779_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn792:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn792]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n786_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n782_lit_string_α
n779_call_builtin_prolog_β:
                                                                              jmp   n786_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n780_lit_string_α:      mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 6
                        mov              rax, qword ptr [rip + .Lx793_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n781_call_builtin_prolog_α
.Lx793_0:               .quad            .Lx793_0_s
.Lx793_0_s:             .string          "failed"
#-----------------------------------------------------------------------------------------------------------------------
n781_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn795:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn795]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n786_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n782_lit_string_α
n781_call_builtin_prolog_β:
                                                                              jmp   n786_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n782_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx796_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n783_call_builtin_prolog_α
.Lx796_0:               .quad            .Lx796_0_s
.Lx796_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n783_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn798:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn798]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n786_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n784_move_label_α
n783_call_builtin_prolog_β:
                                                                              jmp   n786_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n784_move_label_α:      lea              rax, [rip + n786_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n785_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n785_disjunction_β:                                                           jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n786_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_ω
n786_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n785_disjunction_α
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
.Lstartup_pname0:       .string          "log10/0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__log10$2F0
                        .quad            log10$2F0_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1040
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
