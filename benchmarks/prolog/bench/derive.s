                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__divide10$2F0:
                        sub              rsp, 1296
                        mov              qword ptr [rsp + 1272], rcx
                        mov              qword ptr [rsp + 1280], rdx
                        mov              qword ptr [rsp + 1288], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1264
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
divide10$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx35_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx35_101
.Lx35_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx35_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx35_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx35_101
.Lx35_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx35_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                                                                              jmp   divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n2_lit_string_α
.Lx36_0:                .quad            .Lx36_0_s
.Lx36_0_s:              .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 1
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n3_lit_string_α
.Lx37_0:                .quad            .Lx37_0_s
.Lx37_0_s:              .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 1
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n4_lit_string_α
.Lx38_0:                .quad            .Lx38_0_s
.Lx38_0_s:              .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 1
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n5_lit_string_α
.Lx39_0:                .quad            .Lx39_0_s
.Lx39_0_s:              .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 1
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n6_lit_string_α
.Lx40_0:                .quad            .Lx40_0_s
.Lx40_0_s:              .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 1
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n7_lit_string_α
.Lx41_0:                .quad            .Lx41_0_s
.Lx41_0_s:              .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 1
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n8_lit_string_α
.Lx42_0:                .quad            .Lx42_0_s
.Lx42_0_s:              .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 1
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n9_lit_string_α
.Lx43_0:                .quad            .Lx43_0_s
.Lx43_0_s:              .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n10_lit_string_α
.Lx44_0:                .quad            .Lx44_0_s
.Lx44_0_s:              .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 1
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n11_lit_string_α
.Lx45_0:                .quad            .Lx45_0_s
.Lx45_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n12_call_builtin_prolog_α
.Lx46_0:                .quad            .Lx46_0_s
.Lx46_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_lit_string_α
n12_call_builtin_prolog_β:
                                                                              jmp   divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n14_call_builtin_prolog_α
.Lx48_0:                .quad            .Lx48_0_s
.Lx48_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_lit_string_α
n14_call_builtin_prolog_β:
                                                                              jmp   divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n16_call_builtin_prolog_α
.Lx50_0:                .quad            .Lx50_0_s
.Lx50_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_lit_string_α
n16_call_builtin_prolog_β:
                                                                              jmp   divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n18_call_builtin_prolog_α
.Lx52_0:                .quad            .Lx52_0_s
.Lx52_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_lit_string_α
n18_call_builtin_prolog_β:
                                                                              jmp   divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 1
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n20_call_builtin_prolog_α
.Lx54_0:                .quad            .Lx54_0_s
.Lx54_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 680], rax
                        lea              rdi, [rsp + 672]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_lit_string_α
n20_call_builtin_prolog_β:
                                                                              jmp   divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n22_call_builtin_prolog_α
.Lx56_0:                .quad            .Lx56_0_s
.Lx56_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 792], rax
                        lea              rdi, [rsp + 784]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n23_lit_string_α
n22_call_builtin_prolog_β:
                                                                              jmp   divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 1
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n24_call_builtin_prolog_α
.Lx58_0:                .quad            .Lx58_0_s
.Lx58_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 776]
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
                        cmp              al, 104;                             je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n25_lit_string_α
n24_call_builtin_prolog_β:
                                                                              jmp   divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n26_call_builtin_prolog_α
.Lx60_0:                .quad            .Lx60_0_s
.Lx60_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1016], rax
                        lea              rdi, [rsp + 1008]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_lit_string_α
n26_call_builtin_prolog_β:
                                                                              jmp   divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 1
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n28_call_builtin_prolog_α
.Lx62_0:                .quad            .Lx62_0_s
.Lx62_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1128], rax
                        lea              rdi, [rsp + 1120]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n34_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n29_lit_string_α
n28_call_builtin_prolog_β:
                                                                              jmp   n34_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 1
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n30_var_ref_α
.Lx64_0:                .quad            .Lx64_0_s
.Lx64_0_s:              .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n31_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_proc_staged_α: lea              rsi, [rsp + 1104]
                        lea              rdx, [rsp + 1200]
                        lea              rcx, [rsp + 1216]
                        call             d$2F3_dcα;                           jmp   .Lx68_2
.Lx68_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx68_29
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
.Lx68_29:               mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n34_call_builtin_prolog_α
                                                                              jmp   n32_move_label_α
n31_call_proc_staged_β:                                                       jmp   n34_call_builtin_prolog_α
.Lx68_0:                .quad            .Lx68_0_s
.Lx68_0_s:              .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n32_move_label_α:       lea              rax, [rip + n31_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   divide10$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n33_disjunction_α:      mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    divide10$2F0_ω
                                                                              jmp   rax
n33_disjunction_β:                                                            jmp   divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    divide10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   divide10$2F0_ω
n34_call_builtin_prolog_β:
                                                                              jmp   divide10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
divide10$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
divide10$2F0_β:
                                                                              jmp   n33_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
divide10$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1272]
                        add              rsp, 1296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
divide10$2F0_ω:
                        mov              rcx, qword ptr [rsp + 1280]
                        add              rsp, 1296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
divide10$2F0_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx74_2]
                        lea              rdx, [rip + .Lx74_3];                jmp   FN__divide10$2F0
.Lx74_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx74_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
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
n75_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx103_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx103_101
.Lx103_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx103_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx103_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx103_101
.Lx103_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx103_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    log10$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n76_lit_string_α
n75_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 3
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n77_lit_string_α
.Lx104_0:               .quad            .Lx104_0_s
.Lx104_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 3
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n78_lit_string_α
.Lx105_0:               .quad            .Lx105_0_s
.Lx105_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 3
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n79_lit_string_α
.Lx106_0:               .quad            .Lx106_0_s
.Lx106_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 3
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n80_lit_string_α
.Lx107_0:               .quad            .Lx107_0_s
.Lx107_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 3
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n81_lit_string_α
.Lx108_0:               .quad            .Lx108_0_s
.Lx108_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 3
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n82_lit_string_α
.Lx109_0:               .quad            .Lx109_0_s
.Lx109_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 3
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n83_lit_string_α
.Lx110_0:               .quad            .Lx110_0_s
.Lx110_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 3
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n84_lit_string_α
.Lx111_0:               .quad            .Lx111_0_s
.Lx111_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 3
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n85_lit_string_α
.Lx112_0:               .quad            .Lx112_0_s
.Lx112_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 3
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n86_lit_string_α
.Lx113_0:               .quad            .Lx113_0_s
.Lx113_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 1
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n87_call_builtin_prolog_α
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n88_call_builtin_prolog_α
n87_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n89_call_builtin_prolog_α
n88_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n90_call_builtin_prolog_α
n89_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n91_call_builtin_prolog_α
n90_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n92_call_builtin_prolog_α
n91_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n93_call_builtin_prolog_α
n92_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n94_call_builtin_prolog_α
n93_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n95_call_builtin_prolog_α
n94_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n96_call_builtin_prolog_α
n95_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n102_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n97_lit_string_α
n96_call_builtin_prolog_β:
                                                                              jmp   n102_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n98_var_ref_α
.Lx125_0:               .quad            .Lx125_0_s
.Lx125_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1024]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n99_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_proc_staged_α: lea              rsi, [rsp + 912]
                        lea              rdx, [rsp + 992]
                        lea              rcx, [rsp + 1008]
                        call             d$2F3_dcα;                           jmp   .Lx129_2
.Lx129_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx129_29
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
.Lx129_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n102_call_builtin_prolog_α
                                                                              jmp   n100_move_label_α
n99_call_proc_staged_β:                                                       jmp   n102_call_builtin_prolog_α
.Lx129_0:               .quad            .Lx129_0_s
.Lx129_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n100_move_label_α:      lea              rax, [rip + n99_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   log10$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n101_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    log10$2F0_ω
                                                                              jmp   rax
n101_disjunction_β:                                                           jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_prolog_α:
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
n102_call_builtin_prolog_β:
                                                                              jmp   log10$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
log10$2F0_β:
                                                                              jmp   n101_disjunction_α
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
                        lea              rcx, [rip + .Lx135_2]
                        lea              rdx, [rip + .Lx135_3];               jmp   FN__log10$2F0
.Lx135_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx135_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
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
n136_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx165_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx165_101
.Lx165_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx165_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx165_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx165_101
.Lx165_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx165_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    ops8$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n137_lit_string_α
n136_call_builtin_prolog_β:
                                                                              jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n138_lit_string_α
.Lx166_0:               .quad            .Lx166_0_s
.Lx166_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n139_lit_string_α
.Lx167_0:               .quad            .Lx167_0_s
.Lx167_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:      mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 1
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n140_lit_integer_α
.Lx168_0:               .quad            .Lx168_0_s
.Lx168_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:     mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n141_call_builtin_prolog_α
.Lx169_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    ops8$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n142_lit_string_α
n141_call_builtin_prolog_β:
                                                                              jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:      mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n143_lit_string_α
.Lx171_0:               .quad            .Lx171_0_s
.Lx171_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:      mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n144_lit_string_α
.Lx172_0:               .quad            .Lx172_0_s
.Lx172_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:      mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n145_lit_string_α
.Lx173_0:               .quad            .Lx173_0_s
.Lx173_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:      mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n146_lit_integer_α
.Lx174_0:               .quad            .Lx174_0_s
.Lx174_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:     mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n147_call_builtin_prolog_α
.Lx175_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    ops8$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n148_lit_integer_α
n147_call_builtin_prolog_β:
                                                                              jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n149_call_builtin_prolog_α
.Lx177_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    ops8$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n150_lit_string_α
n149_call_builtin_prolog_β:
                                                                              jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:      mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 1
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n151_lit_string_α
.Lx179_0:               .quad            .Lx179_0_s
.Lx179_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:      mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 1
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n152_lit_string_α
.Lx180_0:               .quad            .Lx180_0_s
.Lx180_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n153_lit_integer_α
.Lx181_0:               .quad            .Lx181_0_s
.Lx181_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n154_call_builtin_prolog_α
.Lx182_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n154_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    ops8$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n155_lit_integer_α
n154_call_builtin_prolog_β:
                                                                              jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:     mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n156_call_builtin_prolog_α
.Lx184_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n156_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    ops8$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n157_call_builtin_prolog_α
n156_call_builtin_prolog_β:
                                                                              jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n157_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    ops8$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n158_call_builtin_prolog_α
n157_call_builtin_prolog_β:
                                                                              jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n164_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n159_lit_string_α
n158_call_builtin_prolog_β:
                                                                              jmp   n164_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:      mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n160_var_ref_α
.Lx188_0:               .quad            .Lx188_0_s
.Lx188_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1008]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n161_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n161_call_proc_staged_α:
                        lea              rsi, [rsp + 880]
                        lea              rdx, [rsp + 976]
                        lea              rcx, [rsp + 992]
                        call             d$2F3_dcα;                           jmp   .Lx192_2
.Lx192_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx192_29
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
.Lx192_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n164_call_builtin_prolog_α
                                                                              jmp   n162_move_label_α
n161_call_proc_staged_β:
                                                                              jmp   n164_call_builtin_prolog_α
.Lx192_0:               .quad            .Lx192_0_s
.Lx192_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n162_move_label_α:      lea              rax, [rip + n161_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   ops8$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n163_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    ops8$2F0_ω
                                                                              jmp   rax
n163_disjunction_β:                                                           jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    ops8$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   ops8$2F0_ω
n164_call_builtin_prolog_β:
                                                                              jmp   ops8$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
ops8$2F0_β:
                                                                              jmp   n163_disjunction_α
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
                        lea              rcx, [rip + .Lx198_2]
                        lea              rdx, [rip + .Lx198_3];               jmp   FN__ops8$2F0
.Lx198_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx198_3:               pop              r11
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
n199_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx477_102
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lx477_101
.Lx477_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx477_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx477_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx477_101
.Lx477_100:             lea              rdi, [rsp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx477_101:             mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n200_var_ref_α
n199_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 8080], rax
                        mov              qword ptr [rsp + 8088], rdx;         jmp   n201_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:     mov              qword ptr [rsp + 8096], 3            # result
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rsp + 8104], rax;         jmp   n202_lit_string_α
.Lx480_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:      mov              qword ptr [rsp + 8112], 2            # result
                        mov              dword ptr [rsp + 8116], 1
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rsp + 8120], rax;         jmp   n203_call_builtin_prolog_α
.Lx481_0:               .quad            .Lx481_0_s
.Lx481_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n203_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n230_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n204_var_ref_α
n203_call_builtin_prolog_β:
                                                                              jmp   n230_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7872], rax
                        mov              qword ptr [rsp + 7880], rdx;         jmp   n205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:      mov              qword ptr [rsp + 8000], 2            # result
                        mov              dword ptr [rsp + 8004], 1
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rsp + 8008], rax;         jmp   n206_var_ref_α
.Lx485_0:               .quad            .Lx485_0_s
.Lx485_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7888], rax
                        mov              qword ptr [rsp + 7896], rdx;         jmp   n207_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7904], rax
                        mov              qword ptr [rsp + 7912], rdx;         jmp   n208_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n229_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n209_call_builtin_prolog_α
n208_call_builtin_prolog_β:
                                                                              jmp   n229_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_prolog_α:
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
.Lx491_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx491_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx491_41
                        cmp              esi, 1;                              jne   .Lx491_55
                        mov              r8, rax;                             jmp   .Lx491_40
.Lx491_55:              cmp              esi, 2;                              jne   .Lx491_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx491_41
                        mov              r8, rax;                             jmp   .Lx491_40
.Lx491_56:              cmp              al, 72;                              jne   .Lx491_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx491_41
                        cmp              rax, r8;                             je    .Lx491_41
                        mov              r8, rax;                             jmp   .Lx491_40
.Lx491_41:              lea              r9, [rsp + 7856]
.Lx491_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx491_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx491_43
                        cmp              esi, 1;                              jne   .Lx491_57
                        mov              r9, rax;                             jmp   .Lx491_42
.Lx491_57:              cmp              esi, 2;                              jne   .Lx491_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx491_43
                        mov              r9, rax;                             jmp   .Lx491_42
.Lx491_58:              cmp              al, 72;                              jne   .Lx491_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx491_43
                        cmp              rax, r9;                             je    .Lx491_43
                        mov              r9, rax;                             jmp   .Lx491_42
.Lx491_43:              cmp              r8, r9;                              je    .Lx491_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx491_44
                        cmp              al, 104;                             je    .Lx491_44
                        cmp              al, 72;                              jne   .Lx491_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx491_44
                                                                              jmp   .Lx491_45
.Lx491_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx491_53
                        cmp              al, 104;                             je    .Lx491_53
                        cmp              al, 72;                              jne   .Lx491_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx491_53
                                                                              jmp   .Lx491_46
.Lx491_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx491_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx491_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx491_51
.Lx491_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx491_47
                        cmp              al, 104;                             je    .Lx491_47
                        cmp              al, 72;                              jne   .Lx491_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx491_47
                                                                              jmp   .Lx491_48
.Lx491_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx491_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx491_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx491_51
.Lx491_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx491_49
                        cmp              dl, 80;                              je    .Lx491_53
                                                                              jmp   .Lx491_52
.Lx491_49:              cmp              dl, 80;                              je    .Lx491_52
                        cmp              cl, 5;                               je    .Lx491_53
                        cmp              dl, 5;                               je    .Lx491_53
                        cmp              cl, 3;                               jne   .Lx491_50
                        cmp              dl, 3;                               jne   .Lx491_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx491_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx491_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx491_51
                                                                              jmp   .Lx491_52
.Lx491_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx491_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx491_53
.Lx491_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx491_54
.Lx491_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx491_54
.Lx491_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx491_54:              mov              qword ptr [rsp + 7824], rax
                        mov              qword ptr [rsp + 7832], rdx
                        cmp              al, 104;                             je    n229_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n210_var_ref_α
n209_call_builtin_prolog_β:
                                                                              jmp   n229_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 7792], rax
                        mov              qword ptr [rsp + 7800], rdx;         jmp   n211_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7808], rax
                        mov              qword ptr [rsp + 7816], rdx;         jmp   n212_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n212_call_builtin_prolog_α:
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
.Lx496_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx496_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx496_41
                        cmp              esi, 1;                              jne   .Lx496_55
                        mov              r8, rax;                             jmp   .Lx496_40
.Lx496_55:              cmp              esi, 2;                              jne   .Lx496_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx496_41
                        mov              r8, rax;                             jmp   .Lx496_40
.Lx496_56:              cmp              al, 72;                              jne   .Lx496_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx496_41
                        cmp              rax, r8;                             je    .Lx496_41
                        mov              r8, rax;                             jmp   .Lx496_40
.Lx496_41:              lea              r9, [rsp + 7776]
.Lx496_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx496_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx496_43
                        cmp              esi, 1;                              jne   .Lx496_57
                        mov              r9, rax;                             jmp   .Lx496_42
.Lx496_57:              cmp              esi, 2;                              jne   .Lx496_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx496_43
                        mov              r9, rax;                             jmp   .Lx496_42
.Lx496_58:              cmp              al, 72;                              jne   .Lx496_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx496_43
                        cmp              rax, r9;                             je    .Lx496_43
                        mov              r9, rax;                             jmp   .Lx496_42
.Lx496_43:              cmp              r8, r9;                              je    .Lx496_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx496_44
                        cmp              al, 104;                             je    .Lx496_44
                        cmp              al, 72;                              jne   .Lx496_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx496_44
                                                                              jmp   .Lx496_45
.Lx496_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx496_53
                        cmp              al, 104;                             je    .Lx496_53
                        cmp              al, 72;                              jne   .Lx496_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx496_53
                                                                              jmp   .Lx496_46
.Lx496_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx496_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx496_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx496_51
.Lx496_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx496_47
                        cmp              al, 104;                             je    .Lx496_47
                        cmp              al, 72;                              jne   .Lx496_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx496_47
                                                                              jmp   .Lx496_48
.Lx496_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx496_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx496_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx496_51
.Lx496_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx496_49
                        cmp              dl, 80;                              je    .Lx496_53
                                                                              jmp   .Lx496_52
.Lx496_49:              cmp              dl, 80;                              je    .Lx496_52
                        cmp              cl, 5;                               je    .Lx496_53
                        cmp              dl, 5;                               je    .Lx496_53
                        cmp              cl, 3;                               jne   .Lx496_50
                        cmp              dl, 3;                               jne   .Lx496_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx496_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx496_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx496_51
                                                                              jmp   .Lx496_52
.Lx496_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx496_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx496_53
.Lx496_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx496_54
.Lx496_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx496_54
.Lx496_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx496_54:              mov              qword ptr [rsp + 7744], rax
                        mov              qword ptr [rsp + 7752], rdx
                        cmp              al, 104;                             je    n229_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n213_var_ref_α
n212_call_builtin_prolog_β:
                                                                              jmp   n229_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 7600], rax
                        mov              qword ptr [rsp + 7608], rdx;         jmp   n214_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:      mov              qword ptr [rsp + 7728], 2            # result
                        mov              dword ptr [rsp + 7732], 1
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rsp + 7736], rax;         jmp   n215_var_ref_α
.Lx499_0:               .quad            .Lx499_0_s
.Lx499_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 7616], rax
                        mov              qword ptr [rsp + 7624], rdx;         jmp   n216_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 7632], rax
                        mov              qword ptr [rsp + 7640], rdx;         jmp   n217_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n217_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n229_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n218_call_builtin_prolog_α
n217_call_builtin_prolog_β:
                                                                              jmp   n229_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n218_call_builtin_prolog_α:
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
.Lx505_41:              lea              r9, [rsp + 7584]
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
.Lx505_54:              mov              qword ptr [rsp + 7552], rax
                        mov              qword ptr [rsp + 7560], rdx
                        cmp              al, 104;                             je    n229_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n219_cut_α
n218_call_builtin_prolog_β:
                                                                              jmp   n229_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n219_cut_α:                                                                   jmp   n220_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7504], rax
                        mov              qword ptr [rsp + 7512], rdx;         jmp   n221_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7520], rax
                        mov              qword ptr [rsp + 7528], rdx;         jmp   n222_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 7536], rax
                        mov              qword ptr [rsp + 7544], rdx;         jmp   n223_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        lea              rsi, [rsp + 7504]
                        lea              rdx, [rsp + 7520]
                        lea              rcx, [rsp + 7536]
                        call             d$2F3_dcα;                           jmp   .Lx514_2
.Lx514_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx514_29
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
.Lx514_29:              mov              qword ptr [rsp + 7424], rax
                        mov              qword ptr [rsp + 7432], rdx
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                                                                              jmp   n224_var_ref_α
n223_call_proc_staged_β:
                                                                              jmp   n476_call_builtin_prolog_α
.Lx514_0:               .quad            .Lx514_0_s
.Lx514_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7376], rax
                        mov              qword ptr [rsp + 7384], rdx;         jmp   n225_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 7392], rax
                        mov              qword ptr [rsp + 7400], rdx;         jmp   n226_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 7408], rax
                        mov              qword ptr [rsp + 7416], rdx;         jmp   n227_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n227_call_proc_staged_α:
                        lea              rsi, [rsp + 7376]
                        lea              rdx, [rsp + 7392]
                        lea              rcx, [rsp + 7408]
                        call             d$2F3_dcα;                           jmp   .Lx522_2
.Lx522_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx522_29
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
.Lx522_29:              mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx
                        cmp              al, 104;                             je    n223_call_proc_staged_β
                                                                              jmp   n228_move_label_α
n227_call_proc_staged_β:
                                                                              jmp   n223_call_proc_staged_β
.Lx522_0:               .quad            .Lx522_0_s
.Lx522_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n228_move_label_α:      lea              rax, [rip + n227_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n229_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n230_var_ref_α
n229_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7216], rax
                        mov              qword ptr [rsp + 7224], rdx;         jmp   n231_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:     mov              qword ptr [rsp + 7232], 3            # result
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 7240], rax;         jmp   n232_lit_string_α
.Lx528_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_string_α:      mov              qword ptr [rsp + 7248], 2            # result
                        mov              dword ptr [rsp + 7252], 1
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rsp + 7256], rax;         jmp   n233_call_builtin_prolog_α
.Lx529_0:               .quad            .Lx529_0_s
.Lx529_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n233_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n260_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n234_var_ref_α
n233_call_builtin_prolog_β:
                                                                              jmp   n260_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 7008], rax
                        mov              qword ptr [rsp + 7016], rdx;         jmp   n235_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:      mov              qword ptr [rsp + 7136], 2            # result
                        mov              dword ptr [rsp + 7140], 1
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rsp + 7144], rax;         jmp   n236_var_ref_α
.Lx533_0:               .quad            .Lx533_0_s
.Lx533_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 7024], rax
                        mov              qword ptr [rsp + 7032], rdx;         jmp   n237_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 7040], rax
                        mov              qword ptr [rsp + 7048], rdx;         jmp   n238_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n259_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n239_call_builtin_prolog_α
n238_call_builtin_prolog_β:
                                                                              jmp   n259_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n239_call_builtin_prolog_α:
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
.Lx539_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx539_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx539_41
                        cmp              esi, 1;                              jne   .Lx539_55
                        mov              r8, rax;                             jmp   .Lx539_40
.Lx539_55:              cmp              esi, 2;                              jne   .Lx539_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx539_41
                        mov              r8, rax;                             jmp   .Lx539_40
.Lx539_56:              cmp              al, 72;                              jne   .Lx539_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx539_41
                        cmp              rax, r8;                             je    .Lx539_41
                        mov              r8, rax;                             jmp   .Lx539_40
.Lx539_41:              lea              r9, [rsp + 6992]
.Lx539_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx539_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx539_43
                        cmp              esi, 1;                              jne   .Lx539_57
                        mov              r9, rax;                             jmp   .Lx539_42
.Lx539_57:              cmp              esi, 2;                              jne   .Lx539_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx539_43
                        mov              r9, rax;                             jmp   .Lx539_42
.Lx539_58:              cmp              al, 72;                              jne   .Lx539_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx539_43
                        cmp              rax, r9;                             je    .Lx539_43
                        mov              r9, rax;                             jmp   .Lx539_42
.Lx539_43:              cmp              r8, r9;                              je    .Lx539_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx539_44
                        cmp              al, 104;                             je    .Lx539_44
                        cmp              al, 72;                              jne   .Lx539_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx539_44
                                                                              jmp   .Lx539_45
.Lx539_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx539_53
                        cmp              al, 104;                             je    .Lx539_53
                        cmp              al, 72;                              jne   .Lx539_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx539_53
                                                                              jmp   .Lx539_46
.Lx539_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx539_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx539_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx539_51
.Lx539_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx539_47
                        cmp              al, 104;                             je    .Lx539_47
                        cmp              al, 72;                              jne   .Lx539_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx539_47
                                                                              jmp   .Lx539_48
.Lx539_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx539_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx539_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx539_51
.Lx539_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx539_49
                        cmp              dl, 80;                              je    .Lx539_53
                                                                              jmp   .Lx539_52
.Lx539_49:              cmp              dl, 80;                              je    .Lx539_52
                        cmp              cl, 5;                               je    .Lx539_53
                        cmp              dl, 5;                               je    .Lx539_53
                        cmp              cl, 3;                               jne   .Lx539_50
                        cmp              dl, 3;                               jne   .Lx539_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx539_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx539_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx539_51
                                                                              jmp   .Lx539_52
.Lx539_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx539_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx539_53
.Lx539_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx539_54
.Lx539_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx539_54
.Lx539_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx539_54:              mov              qword ptr [rsp + 6960], rax
                        mov              qword ptr [rsp + 6968], rdx
                        cmp              al, 104;                             je    n259_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n240_var_ref_α
n239_call_builtin_prolog_β:
                                                                              jmp   n259_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 6928], rax
                        mov              qword ptr [rsp + 6936], rdx;         jmp   n241_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6944], rax
                        mov              qword ptr [rsp + 6952], rdx;         jmp   n242_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_prolog_α:
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
.Lx544_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx544_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx544_41
                        cmp              esi, 1;                              jne   .Lx544_55
                        mov              r8, rax;                             jmp   .Lx544_40
.Lx544_55:              cmp              esi, 2;                              jne   .Lx544_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx544_41
                        mov              r8, rax;                             jmp   .Lx544_40
.Lx544_56:              cmp              al, 72;                              jne   .Lx544_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx544_41
                        cmp              rax, r8;                             je    .Lx544_41
                        mov              r8, rax;                             jmp   .Lx544_40
.Lx544_41:              lea              r9, [rsp + 6912]
.Lx544_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx544_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx544_43
                        cmp              esi, 1;                              jne   .Lx544_57
                        mov              r9, rax;                             jmp   .Lx544_42
.Lx544_57:              cmp              esi, 2;                              jne   .Lx544_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx544_43
                        mov              r9, rax;                             jmp   .Lx544_42
.Lx544_58:              cmp              al, 72;                              jne   .Lx544_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx544_43
                        cmp              rax, r9;                             je    .Lx544_43
                        mov              r9, rax;                             jmp   .Lx544_42
.Lx544_43:              cmp              r8, r9;                              je    .Lx544_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx544_44
                        cmp              al, 104;                             je    .Lx544_44
                        cmp              al, 72;                              jne   .Lx544_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx544_44
                                                                              jmp   .Lx544_45
.Lx544_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx544_53
                        cmp              al, 104;                             je    .Lx544_53
                        cmp              al, 72;                              jne   .Lx544_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx544_53
                                                                              jmp   .Lx544_46
.Lx544_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx544_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx544_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx544_51
.Lx544_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx544_47
                        cmp              al, 104;                             je    .Lx544_47
                        cmp              al, 72;                              jne   .Lx544_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx544_47
                                                                              jmp   .Lx544_48
.Lx544_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx544_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx544_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx544_51
.Lx544_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx544_49
                        cmp              dl, 80;                              je    .Lx544_53
                                                                              jmp   .Lx544_52
.Lx544_49:              cmp              dl, 80;                              je    .Lx544_52
                        cmp              cl, 5;                               je    .Lx544_53
                        cmp              dl, 5;                               je    .Lx544_53
                        cmp              cl, 3;                               jne   .Lx544_50
                        cmp              dl, 3;                               jne   .Lx544_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx544_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx544_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx544_51
                                                                              jmp   .Lx544_52
.Lx544_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx544_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx544_53
.Lx544_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx544_54
.Lx544_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx544_54
.Lx544_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx544_54:              mov              qword ptr [rsp + 6880], rax
                        mov              qword ptr [rsp + 6888], rdx
                        cmp              al, 104;                             je    n259_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n243_var_ref_α
n242_call_builtin_prolog_β:
                                                                              jmp   n259_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 6736], rax
                        mov              qword ptr [rsp + 6744], rdx;         jmp   n244_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:      mov              qword ptr [rsp + 6864], 2            # result
                        mov              dword ptr [rsp + 6868], 1
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rsp + 6872], rax;         jmp   n245_var_ref_α
.Lx547_0:               .quad            .Lx547_0_s
.Lx547_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 6752], rax
                        mov              qword ptr [rsp + 6760], rdx;         jmp   n246_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n246_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 6768], rax
                        mov              qword ptr [rsp + 6776], rdx;         jmp   n247_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n247_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n259_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n248_call_builtin_prolog_α
n247_call_builtin_prolog_β:
                                                                              jmp   n259_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_prolog_α:
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
.Lx553_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx553_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx553_41
                        cmp              esi, 1;                              jne   .Lx553_55
                        mov              r8, rax;                             jmp   .Lx553_40
.Lx553_55:              cmp              esi, 2;                              jne   .Lx553_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx553_41
                        mov              r8, rax;                             jmp   .Lx553_40
.Lx553_56:              cmp              al, 72;                              jne   .Lx553_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx553_41
                        cmp              rax, r8;                             je    .Lx553_41
                        mov              r8, rax;                             jmp   .Lx553_40
.Lx553_41:              lea              r9, [rsp + 6720]
.Lx553_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx553_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx553_43
                        cmp              esi, 1;                              jne   .Lx553_57
                        mov              r9, rax;                             jmp   .Lx553_42
.Lx553_57:              cmp              esi, 2;                              jne   .Lx553_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx553_43
                        mov              r9, rax;                             jmp   .Lx553_42
.Lx553_58:              cmp              al, 72;                              jne   .Lx553_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx553_43
                        cmp              rax, r9;                             je    .Lx553_43
                        mov              r9, rax;                             jmp   .Lx553_42
.Lx553_43:              cmp              r8, r9;                              je    .Lx553_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx553_44
                        cmp              al, 104;                             je    .Lx553_44
                        cmp              al, 72;                              jne   .Lx553_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx553_44
                                                                              jmp   .Lx553_45
.Lx553_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx553_53
                        cmp              al, 104;                             je    .Lx553_53
                        cmp              al, 72;                              jne   .Lx553_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx553_53
                                                                              jmp   .Lx553_46
.Lx553_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx553_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx553_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx553_51
.Lx553_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx553_47
                        cmp              al, 104;                             je    .Lx553_47
                        cmp              al, 72;                              jne   .Lx553_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx553_47
                                                                              jmp   .Lx553_48
.Lx553_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx553_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx553_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx553_51
.Lx553_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx553_49
                        cmp              dl, 80;                              je    .Lx553_53
                                                                              jmp   .Lx553_52
.Lx553_49:              cmp              dl, 80;                              je    .Lx553_52
                        cmp              cl, 5;                               je    .Lx553_53
                        cmp              dl, 5;                               je    .Lx553_53
                        cmp              cl, 3;                               jne   .Lx553_50
                        cmp              dl, 3;                               jne   .Lx553_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx553_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx553_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx553_51
                                                                              jmp   .Lx553_52
.Lx553_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx553_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx553_53
.Lx553_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx553_54
.Lx553_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx553_54
.Lx553_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx553_54:              mov              qword ptr [rsp + 6688], rax
                        mov              qword ptr [rsp + 6696], rdx
                        cmp              al, 104;                             je    n259_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n249_cut_α
n248_call_builtin_prolog_β:
                                                                              jmp   n259_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n249_cut_α:                                                                   jmp   n250_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 6640], rax
                        mov              qword ptr [rsp + 6648], rdx;         jmp   n251_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6656], rax
                        mov              qword ptr [rsp + 6664], rdx;         jmp   n252_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 6672], rax
                        mov              qword ptr [rsp + 6680], rdx;         jmp   n253_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n253_call_proc_staged_α:
                        lea              rsi, [rsp + 6640]
                        lea              rdx, [rsp + 6656]
                        lea              rcx, [rsp + 6672]
                        call             d$2F3_dcα;                           jmp   .Lx562_2
.Lx562_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx562_29
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
.Lx562_29:              mov              qword ptr [rsp + 6560], rax
                        mov              qword ptr [rsp + 6568], rdx
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                                                                              jmp   n254_var_ref_α
n253_call_proc_staged_β:
                                                                              jmp   n476_call_builtin_prolog_α
.Lx562_0:               .quad            .Lx562_0_s
.Lx562_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 6512], rax
                        mov              qword ptr [rsp + 6520], rdx;         jmp   n255_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6528], rax
                        mov              qword ptr [rsp + 6536], rdx;         jmp   n256_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 6544], rax
                        mov              qword ptr [rsp + 6552], rdx;         jmp   n257_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n257_call_proc_staged_α:
                        lea              rsi, [rsp + 6512]
                        lea              rdx, [rsp + 6528]
                        lea              rcx, [rsp + 6544]
                        call             d$2F3_dcα;                           jmp   .Lx570_2
.Lx570_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx570_29
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
.Lx570_29:              mov              qword ptr [rsp + 6432], rax
                        mov              qword ptr [rsp + 6440], rdx
                        cmp              al, 104;                             je    n253_call_proc_staged_β
                                                                              jmp   n258_move_label_α
n257_call_proc_staged_β:
                                                                              jmp   n253_call_proc_staged_β
.Lx570_0:               .quad            .Lx570_0_s
.Lx570_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n258_move_label_α:      lea              rax, [rip + n257_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n259_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n260_var_ref_α
n259_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 6352], rax
                        mov              qword ptr [rsp + 6360], rdx;         jmp   n261_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_integer_α:     mov              qword ptr [rsp + 6368], 3            # result
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 6376], rax;         jmp   n262_lit_string_α
.Lx576_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:      mov              qword ptr [rsp + 6384], 2            # result
                        mov              dword ptr [rsp + 6388], 1
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rsp + 6392], rax;         jmp   n263_call_builtin_prolog_α
.Lx577_0:               .quad            .Lx577_0_s
.Lx577_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n263_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n296_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n264_var_ref_α
n263_call_builtin_prolog_β:
                                                                              jmp   n296_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n264_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 6144], rax
                        mov              qword ptr [rsp + 6152], rdx;         jmp   n265_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:      mov              qword ptr [rsp + 6272], 2            # result
                        mov              dword ptr [rsp + 6276], 1
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rsp + 6280], rax;         jmp   n266_var_ref_α
.Lx581_0:               .quad            .Lx581_0_s
.Lx581_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 6160], rax
                        mov              qword ptr [rsp + 6168], rdx;         jmp   n267_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 6176], rax
                        mov              qword ptr [rsp + 6184], rdx;         jmp   n268_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n295_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n269_call_builtin_prolog_α
n268_call_builtin_prolog_β:
                                                                              jmp   n295_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n269_call_builtin_prolog_α:
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
.Lx587_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx587_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx587_41
                        cmp              esi, 1;                              jne   .Lx587_55
                        mov              r8, rax;                             jmp   .Lx587_40
.Lx587_55:              cmp              esi, 2;                              jne   .Lx587_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx587_41
                        mov              r8, rax;                             jmp   .Lx587_40
.Lx587_56:              cmp              al, 72;                              jne   .Lx587_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx587_41
                        cmp              rax, r8;                             je    .Lx587_41
                        mov              r8, rax;                             jmp   .Lx587_40
.Lx587_41:              lea              r9, [rsp + 6128]
.Lx587_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx587_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx587_43
                        cmp              esi, 1;                              jne   .Lx587_57
                        mov              r9, rax;                             jmp   .Lx587_42
.Lx587_57:              cmp              esi, 2;                              jne   .Lx587_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx587_43
                        mov              r9, rax;                             jmp   .Lx587_42
.Lx587_58:              cmp              al, 72;                              jne   .Lx587_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx587_43
                        cmp              rax, r9;                             je    .Lx587_43
                        mov              r9, rax;                             jmp   .Lx587_42
.Lx587_43:              cmp              r8, r9;                              je    .Lx587_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx587_44
                        cmp              al, 104;                             je    .Lx587_44
                        cmp              al, 72;                              jne   .Lx587_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx587_44
                                                                              jmp   .Lx587_45
.Lx587_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx587_53
                        cmp              al, 104;                             je    .Lx587_53
                        cmp              al, 72;                              jne   .Lx587_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx587_53
                                                                              jmp   .Lx587_46
.Lx587_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx587_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx587_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx587_51
.Lx587_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx587_47
                        cmp              al, 104;                             je    .Lx587_47
                        cmp              al, 72;                              jne   .Lx587_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx587_47
                                                                              jmp   .Lx587_48
.Lx587_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx587_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx587_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx587_51
.Lx587_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx587_49
                        cmp              dl, 80;                              je    .Lx587_53
                                                                              jmp   .Lx587_52
.Lx587_49:              cmp              dl, 80;                              je    .Lx587_52
                        cmp              cl, 5;                               je    .Lx587_53
                        cmp              dl, 5;                               je    .Lx587_53
                        cmp              cl, 3;                               jne   .Lx587_50
                        cmp              dl, 3;                               jne   .Lx587_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx587_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx587_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx587_51
                                                                              jmp   .Lx587_52
.Lx587_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx587_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx587_53
.Lx587_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx587_54
.Lx587_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx587_54
.Lx587_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx587_54:              mov              qword ptr [rsp + 6096], rax
                        mov              qword ptr [rsp + 6104], rdx
                        cmp              al, 104;                             je    n295_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n270_var_ref_α
n269_call_builtin_prolog_β:
                                                                              jmp   n295_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n270_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 6064], rax
                        mov              qword ptr [rsp + 6072], rdx;         jmp   n271_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 6080], rax
                        mov              qword ptr [rsp + 6088], rdx;         jmp   n272_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n272_call_builtin_prolog_α:
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
.Lx592_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx592_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx592_41
                        cmp              esi, 1;                              jne   .Lx592_55
                        mov              r8, rax;                             jmp   .Lx592_40
.Lx592_55:              cmp              esi, 2;                              jne   .Lx592_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx592_41
                        mov              r8, rax;                             jmp   .Lx592_40
.Lx592_56:              cmp              al, 72;                              jne   .Lx592_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx592_41
                        cmp              rax, r8;                             je    .Lx592_41
                        mov              r8, rax;                             jmp   .Lx592_40
.Lx592_41:              lea              r9, [rsp + 6048]
.Lx592_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx592_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx592_43
                        cmp              esi, 1;                              jne   .Lx592_57
                        mov              r9, rax;                             jmp   .Lx592_42
.Lx592_57:              cmp              esi, 2;                              jne   .Lx592_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx592_43
                        mov              r9, rax;                             jmp   .Lx592_42
.Lx592_58:              cmp              al, 72;                              jne   .Lx592_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx592_43
                        cmp              rax, r9;                             je    .Lx592_43
                        mov              r9, rax;                             jmp   .Lx592_42
.Lx592_43:              cmp              r8, r9;                              je    .Lx592_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx592_44
                        cmp              al, 104;                             je    .Lx592_44
                        cmp              al, 72;                              jne   .Lx592_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx592_44
                                                                              jmp   .Lx592_45
.Lx592_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx592_53
                        cmp              al, 104;                             je    .Lx592_53
                        cmp              al, 72;                              jne   .Lx592_46
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
                        cmp              al, 0;                               je    .Lx592_47
                        cmp              al, 104;                             je    .Lx592_47
                        cmp              al, 72;                              jne   .Lx592_48
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
                        cmp              cl, 80;                              jne   .Lx592_49
                        cmp              dl, 80;                              je    .Lx592_53
                                                                              jmp   .Lx592_52
.Lx592_49:              cmp              dl, 80;                              je    .Lx592_52
                        cmp              cl, 5;                               je    .Lx592_53
                        cmp              dl, 5;                               je    .Lx592_53
                        cmp              cl, 3;                               jne   .Lx592_50
                        cmp              dl, 3;                               jne   .Lx592_50
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
.Lx592_54:              mov              qword ptr [rsp + 6016], rax
                        mov              qword ptr [rsp + 6024], rdx
                        cmp              al, 104;                             je    n295_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n273_var_ref_α
n272_call_builtin_prolog_β:
                                                                              jmp   n295_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 5648], rax
                        mov              qword ptr [rsp + 5656], rdx;         jmp   n274_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:      mov              qword ptr [rsp + 6000], 2            # result
                        mov              dword ptr [rsp + 6004], 1
                        mov              rax, qword ptr [rip + .Lx595_0]
                        mov              qword ptr [rsp + 6008], rax;         jmp   n275_lit_string_α
.Lx595_0:               .quad            .Lx595_0_s
.Lx595_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:      mov              qword ptr [rsp + 5776], 2            # result
                        mov              dword ptr [rsp + 5780], 1
                        mov              rax, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rsp + 5784], rax;         jmp   n276_var_ref_α
.Lx596_0:               .quad            .Lx596_0_s
.Lx596_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n276_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx;         jmp   n277_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5680], rax
                        mov              qword ptr [rsp + 5688], rdx;         jmp   n278_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n278_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n279_lit_string_α
n278_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:      mov              qword ptr [rsp + 5904], 2            # result
                        mov              dword ptr [rsp + 5908], 1
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rsp + 5912], rax;         jmp   n280_var_ref_α
.Lx602_0:               .quad            .Lx602_0_s
.Lx602_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5792], rax
                        mov              qword ptr [rsp + 5800], rdx;         jmp   n281_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 5808], rax
                        mov              qword ptr [rsp + 5816], rdx;         jmp   n282_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n282_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n283_call_builtin_prolog_α
n282_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n283_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n295_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n284_call_builtin_prolog_α
n283_call_builtin_prolog_β:
                                                                              jmp   n295_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n284_call_builtin_prolog_α:
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
.Lx609_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx609_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx609_41
                        cmp              esi, 1;                              jne   .Lx609_55
                        mov              r8, rax;                             jmp   .Lx609_40
.Lx609_55:              cmp              esi, 2;                              jne   .Lx609_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx609_41
                        mov              r8, rax;                             jmp   .Lx609_40
.Lx609_56:              cmp              al, 72;                              jne   .Lx609_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx609_41
                        cmp              rax, r8;                             je    .Lx609_41
                        mov              r8, rax;                             jmp   .Lx609_40
.Lx609_41:              lea              r9, [rsp + 5632]
.Lx609_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx609_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx609_43
                        cmp              esi, 1;                              jne   .Lx609_57
                        mov              r9, rax;                             jmp   .Lx609_42
.Lx609_57:              cmp              esi, 2;                              jne   .Lx609_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx609_43
                        mov              r9, rax;                             jmp   .Lx609_42
.Lx609_58:              cmp              al, 72;                              jne   .Lx609_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx609_43
                        cmp              rax, r9;                             je    .Lx609_43
                        mov              r9, rax;                             jmp   .Lx609_42
.Lx609_43:              cmp              r8, r9;                              je    .Lx609_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx609_44
                        cmp              al, 104;                             je    .Lx609_44
                        cmp              al, 72;                              jne   .Lx609_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx609_44
                                                                              jmp   .Lx609_45
.Lx609_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx609_53
                        cmp              al, 104;                             je    .Lx609_53
                        cmp              al, 72;                              jne   .Lx609_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx609_53
                                                                              jmp   .Lx609_46
.Lx609_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx609_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx609_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx609_51
.Lx609_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx609_47
                        cmp              al, 104;                             je    .Lx609_47
                        cmp              al, 72;                              jne   .Lx609_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx609_47
                                                                              jmp   .Lx609_48
.Lx609_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx609_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx609_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx609_51
.Lx609_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx609_49
                        cmp              dl, 80;                              je    .Lx609_53
                                                                              jmp   .Lx609_52
.Lx609_49:              cmp              dl, 80;                              je    .Lx609_52
                        cmp              cl, 5;                               je    .Lx609_53
                        cmp              dl, 5;                               je    .Lx609_53
                        cmp              cl, 3;                               jne   .Lx609_50
                        cmp              dl, 3;                               jne   .Lx609_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx609_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx609_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx609_51
                                                                              jmp   .Lx609_52
.Lx609_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx609_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx609_53
.Lx609_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx609_54
.Lx609_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx609_54
.Lx609_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx609_54:              mov              qword ptr [rsp + 5600], rax
                        mov              qword ptr [rsp + 5608], rdx
                        cmp              al, 104;                             je    n295_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n285_cut_α
n284_call_builtin_prolog_β:
                                                                              jmp   n295_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n285_cut_α:                                                                   jmp   n286_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5552], rax
                        mov              qword ptr [rsp + 5560], rdx;         jmp   n287_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 5568], rax
                        mov              qword ptr [rsp + 5576], rdx;         jmp   n288_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 5584], rax
                        mov              qword ptr [rsp + 5592], rdx;         jmp   n289_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n289_call_proc_staged_α:
                        lea              rsi, [rsp + 5552]
                        lea              rdx, [rsp + 5568]
                        lea              rcx, [rsp + 5584]
                        call             d$2F3_dcα;                           jmp   .Lx618_2
.Lx618_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx618_29
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
.Lx618_29:              mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                                                                              jmp   n290_var_ref_α
n289_call_proc_staged_β:
                                                                              jmp   n476_call_builtin_prolog_α
.Lx618_0:               .quad            .Lx618_0_s
.Lx618_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5424], rax
                        mov              qword ptr [rsp + 5432], rdx;         jmp   n291_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n291_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 5440], rax
                        mov              qword ptr [rsp + 5448], rdx;         jmp   n292_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 5456], rax
                        mov              qword ptr [rsp + 5464], rdx;         jmp   n293_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n293_call_proc_staged_α:
                        lea              rsi, [rsp + 5424]
                        lea              rdx, [rsp + 5440]
                        lea              rcx, [rsp + 5456]
                        call             d$2F3_dcα;                           jmp   .Lx626_2
.Lx626_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx626_29
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
.Lx626_29:              mov              qword ptr [rsp + 5344], rax
                        mov              qword ptr [rsp + 5352], rdx
                        cmp              al, 104;                             je    n289_call_proc_staged_β
                                                                              jmp   n294_move_label_α
n293_call_proc_staged_β:
                                                                              jmp   n289_call_proc_staged_β
.Lx626_0:               .quad            .Lx626_0_s
.Lx626_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n294_move_label_α:      lea              rax, [rip + n293_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n295_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n296_var_ref_α
n295_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5264], rax
                        mov              qword ptr [rsp + 5272], rdx;         jmp   n297_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_integer_α:     mov              qword ptr [rsp + 5280], 3            # result
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rsp + 5288], rax;         jmp   n298_lit_string_α
.Lx632_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:      mov              qword ptr [rsp + 5296], 2            # result
                        mov              dword ptr [rsp + 5300], 1
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rsp + 5304], rax;         jmp   n299_call_builtin_prolog_α
.Lx633_0:               .quad            .Lx633_0_s
.Lx633_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n299_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n338_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n300_var_ref_α
n299_call_builtin_prolog_β:
                                                                              jmp   n338_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 5056], rax
                        mov              qword ptr [rsp + 5064], rdx;         jmp   n301_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_string_α:      mov              qword ptr [rsp + 5184], 2            # result
                        mov              dword ptr [rsp + 5188], 1
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rsp + 5192], rax;         jmp   n302_var_ref_α
.Lx637_0:               .quad            .Lx637_0_s
.Lx637_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 5072], rax
                        mov              qword ptr [rsp + 5080], rdx;         jmp   n303_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 5088], rax
                        mov              qword ptr [rsp + 5096], rdx;         jmp   n304_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n337_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n305_call_builtin_prolog_α
n304_call_builtin_prolog_β:
                                                                              jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n305_call_builtin_prolog_α:
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
.Lx643_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx643_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx643_41
                        cmp              esi, 1;                              jne   .Lx643_55
                        mov              r8, rax;                             jmp   .Lx643_40
.Lx643_55:              cmp              esi, 2;                              jne   .Lx643_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx643_41
                        mov              r8, rax;                             jmp   .Lx643_40
.Lx643_56:              cmp              al, 72;                              jne   .Lx643_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx643_41
                        cmp              rax, r8;                             je    .Lx643_41
                        mov              r8, rax;                             jmp   .Lx643_40
.Lx643_41:              lea              r9, [rsp + 5040]
.Lx643_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx643_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx643_43
                        cmp              esi, 1;                              jne   .Lx643_57
                        mov              r9, rax;                             jmp   .Lx643_42
.Lx643_57:              cmp              esi, 2;                              jne   .Lx643_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx643_43
                        mov              r9, rax;                             jmp   .Lx643_42
.Lx643_58:              cmp              al, 72;                              jne   .Lx643_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx643_43
                        cmp              rax, r9;                             je    .Lx643_43
                        mov              r9, rax;                             jmp   .Lx643_42
.Lx643_43:              cmp              r8, r9;                              je    .Lx643_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx643_44
                        cmp              al, 104;                             je    .Lx643_44
                        cmp              al, 72;                              jne   .Lx643_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx643_44
                                                                              jmp   .Lx643_45
.Lx643_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx643_53
                        cmp              al, 104;                             je    .Lx643_53
                        cmp              al, 72;                              jne   .Lx643_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx643_53
                                                                              jmp   .Lx643_46
.Lx643_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx643_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx643_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx643_51
.Lx643_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx643_47
                        cmp              al, 104;                             je    .Lx643_47
                        cmp              al, 72;                              jne   .Lx643_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx643_47
                                                                              jmp   .Lx643_48
.Lx643_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx643_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx643_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx643_51
.Lx643_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx643_49
                        cmp              dl, 80;                              je    .Lx643_53
                                                                              jmp   .Lx643_52
.Lx643_49:              cmp              dl, 80;                              je    .Lx643_52
                        cmp              cl, 5;                               je    .Lx643_53
                        cmp              dl, 5;                               je    .Lx643_53
                        cmp              cl, 3;                               jne   .Lx643_50
                        cmp              dl, 3;                               jne   .Lx643_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx643_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx643_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx643_51
                                                                              jmp   .Lx643_52
.Lx643_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx643_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx643_53
.Lx643_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx643_54
.Lx643_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx643_54
.Lx643_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx643_54:              mov              qword ptr [rsp + 5008], rax
                        mov              qword ptr [rsp + 5016], rdx
                        cmp              al, 104;                             je    n337_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n306_var_ref_α
n305_call_builtin_prolog_β:
                                                                              jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 4976], rax
                        mov              qword ptr [rsp + 4984], rdx;         jmp   n307_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx;         jmp   n308_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n308_call_builtin_prolog_α:
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
.Lx648_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx648_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx648_41
                        cmp              esi, 1;                              jne   .Lx648_55
                        mov              r8, rax;                             jmp   .Lx648_40
.Lx648_55:              cmp              esi, 2;                              jne   .Lx648_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx648_41
                        mov              r8, rax;                             jmp   .Lx648_40
.Lx648_56:              cmp              al, 72;                              jne   .Lx648_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx648_41
                        cmp              rax, r8;                             je    .Lx648_41
                        mov              r8, rax;                             jmp   .Lx648_40
.Lx648_41:              lea              r9, [rsp + 4960]
.Lx648_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx648_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx648_43
                        cmp              esi, 1;                              jne   .Lx648_57
                        mov              r9, rax;                             jmp   .Lx648_42
.Lx648_57:              cmp              esi, 2;                              jne   .Lx648_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx648_43
                        mov              r9, rax;                             jmp   .Lx648_42
.Lx648_58:              cmp              al, 72;                              jne   .Lx648_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx648_43
                        cmp              rax, r9;                             je    .Lx648_43
                        mov              r9, rax;                             jmp   .Lx648_42
.Lx648_43:              cmp              r8, r9;                              je    .Lx648_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx648_44
                        cmp              al, 104;                             je    .Lx648_44
                        cmp              al, 72;                              jne   .Lx648_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx648_44
                                                                              jmp   .Lx648_45
.Lx648_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx648_53
                        cmp              al, 104;                             je    .Lx648_53
                        cmp              al, 72;                              jne   .Lx648_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx648_53
                                                                              jmp   .Lx648_46
.Lx648_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx648_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx648_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx648_51
.Lx648_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx648_47
                        cmp              al, 104;                             je    .Lx648_47
                        cmp              al, 72;                              jne   .Lx648_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx648_47
                                                                              jmp   .Lx648_48
.Lx648_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx648_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx648_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx648_51
.Lx648_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx648_49
                        cmp              dl, 80;                              je    .Lx648_53
                                                                              jmp   .Lx648_52
.Lx648_49:              cmp              dl, 80;                              je    .Lx648_52
                        cmp              cl, 5;                               je    .Lx648_53
                        cmp              dl, 5;                               je    .Lx648_53
                        cmp              cl, 3;                               jne   .Lx648_50
                        cmp              dl, 3;                               jne   .Lx648_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx648_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx648_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx648_51
                                                                              jmp   .Lx648_52
.Lx648_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx648_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx648_53
.Lx648_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx648_54
.Lx648_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx648_54
.Lx648_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx648_54:              mov              qword ptr [rsp + 4928], rax
                        mov              qword ptr [rsp + 4936], rdx
                        cmp              al, 104;                             je    n337_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n309_var_ref_α
n308_call_builtin_prolog_β:
                                                                              jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx;         jmp   n310_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:      mov              qword ptr [rsp + 4912], 2            # result
                        mov              dword ptr [rsp + 4916], 1
                        mov              rax, qword ptr [rip + .Lx651_0]
                        mov              qword ptr [rsp + 4920], rax;         jmp   n311_lit_string_α
.Lx651_0:               .quad            .Lx651_0_s
.Lx651_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:      mov              qword ptr [rsp + 4688], 2            # result
                        mov              dword ptr [rsp + 4692], 1
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rsp + 4696], rax;         jmp   n312_lit_string_α
.Lx652_0:               .quad            .Lx652_0_s
.Lx652_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:      mov              qword ptr [rsp + 4464], 2            # result
                        mov              dword ptr [rsp + 4468], 1
                        mov              rax, qword ptr [rip + .Lx653_0]
                        mov              qword ptr [rsp + 4472], rax;         jmp   n313_var_ref_α
.Lx653_0:               .quad            .Lx653_0_s
.Lx653_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx;         jmp   n314_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4368], rax
                        mov              qword ptr [rsp + 4376], rdx;         jmp   n315_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n316_lit_string_α
n315_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:      mov              qword ptr [rsp + 4592], 2            # result
                        mov              dword ptr [rsp + 4596], 1
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rsp + 4600], rax;         jmp   n317_var_ref_α
.Lx659_0:               .quad            .Lx659_0_s
.Lx659_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx;         jmp   n318_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx;         jmp   n319_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n319_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n320_call_builtin_prolog_α
n319_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n320_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n321_lit_string_α
n320_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:      mov              qword ptr [rsp + 4816], 2            # result
                        mov              dword ptr [rsp + 4820], 1
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rsp + 4824], rax;         jmp   n322_var_ref_α
.Lx666_0:               .quad            .Lx666_0_s
.Lx666_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4704], rax
                        mov              qword ptr [rsp + 4712], rdx;         jmp   n323_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_integer_α:     mov              qword ptr [rsp + 4720], 3            # result
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rsp + 4728], rax;         jmp   n324_call_builtin_prolog_α
.Lx669_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n324_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n325_call_builtin_prolog_α
n324_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n325_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n337_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n326_call_builtin_prolog_α
n325_call_builtin_prolog_β:
                                                                              jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n326_call_builtin_prolog_α:
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
.Lx672_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx672_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx672_41
                        cmp              esi, 1;                              jne   .Lx672_55
                        mov              r8, rax;                             jmp   .Lx672_40
.Lx672_55:              cmp              esi, 2;                              jne   .Lx672_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx672_41
                        mov              r8, rax;                             jmp   .Lx672_40
.Lx672_56:              cmp              al, 72;                              jne   .Lx672_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx672_41
                        cmp              rax, r8;                             je    .Lx672_41
                        mov              r8, rax;                             jmp   .Lx672_40
.Lx672_41:              lea              r9, [rsp + 4320]
.Lx672_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx672_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx672_43
                        cmp              esi, 1;                              jne   .Lx672_57
                        mov              r9, rax;                             jmp   .Lx672_42
.Lx672_57:              cmp              esi, 2;                              jne   .Lx672_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx672_43
                        mov              r9, rax;                             jmp   .Lx672_42
.Lx672_58:              cmp              al, 72;                              jne   .Lx672_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx672_43
                        cmp              rax, r9;                             je    .Lx672_43
                        mov              r9, rax;                             jmp   .Lx672_42
.Lx672_43:              cmp              r8, r9;                              je    .Lx672_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx672_44
                        cmp              al, 104;                             je    .Lx672_44
                        cmp              al, 72;                              jne   .Lx672_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx672_44
                                                                              jmp   .Lx672_45
.Lx672_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx672_53
                        cmp              al, 104;                             je    .Lx672_53
                        cmp              al, 72;                              jne   .Lx672_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx672_53
                                                                              jmp   .Lx672_46
.Lx672_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx672_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx672_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx672_51
.Lx672_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx672_47
                        cmp              al, 104;                             je    .Lx672_47
                        cmp              al, 72;                              jne   .Lx672_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx672_47
                                                                              jmp   .Lx672_48
.Lx672_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx672_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx672_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx672_51
.Lx672_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx672_49
                        cmp              dl, 80;                              je    .Lx672_53
                                                                              jmp   .Lx672_52
.Lx672_49:              cmp              dl, 80;                              je    .Lx672_52
                        cmp              cl, 5;                               je    .Lx672_53
                        cmp              dl, 5;                               je    .Lx672_53
                        cmp              cl, 3;                               jne   .Lx672_50
                        cmp              dl, 3;                               jne   .Lx672_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx672_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx672_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx672_51
                                                                              jmp   .Lx672_52
.Lx672_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx672_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx672_53
.Lx672_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx672_54
.Lx672_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx672_54
.Lx672_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx672_54:              mov              qword ptr [rsp + 4288], rax
                        mov              qword ptr [rsp + 4296], rdx
                        cmp              al, 104;                             je    n337_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n327_cut_α
n326_call_builtin_prolog_β:
                                                                              jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n327_cut_α:                                                                   jmp   n328_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 4240], rax
                        mov              qword ptr [rsp + 4248], rdx;         jmp   n329_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx;         jmp   n330_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 4272], rax
                        mov              qword ptr [rsp + 4280], rdx;         jmp   n331_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n331_call_proc_staged_α:
                        lea              rsi, [rsp + 4240]
                        lea              rdx, [rsp + 4256]
                        lea              rcx, [rsp + 4272]
                        call             d$2F3_dcα;                           jmp   .Lx681_2
.Lx681_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx681_29
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
.Lx681_29:              mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                                                                              jmp   n332_var_ref_α
n331_call_proc_staged_β:
                                                                              jmp   n476_call_builtin_prolog_α
.Lx681_0:               .quad            .Lx681_0_s
.Lx681_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx;         jmp   n333_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx;         jmp   n334_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx;         jmp   n335_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n335_call_proc_staged_α:
                        lea              rsi, [rsp + 4112]
                        lea              rdx, [rsp + 4128]
                        lea              rcx, [rsp + 4144]
                        call             d$2F3_dcα;                           jmp   .Lx689_2
.Lx689_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx689_29
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
.Lx689_29:              mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        cmp              al, 104;                             je    n331_call_proc_staged_β
                                                                              jmp   n336_move_label_α
n335_call_proc_staged_β:
                                                                              jmp   n331_call_proc_staged_β
.Lx689_0:               .quad            .Lx689_0_s
.Lx689_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n336_move_label_α:      lea              rax, [rip + n335_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n337_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n338_var_ref_α
n337_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx;         jmp   n339_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_integer_α:     mov              qword ptr [rsp + 3968], 3            # result
                        mov              rax, qword ptr [rip + .Lx695_0]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n340_lit_string_α
.Lx695_0:               .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:      mov              qword ptr [rsp + 3984], 2            # result
                        mov              dword ptr [rsp + 3988], 1
                        mov              rax, qword ptr [rip + .Lx696_0]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n341_call_builtin_prolog_α
.Lx696_0:               .quad            .Lx696_0_s
.Lx696_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n341_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n377_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n342_var_ref_α
n341_call_builtin_prolog_β:
                                                                              jmp   n377_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx;         jmp   n343_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:      mov              qword ptr [rsp + 3872], 2            # result
                        mov              dword ptr [rsp + 3876], 1
                        mov              rax, qword ptr [rip + .Lx700_0]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n344_var_ref_α
.Lx700_0:               .quad            .Lx700_0_s
.Lx700_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 3760], rax
                        mov              qword ptr [rsp + 3768], rdx;         jmp   n345_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx;         jmp   n346_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n346_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n376_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n347_call_builtin_prolog_α
n346_call_builtin_prolog_β:
                                                                              jmp   n376_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n347_call_builtin_prolog_α:
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
.Lx706_41:              lea              r9, [rsp + 3728]
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
.Lx706_54:              mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx
                        cmp              al, 104;                             je    n376_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n348_var_ref_α
n347_call_builtin_prolog_β:
                                                                              jmp   n376_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx;         jmp   n349_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx;         jmp   n350_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n350_call_builtin_prolog_α:
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
.Lx711_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx711_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx711_41
                        cmp              esi, 1;                              jne   .Lx711_55
                        mov              r8, rax;                             jmp   .Lx711_40
.Lx711_55:              cmp              esi, 2;                              jne   .Lx711_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx711_41
                        mov              r8, rax;                             jmp   .Lx711_40
.Lx711_56:              cmp              al, 72;                              jne   .Lx711_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx711_41
                        cmp              rax, r8;                             je    .Lx711_41
                        mov              r8, rax;                             jmp   .Lx711_40
.Lx711_41:              lea              r9, [rsp + 3648]
.Lx711_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx711_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx711_43
                        cmp              esi, 1;                              jne   .Lx711_57
                        mov              r9, rax;                             jmp   .Lx711_42
.Lx711_57:              cmp              esi, 2;                              jne   .Lx711_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx711_43
                        mov              r9, rax;                             jmp   .Lx711_42
.Lx711_58:              cmp              al, 72;                              jne   .Lx711_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx711_43
                        cmp              rax, r9;                             je    .Lx711_43
                        mov              r9, rax;                             jmp   .Lx711_42
.Lx711_43:              cmp              r8, r9;                              je    .Lx711_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx711_44
                        cmp              al, 104;                             je    .Lx711_44
                        cmp              al, 72;                              jne   .Lx711_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx711_44
                                                                              jmp   .Lx711_45
.Lx711_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx711_53
                        cmp              al, 104;                             je    .Lx711_53
                        cmp              al, 72;                              jne   .Lx711_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx711_53
                                                                              jmp   .Lx711_46
.Lx711_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx711_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx711_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx711_51
.Lx711_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx711_47
                        cmp              al, 104;                             je    .Lx711_47
                        cmp              al, 72;                              jne   .Lx711_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx711_47
                                                                              jmp   .Lx711_48
.Lx711_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx711_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx711_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx711_51
.Lx711_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx711_49
                        cmp              dl, 80;                              je    .Lx711_53
                                                                              jmp   .Lx711_52
.Lx711_49:              cmp              dl, 80;                              je    .Lx711_52
                        cmp              cl, 5;                               je    .Lx711_53
                        cmp              dl, 5;                               je    .Lx711_53
                        cmp              cl, 3;                               jne   .Lx711_50
                        cmp              dl, 3;                               jne   .Lx711_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx711_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx711_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx711_51
                                                                              jmp   .Lx711_52
.Lx711_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx711_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx711_53
.Lx711_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx711_54
.Lx711_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx711_54
.Lx711_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx711_54:              mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx
                        cmp              al, 104;                             je    n376_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n351_var_ref_α
n350_call_builtin_prolog_β:
                                                                              jmp   n376_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx;         jmp   n352_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:      mov              qword ptr [rsp + 3600], 2            # result
                        mov              dword ptr [rsp + 3604], 1
                        mov              rax, qword ptr [rip + .Lx714_0]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n353_lit_string_α
.Lx714_0:               .quad            .Lx714_0_s
.Lx714_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:      mov              qword ptr [rsp + 3376], 2            # result
                        mov              dword ptr [rsp + 3380], 1
                        mov              rax, qword ptr [rip + .Lx715_0]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n354_var_ref_α
.Lx715_0:               .quad            .Lx715_0_s
.Lx715_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx;         jmp   n355_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx;         jmp   n356_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n356_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n357_lit_string_α
n356_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:      mov              qword ptr [rsp + 3504], 2            # result
                        mov              dword ptr [rsp + 3508], 1
                        mov              rax, qword ptr [rip + .Lx721_0]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n358_var_ref_α
.Lx721_0:               .quad            .Lx721_0_s
.Lx721_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx;         jmp   n359_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx;         jmp   n360_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n360_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n361_call_builtin_prolog_α
n360_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n361_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n376_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n362_call_builtin_prolog_α
n361_call_builtin_prolog_β:
                                                                              jmp   n376_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n362_call_builtin_prolog_α:
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
.Lx728_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx728_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx728_41
                        cmp              esi, 1;                              jne   .Lx728_55
                        mov              r8, rax;                             jmp   .Lx728_40
.Lx728_55:              cmp              esi, 2;                              jne   .Lx728_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx728_41
                        mov              r8, rax;                             jmp   .Lx728_40
.Lx728_56:              cmp              al, 72;                              jne   .Lx728_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx728_41
                        cmp              rax, r8;                             je    .Lx728_41
                        mov              r8, rax;                             jmp   .Lx728_40
.Lx728_41:              lea              r9, [rsp + 3232]
.Lx728_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx728_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx728_43
                        cmp              esi, 1;                              jne   .Lx728_57
                        mov              r9, rax;                             jmp   .Lx728_42
.Lx728_57:              cmp              esi, 2;                              jne   .Lx728_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx728_43
                        mov              r9, rax;                             jmp   .Lx728_42
.Lx728_58:              cmp              al, 72;                              jne   .Lx728_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx728_43
                        cmp              rax, r9;                             je    .Lx728_43
                        mov              r9, rax;                             jmp   .Lx728_42
.Lx728_43:              cmp              r8, r9;                              je    .Lx728_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx728_44
                        cmp              al, 104;                             je    .Lx728_44
                        cmp              al, 72;                              jne   .Lx728_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx728_44
                                                                              jmp   .Lx728_45
.Lx728_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx728_53
                        cmp              al, 104;                             je    .Lx728_53
                        cmp              al, 72;                              jne   .Lx728_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx728_53
                                                                              jmp   .Lx728_46
.Lx728_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx728_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx728_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx728_51
.Lx728_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx728_47
                        cmp              al, 104;                             je    .Lx728_47
                        cmp              al, 72;                              jne   .Lx728_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx728_47
                                                                              jmp   .Lx728_48
.Lx728_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx728_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx728_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx728_51
.Lx728_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx728_49
                        cmp              dl, 80;                              je    .Lx728_53
                                                                              jmp   .Lx728_52
.Lx728_49:              cmp              dl, 80;                              je    .Lx728_52
                        cmp              cl, 5;                               je    .Lx728_53
                        cmp              dl, 5;                               je    .Lx728_53
                        cmp              cl, 3;                               jne   .Lx728_50
                        cmp              dl, 3;                               jne   .Lx728_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx728_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx728_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx728_51
                                                                              jmp   .Lx728_52
.Lx728_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx728_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx728_53
.Lx728_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx728_54
.Lx728_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx728_54
.Lx728_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx728_54:              mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              al, 104;                             je    n376_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n363_cut_α
n362_call_builtin_prolog_β:
                                                                              jmp   n376_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n363_cut_α:                                                                   jmp   n364_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 3184], rax
                        mov              qword ptr [rsp + 3192], rdx;         jmp   n365_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3176], rax
                        .section         .rodata
.Lrkfn733:              .string          "$tt_integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn733]
                        lea              rsi, [rsp + 3168]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n366_var_ref_α
n365_call_builtin_prolog_β:
                                                                              jmp   n476_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8208]
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx;         jmp   n367_var_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             mov              rax, qword ptr [rsp + 8128]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 8136]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n368_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_integer_α:     mov              qword ptr [rsp + 3136], 3            # result
                        mov              rax, qword ptr [rip + .Lx738_0]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n369_call_builtin_prolog_α
.Lx738_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n369_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n370_call_builtin_prolog_α
n369_call_builtin_prolog_β:
                                                                              jmp   n476_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n370_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n371_var_ref_α
n370_call_builtin_prolog_β:
                                                                              jmp   n476_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n371_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n372_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n372_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n373_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n373_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8192]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n374_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n374_call_proc_staged_α:
                        lea              rsi, [rsp + 2944]
                        lea              rdx, [rsp + 2960]
                        lea              rcx, [rsp + 2976]
                        call             d$2F3_dcα;                           jmp   .Lx748_2
.Lx748_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx748_29
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
.Lx748_29:              mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                                                                              jmp   n375_move_label_α
n374_call_proc_staged_β:
                                                                              jmp   n476_call_builtin_prolog_α
.Lx748_0:               .quad            .Lx748_0_s
.Lx748_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n375_move_label_α:      lea              rax, [rip + n374_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n376_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n377_var_ref_α
n376_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n377_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx;         jmp   n378_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_integer_α:     mov              qword ptr [rsp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n379_lit_string_α
.Lx754_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:      mov              qword ptr [rsp + 2816], 2            # result
                        mov              dword ptr [rsp + 2820], 1
                        mov              rax, qword ptr [rip + .Lx755_0]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n380_call_builtin_prolog_α
.Lx755_0:               .quad            .Lx755_0_s
.Lx755_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n380_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n401_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n381_var_ref_α
n380_call_builtin_prolog_β:
                                                                              jmp   n401_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n381_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n382_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:      mov              qword ptr [rsp + 2704], 2            # result
                        mov              dword ptr [rsp + 2708], 1
                        mov              rax, qword ptr [rip + .Lx759_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n383_var_ref_α
.Lx759_0:               .quad            .Lx759_0_s
.Lx759_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n384_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n384_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n400_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n385_call_builtin_prolog_α
n384_call_builtin_prolog_β:
                                                                              jmp   n400_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n385_call_builtin_prolog_α:
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
.Lx763_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx763_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx763_41
                        cmp              esi, 1;                              jne   .Lx763_55
                        mov              r8, rax;                             jmp   .Lx763_40
.Lx763_55:              cmp              esi, 2;                              jne   .Lx763_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx763_41
                        mov              r8, rax;                             jmp   .Lx763_40
.Lx763_56:              cmp              al, 72;                              jne   .Lx763_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx763_41
                        cmp              rax, r8;                             je    .Lx763_41
                        mov              r8, rax;                             jmp   .Lx763_40
.Lx763_41:              lea              r9, [rsp + 2592]
.Lx763_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx763_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx763_43
                        cmp              esi, 1;                              jne   .Lx763_57
                        mov              r9, rax;                             jmp   .Lx763_42
.Lx763_57:              cmp              esi, 2;                              jne   .Lx763_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx763_43
                        mov              r9, rax;                             jmp   .Lx763_42
.Lx763_58:              cmp              al, 72;                              jne   .Lx763_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx763_43
                        cmp              rax, r9;                             je    .Lx763_43
                        mov              r9, rax;                             jmp   .Lx763_42
.Lx763_43:              cmp              r8, r9;                              je    .Lx763_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx763_44
                        cmp              al, 104;                             je    .Lx763_44
                        cmp              al, 72;                              jne   .Lx763_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx763_44
                                                                              jmp   .Lx763_45
.Lx763_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx763_53
                        cmp              al, 104;                             je    .Lx763_53
                        cmp              al, 72;                              jne   .Lx763_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx763_53
                                                                              jmp   .Lx763_46
.Lx763_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx763_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx763_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx763_51
.Lx763_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx763_47
                        cmp              al, 104;                             je    .Lx763_47
                        cmp              al, 72;                              jne   .Lx763_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx763_47
                                                                              jmp   .Lx763_48
.Lx763_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx763_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx763_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx763_51
.Lx763_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx763_49
                        cmp              dl, 80;                              je    .Lx763_53
                                                                              jmp   .Lx763_52
.Lx763_49:              cmp              dl, 80;                              je    .Lx763_52
                        cmp              cl, 5;                               je    .Lx763_53
                        cmp              dl, 5;                               je    .Lx763_53
                        cmp              cl, 3;                               jne   .Lx763_50
                        cmp              dl, 3;                               jne   .Lx763_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx763_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx763_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx763_51
                                                                              jmp   .Lx763_52
.Lx763_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx763_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx763_53
.Lx763_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx763_54
.Lx763_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx763_54
.Lx763_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx763_54:              mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                        cmp              al, 104;                             je    n400_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n386_var_ref_α
n385_call_builtin_prolog_β:
                                                                              jmp   n400_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n387_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n387_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx;         jmp   n388_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n388_call_builtin_prolog_α:
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
.Lx768_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx768_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx768_41
                        cmp              esi, 1;                              jne   .Lx768_55
                        mov              r8, rax;                             jmp   .Lx768_40
.Lx768_55:              cmp              esi, 2;                              jne   .Lx768_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx768_41
                        mov              r8, rax;                             jmp   .Lx768_40
.Lx768_56:              cmp              al, 72;                              jne   .Lx768_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx768_41
                        cmp              rax, r8;                             je    .Lx768_41
                        mov              r8, rax;                             jmp   .Lx768_40
.Lx768_41:              lea              r9, [rsp + 2512]
.Lx768_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx768_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx768_43
                        cmp              esi, 1;                              jne   .Lx768_57
                        mov              r9, rax;                             jmp   .Lx768_42
.Lx768_57:              cmp              esi, 2;                              jne   .Lx768_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx768_43
                        mov              r9, rax;                             jmp   .Lx768_42
.Lx768_58:              cmp              al, 72;                              jne   .Lx768_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx768_43
                        cmp              rax, r9;                             je    .Lx768_43
                        mov              r9, rax;                             jmp   .Lx768_42
.Lx768_43:              cmp              r8, r9;                              je    .Lx768_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx768_44
                        cmp              al, 104;                             je    .Lx768_44
                        cmp              al, 72;                              jne   .Lx768_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx768_44
                                                                              jmp   .Lx768_45
.Lx768_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx768_53
                        cmp              al, 104;                             je    .Lx768_53
                        cmp              al, 72;                              jne   .Lx768_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx768_53
                                                                              jmp   .Lx768_46
.Lx768_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx768_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx768_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx768_51
.Lx768_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx768_47
                        cmp              al, 104;                             je    .Lx768_47
                        cmp              al, 72;                              jne   .Lx768_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx768_47
                                                                              jmp   .Lx768_48
.Lx768_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx768_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx768_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx768_51
.Lx768_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx768_49
                        cmp              dl, 80;                              je    .Lx768_53
                                                                              jmp   .Lx768_52
.Lx768_49:              cmp              dl, 80;                              je    .Lx768_52
                        cmp              cl, 5;                               je    .Lx768_53
                        cmp              dl, 5;                               je    .Lx768_53
                        cmp              cl, 3;                               jne   .Lx768_50
                        cmp              dl, 3;                               jne   .Lx768_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx768_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx768_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx768_51
                                                                              jmp   .Lx768_52
.Lx768_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx768_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx768_53
.Lx768_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx768_54
.Lx768_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx768_54
.Lx768_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx768_54:              mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              al, 104;                             je    n400_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n389_var_ref_α
n388_call_builtin_prolog_β:
                                                                              jmp   n400_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n389_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx;         jmp   n390_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:      mov              qword ptr [rsp + 2464], 2            # result
                        mov              dword ptr [rsp + 2468], 1
                        mov              rax, qword ptr [rip + .Lx771_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n391_var_ref_α
.Lx771_0:               .quad            .Lx771_0_s
.Lx771_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n391_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx;         jmp   n392_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n392_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n400_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n393_call_builtin_prolog_α
n392_call_builtin_prolog_β:
                                                                              jmp   n400_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n393_call_builtin_prolog_α:
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
.Lx775_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx775_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx775_41
                        cmp              esi, 1;                              jne   .Lx775_55
                        mov              r8, rax;                             jmp   .Lx775_40
.Lx775_55:              cmp              esi, 2;                              jne   .Lx775_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx775_41
                        mov              r8, rax;                             jmp   .Lx775_40
.Lx775_56:              cmp              al, 72;                              jne   .Lx775_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx775_41
                        cmp              rax, r8;                             je    .Lx775_41
                        mov              r8, rax;                             jmp   .Lx775_40
.Lx775_41:              lea              r9, [rsp + 2352]
.Lx775_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx775_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx775_43
                        cmp              esi, 1;                              jne   .Lx775_57
                        mov              r9, rax;                             jmp   .Lx775_42
.Lx775_57:              cmp              esi, 2;                              jne   .Lx775_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx775_43
                        mov              r9, rax;                             jmp   .Lx775_42
.Lx775_58:              cmp              al, 72;                              jne   .Lx775_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx775_43
                        cmp              rax, r9;                             je    .Lx775_43
                        mov              r9, rax;                             jmp   .Lx775_42
.Lx775_43:              cmp              r8, r9;                              je    .Lx775_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx775_44
                        cmp              al, 104;                             je    .Lx775_44
                        cmp              al, 72;                              jne   .Lx775_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx775_44
                                                                              jmp   .Lx775_45
.Lx775_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx775_53
                        cmp              al, 104;                             je    .Lx775_53
                        cmp              al, 72;                              jne   .Lx775_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx775_53
                                                                              jmp   .Lx775_46
.Lx775_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx775_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx775_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx775_51
.Lx775_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx775_47
                        cmp              al, 104;                             je    .Lx775_47
                        cmp              al, 72;                              jne   .Lx775_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx775_47
                                                                              jmp   .Lx775_48
.Lx775_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx775_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx775_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx775_51
.Lx775_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx775_49
                        cmp              dl, 80;                              je    .Lx775_53
                                                                              jmp   .Lx775_52
.Lx775_49:              cmp              dl, 80;                              je    .Lx775_52
                        cmp              cl, 5;                               je    .Lx775_53
                        cmp              dl, 5;                               je    .Lx775_53
                        cmp              cl, 3;                               jne   .Lx775_50
                        cmp              dl, 3;                               jne   .Lx775_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx775_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx775_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx775_51
                                                                              jmp   .Lx775_52
.Lx775_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx775_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx775_53
.Lx775_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx775_54
.Lx775_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx775_54
.Lx775_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx775_54:              mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              al, 104;                             je    n400_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n394_cut_α
n393_call_builtin_prolog_β:
                                                                              jmp   n400_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n394_cut_α:                                                                   jmp   n395_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n395_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n396_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n396_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n397_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n397_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n398_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n398_call_proc_staged_α:
                        lea              rsi, [rsp + 2272]
                        lea              rdx, [rsp + 2288]
                        lea              rcx, [rsp + 2304]
                        call             d$2F3_dcα;                           jmp   .Lx784_2
.Lx784_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx784_29
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
.Lx784_29:              mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                                                                              jmp   n399_move_label_α
n398_call_proc_staged_β:
                                                                              jmp   n476_call_builtin_prolog_α
.Lx784_0:               .quad            .Lx784_0_s
.Lx784_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n399_move_label_α:      lea              rax, [rip + n398_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n400_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n401_var_ref_α
n400_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n401_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n402_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_integer_α:     mov              qword ptr [rsp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Lx790_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n403_lit_string_α
.Lx790_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_string_α:      mov              qword ptr [rsp + 2144], 2            # result
                        mov              dword ptr [rsp + 2148], 3
                        mov              rax, qword ptr [rip + .Lx791_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n404_call_builtin_prolog_α
.Lx791_0:               .quad            .Lx791_0_s
.Lx791_0_s:             .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n404_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n428_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n405_var_ref_α
n404_call_builtin_prolog_β:
                                                                              jmp   n428_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n405_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n406_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:      mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 3
                        mov              rax, qword ptr [rip + .Lx795_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n407_var_ref_α
.Lx795_0:               .quad            .Lx795_0_s
.Lx795_0_s:             .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n407_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n408_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n408_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n427_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n409_call_builtin_prolog_α
n408_call_builtin_prolog_β:
                                                                              jmp   n427_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n409_call_builtin_prolog_α:
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
.Lx799_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx799_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx799_41
                        cmp              esi, 1;                              jne   .Lx799_55
                        mov              r8, rax;                             jmp   .Lx799_40
.Lx799_55:              cmp              esi, 2;                              jne   .Lx799_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx799_41
                        mov              r8, rax;                             jmp   .Lx799_40
.Lx799_56:              cmp              al, 72;                              jne   .Lx799_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx799_41
                        cmp              rax, r8;                             je    .Lx799_41
                        mov              r8, rax;                             jmp   .Lx799_40
.Lx799_41:              lea              r9, [rsp + 1920]
.Lx799_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx799_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx799_43
                        cmp              esi, 1;                              jne   .Lx799_57
                        mov              r9, rax;                             jmp   .Lx799_42
.Lx799_57:              cmp              esi, 2;                              jne   .Lx799_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx799_43
                        mov              r9, rax;                             jmp   .Lx799_42
.Lx799_58:              cmp              al, 72;                              jne   .Lx799_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx799_43
                        cmp              rax, r9;                             je    .Lx799_43
                        mov              r9, rax;                             jmp   .Lx799_42
.Lx799_43:              cmp              r8, r9;                              je    .Lx799_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx799_44
                        cmp              al, 104;                             je    .Lx799_44
                        cmp              al, 72;                              jne   .Lx799_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx799_44
                                                                              jmp   .Lx799_45
.Lx799_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx799_53
                        cmp              al, 104;                             je    .Lx799_53
                        cmp              al, 72;                              jne   .Lx799_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx799_53
                                                                              jmp   .Lx799_46
.Lx799_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx799_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx799_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx799_51
.Lx799_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx799_47
                        cmp              al, 104;                             je    .Lx799_47
                        cmp              al, 72;                              jne   .Lx799_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx799_47
                                                                              jmp   .Lx799_48
.Lx799_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx799_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx799_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx799_51
.Lx799_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx799_49
                        cmp              dl, 80;                              je    .Lx799_53
                                                                              jmp   .Lx799_52
.Lx799_49:              cmp              dl, 80;                              je    .Lx799_52
                        cmp              cl, 5;                               je    .Lx799_53
                        cmp              dl, 5;                               je    .Lx799_53
                        cmp              cl, 3;                               jne   .Lx799_50
                        cmp              dl, 3;                               jne   .Lx799_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx799_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx799_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx799_51
                                                                              jmp   .Lx799_52
.Lx799_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx799_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx799_53
.Lx799_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx799_54
.Lx799_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx799_54
.Lx799_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx799_54:              mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    n427_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n410_var_ref_α
n409_call_builtin_prolog_β:
                                                                              jmp   n427_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n410_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n411_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n411_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx;         jmp   n412_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n412_call_builtin_prolog_α:
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
.Lx804_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx804_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx804_41
                        cmp              esi, 1;                              jne   .Lx804_55
                        mov              r8, rax;                             jmp   .Lx804_40
.Lx804_55:              cmp              esi, 2;                              jne   .Lx804_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx804_41
                        mov              r8, rax;                             jmp   .Lx804_40
.Lx804_56:              cmp              al, 72;                              jne   .Lx804_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx804_41
                        cmp              rax, r8;                             je    .Lx804_41
                        mov              r8, rax;                             jmp   .Lx804_40
.Lx804_41:              lea              r9, [rsp + 1840]
.Lx804_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx804_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx804_43
                        cmp              esi, 1;                              jne   .Lx804_57
                        mov              r9, rax;                             jmp   .Lx804_42
.Lx804_57:              cmp              esi, 2;                              jne   .Lx804_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx804_43
                        mov              r9, rax;                             jmp   .Lx804_42
.Lx804_58:              cmp              al, 72;                              jne   .Lx804_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx804_43
                        cmp              rax, r9;                             je    .Lx804_43
                        mov              r9, rax;                             jmp   .Lx804_42
.Lx804_43:              cmp              r8, r9;                              je    .Lx804_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx804_44
                        cmp              al, 104;                             je    .Lx804_44
                        cmp              al, 72;                              jne   .Lx804_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx804_44
                                                                              jmp   .Lx804_45
.Lx804_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx804_53
                        cmp              al, 104;                             je    .Lx804_53
                        cmp              al, 72;                              jne   .Lx804_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx804_53
                                                                              jmp   .Lx804_46
.Lx804_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx804_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx804_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx804_51
.Lx804_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx804_47
                        cmp              al, 104;                             je    .Lx804_47
                        cmp              al, 72;                              jne   .Lx804_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx804_47
                                                                              jmp   .Lx804_48
.Lx804_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx804_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx804_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx804_51
.Lx804_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx804_49
                        cmp              dl, 80;                              je    .Lx804_53
                                                                              jmp   .Lx804_52
.Lx804_49:              cmp              dl, 80;                              je    .Lx804_52
                        cmp              cl, 5;                               je    .Lx804_53
                        cmp              dl, 5;                               je    .Lx804_53
                        cmp              cl, 3;                               jne   .Lx804_50
                        cmp              dl, 3;                               jne   .Lx804_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx804_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx804_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx804_51
                                                                              jmp   .Lx804_52
.Lx804_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx804_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx804_53
.Lx804_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx804_54
.Lx804_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx804_54
.Lx804_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx804_54:              mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              al, 104;                             je    n427_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n413_var_ref_α
n412_call_builtin_prolog_β:
                                                                              jmp   n427_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n413_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n414_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:      mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 1
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n415_lit_string_α
.Lx807_0:               .quad            .Lx807_0_s
.Lx807_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_string_α:      mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 3
                        mov              rax, qword ptr [rip + .Lx808_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n416_var_ref_α
.Lx808_0:               .quad            .Lx808_0_s
.Lx808_0_s:             .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n416_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n417_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n417_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n418_var_ref_α
n417_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n418_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n419_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n419_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n427_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n420_call_builtin_prolog_α
n419_call_builtin_prolog_β:
                                                                              jmp   n427_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n420_call_builtin_prolog_α:
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
.Lx815_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx815_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx815_41
                        cmp              esi, 1;                              jne   .Lx815_55
                        mov              r8, rax;                             jmp   .Lx815_40
.Lx815_55:              cmp              esi, 2;                              jne   .Lx815_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx815_41
                        mov              r8, rax;                             jmp   .Lx815_40
.Lx815_56:              cmp              al, 72;                              jne   .Lx815_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx815_41
                        cmp              rax, r8;                             je    .Lx815_41
                        mov              r8, rax;                             jmp   .Lx815_40
.Lx815_41:              lea              r9, [rsp + 1568]
.Lx815_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx815_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx815_43
                        cmp              esi, 1;                              jne   .Lx815_57
                        mov              r9, rax;                             jmp   .Lx815_42
.Lx815_57:              cmp              esi, 2;                              jne   .Lx815_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx815_43
                        mov              r9, rax;                             jmp   .Lx815_42
.Lx815_58:              cmp              al, 72;                              jne   .Lx815_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx815_43
                        cmp              rax, r9;                             je    .Lx815_43
                        mov              r9, rax;                             jmp   .Lx815_42
.Lx815_43:              cmp              r8, r9;                              je    .Lx815_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx815_44
                        cmp              al, 104;                             je    .Lx815_44
                        cmp              al, 72;                              jne   .Lx815_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx815_44
                                                                              jmp   .Lx815_45
.Lx815_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx815_53
                        cmp              al, 104;                             je    .Lx815_53
                        cmp              al, 72;                              jne   .Lx815_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx815_53
                                                                              jmp   .Lx815_46
.Lx815_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx815_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx815_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx815_51
.Lx815_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx815_47
                        cmp              al, 104;                             je    .Lx815_47
                        cmp              al, 72;                              jne   .Lx815_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx815_47
                                                                              jmp   .Lx815_48
.Lx815_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx815_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx815_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx815_51
.Lx815_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx815_49
                        cmp              dl, 80;                              je    .Lx815_53
                                                                              jmp   .Lx815_52
.Lx815_49:              cmp              dl, 80;                              je    .Lx815_52
                        cmp              cl, 5;                               je    .Lx815_53
                        cmp              dl, 5;                               je    .Lx815_53
                        cmp              cl, 3;                               jne   .Lx815_50
                        cmp              dl, 3;                               jne   .Lx815_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx815_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx815_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx815_51
                                                                              jmp   .Lx815_52
.Lx815_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx815_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx815_53
.Lx815_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx815_54
.Lx815_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx815_54
.Lx815_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx815_54:              mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    n427_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n421_cut_α
n420_call_builtin_prolog_β:
                                                                              jmp   n427_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n421_cut_α:                                                                   jmp   n422_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n422_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n423_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n423_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n424_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n424_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n425_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n425_call_proc_staged_α:
                        lea              rsi, [rsp + 1488]
                        lea              rdx, [rsp + 1504]
                        lea              rcx, [rsp + 1520]
                        call             d$2F3_dcα;                           jmp   .Lx824_2
.Lx824_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx824_29
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
.Lx824_29:              mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                                                                              jmp   n426_move_label_α
n425_call_proc_staged_β:
                                                                              jmp   n476_call_builtin_prolog_α
.Lx824_0:               .quad            .Lx824_0_s
.Lx824_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n426_move_label_α:      lea              rax, [rip + n425_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n427_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n428_var_ref_α
n427_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n428_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n429_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_integer_α:     mov              qword ptr [rsp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Lx830_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n430_lit_string_α
.Lx830_0:               .quad            260
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_string_α:      mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 3
                        mov              rax, qword ptr [rip + .Lx831_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n431_call_builtin_prolog_α
.Lx831_0:               .quad            .Lx831_0_s
.Lx831_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n431_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n453_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n432_var_ref_α
n431_call_builtin_prolog_β:
                                                                              jmp   n453_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n433_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:      mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 3
                        mov              rax, qword ptr [rip + .Lx835_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n434_var_ref_α
.Lx835_0:               .quad            .Lx835_0_s
.Lx835_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n434_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n435_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n435_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n452_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n436_call_builtin_prolog_α
n435_call_builtin_prolog_β:
                                                                              jmp   n452_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n436_call_builtin_prolog_α:
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
.Lx839_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx839_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx839_41
                        cmp              esi, 1;                              jne   .Lx839_55
                        mov              r8, rax;                             jmp   .Lx839_40
.Lx839_55:              cmp              esi, 2;                              jne   .Lx839_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx839_41
                        mov              r8, rax;                             jmp   .Lx839_40
.Lx839_56:              cmp              al, 72;                              jne   .Lx839_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx839_41
                        cmp              rax, r8;                             je    .Lx839_41
                        mov              r8, rax;                             jmp   .Lx839_40
.Lx839_41:              lea              r9, [rsp + 1136]
.Lx839_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx839_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx839_43
                        cmp              esi, 1;                              jne   .Lx839_57
                        mov              r9, rax;                             jmp   .Lx839_42
.Lx839_57:              cmp              esi, 2;                              jne   .Lx839_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx839_43
                        mov              r9, rax;                             jmp   .Lx839_42
.Lx839_58:              cmp              al, 72;                              jne   .Lx839_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx839_43
                        cmp              rax, r9;                             je    .Lx839_43
                        mov              r9, rax;                             jmp   .Lx839_42
.Lx839_43:              cmp              r8, r9;                              je    .Lx839_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx839_44
                        cmp              al, 104;                             je    .Lx839_44
                        cmp              al, 72;                              jne   .Lx839_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx839_44
                                                                              jmp   .Lx839_45
.Lx839_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx839_53
                        cmp              al, 104;                             je    .Lx839_53
                        cmp              al, 72;                              jne   .Lx839_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx839_53
                                                                              jmp   .Lx839_46
.Lx839_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx839_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx839_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx839_51
.Lx839_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx839_47
                        cmp              al, 104;                             je    .Lx839_47
                        cmp              al, 72;                              jne   .Lx839_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx839_47
                                                                              jmp   .Lx839_48
.Lx839_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx839_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx839_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx839_51
.Lx839_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx839_49
                        cmp              dl, 80;                              je    .Lx839_53
                                                                              jmp   .Lx839_52
.Lx839_49:              cmp              dl, 80;                              je    .Lx839_52
                        cmp              cl, 5;                               je    .Lx839_53
                        cmp              dl, 5;                               je    .Lx839_53
                        cmp              cl, 3;                               jne   .Lx839_50
                        cmp              dl, 3;                               jne   .Lx839_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx839_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx839_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx839_51
                                                                              jmp   .Lx839_52
.Lx839_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx839_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx839_53
.Lx839_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx839_54
.Lx839_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx839_54
.Lx839_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx839_54:              mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n452_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n437_var_ref_α
n436_call_builtin_prolog_β:
                                                                              jmp   n452_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n437_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n438_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n438_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n439_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n439_call_builtin_prolog_α:
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
.Lx844_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx844_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx844_41
                        cmp              esi, 1;                              jne   .Lx844_55
                        mov              r8, rax;                             jmp   .Lx844_40
.Lx844_55:              cmp              esi, 2;                              jne   .Lx844_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx844_41
                        mov              r8, rax;                             jmp   .Lx844_40
.Lx844_56:              cmp              al, 72;                              jne   .Lx844_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx844_41
                        cmp              rax, r8;                             je    .Lx844_41
                        mov              r8, rax;                             jmp   .Lx844_40
.Lx844_41:              lea              r9, [rsp + 1056]
.Lx844_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx844_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx844_43
                        cmp              esi, 1;                              jne   .Lx844_57
                        mov              r9, rax;                             jmp   .Lx844_42
.Lx844_57:              cmp              esi, 2;                              jne   .Lx844_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx844_43
                        mov              r9, rax;                             jmp   .Lx844_42
.Lx844_58:              cmp              al, 72;                              jne   .Lx844_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx844_43
                        cmp              rax, r9;                             je    .Lx844_43
                        mov              r9, rax;                             jmp   .Lx844_42
.Lx844_43:              cmp              r8, r9;                              je    .Lx844_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx844_44
                        cmp              al, 104;                             je    .Lx844_44
                        cmp              al, 72;                              jne   .Lx844_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx844_44
                                                                              jmp   .Lx844_45
.Lx844_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx844_53
                        cmp              al, 104;                             je    .Lx844_53
                        cmp              al, 72;                              jne   .Lx844_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx844_53
                                                                              jmp   .Lx844_46
.Lx844_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx844_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx844_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx844_51
.Lx844_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx844_47
                        cmp              al, 104;                             je    .Lx844_47
                        cmp              al, 72;                              jne   .Lx844_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx844_47
                                                                              jmp   .Lx844_48
.Lx844_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx844_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx844_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx844_51
.Lx844_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx844_49
                        cmp              dl, 80;                              je    .Lx844_53
                                                                              jmp   .Lx844_52
.Lx844_49:              cmp              dl, 80;                              je    .Lx844_52
                        cmp              cl, 5;                               je    .Lx844_53
                        cmp              dl, 5;                               je    .Lx844_53
                        cmp              cl, 3;                               jne   .Lx844_50
                        cmp              dl, 3;                               jne   .Lx844_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx844_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx844_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx844_51
                                                                              jmp   .Lx844_52
.Lx844_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx844_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx844_53
.Lx844_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx844_54
.Lx844_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx844_54
.Lx844_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx844_54:              mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n452_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n440_var_ref_α
n439_call_builtin_prolog_β:
                                                                              jmp   n452_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n441_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_string_α:      mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx847_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n442_var_ref_α
.Lx847_0:               .quad            .Lx847_0_s
.Lx847_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n443_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n444_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n444_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n452_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n445_call_builtin_prolog_α
n444_call_builtin_prolog_β:
                                                                              jmp   n452_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n445_call_builtin_prolog_α:
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
.Lx853_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx853_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx853_41
                        cmp              esi, 1;                              jne   .Lx853_55
                        mov              r8, rax;                             jmp   .Lx853_40
.Lx853_55:              cmp              esi, 2;                              jne   .Lx853_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx853_41
                        mov              r8, rax;                             jmp   .Lx853_40
.Lx853_56:              cmp              al, 72;                              jne   .Lx853_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx853_41
                        cmp              rax, r8;                             je    .Lx853_41
                        mov              r8, rax;                             jmp   .Lx853_40
.Lx853_41:              lea              r9, [rsp + 864]
.Lx853_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx853_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx853_43
                        cmp              esi, 1;                              jne   .Lx853_57
                        mov              r9, rax;                             jmp   .Lx853_42
.Lx853_57:              cmp              esi, 2;                              jne   .Lx853_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx853_43
                        mov              r9, rax;                             jmp   .Lx853_42
.Lx853_58:              cmp              al, 72;                              jne   .Lx853_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx853_43
                        cmp              rax, r9;                             je    .Lx853_43
                        mov              r9, rax;                             jmp   .Lx853_42
.Lx853_43:              cmp              r8, r9;                              je    .Lx853_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx853_44
                        cmp              al, 104;                             je    .Lx853_44
                        cmp              al, 72;                              jne   .Lx853_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx853_44
                                                                              jmp   .Lx853_45
.Lx853_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx853_53
                        cmp              al, 104;                             je    .Lx853_53
                        cmp              al, 72;                              jne   .Lx853_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx853_53
                                                                              jmp   .Lx853_46
.Lx853_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx853_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx853_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx853_51
.Lx853_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx853_47
                        cmp              al, 104;                             je    .Lx853_47
                        cmp              al, 72;                              jne   .Lx853_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx853_47
                                                                              jmp   .Lx853_48
.Lx853_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx853_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx853_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx853_51
.Lx853_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx853_49
                        cmp              dl, 80;                              je    .Lx853_53
                                                                              jmp   .Lx853_52
.Lx853_49:              cmp              dl, 80;                              je    .Lx853_52
                        cmp              cl, 5;                               je    .Lx853_53
                        cmp              dl, 5;                               je    .Lx853_53
                        cmp              cl, 3;                               jne   .Lx853_50
                        cmp              dl, 3;                               jne   .Lx853_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx853_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx853_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx853_51
                                                                              jmp   .Lx853_52
.Lx853_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx853_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx853_53
.Lx853_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx853_54
.Lx853_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx853_54
.Lx853_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx853_54:              mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n452_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n446_cut_α
n445_call_builtin_prolog_β:
                                                                              jmp   n452_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n446_cut_α:                                                                   jmp   n447_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n447_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n448_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n448_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8176]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n449_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n450_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n450_call_proc_staged_α:
                        lea              rsi, [rsp + 784]
                        lea              rdx, [rsp + 800]
                        lea              rcx, [rsp + 816]
                        call             d$2F3_dcα;                           jmp   .Lx862_2
.Lx862_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx862_29
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
.Lx862_29:              mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                                                                              jmp   n451_move_label_α
n450_call_proc_staged_β:
                                                                              jmp   n476_call_builtin_prolog_α
.Lx862_0:               .quad            .Lx862_0_s
.Lx862_0_s:             .string          "d/3"
#-----------------------------------------------------------------------------------------------------------------------
n451_move_label_α:      lea              rax, [rip + n450_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n452_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n453_var_ref_α
n452_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n453_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n454_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n454_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8160]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n455_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n455_call_builtin_prolog_α:
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
.Lx870_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx870_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx870_41
                        cmp              esi, 1;                              jne   .Lx870_55
                        mov              r8, rax;                             jmp   .Lx870_40
.Lx870_55:              cmp              esi, 2;                              jne   .Lx870_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx870_41
                        mov              r8, rax;                             jmp   .Lx870_40
.Lx870_56:              cmp              al, 72;                              jne   .Lx870_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx870_41
                        cmp              rax, r8;                             je    .Lx870_41
                        mov              r8, rax;                             jmp   .Lx870_40
.Lx870_41:              lea              r9, [rsp + 624]
.Lx870_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx870_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx870_43
                        cmp              esi, 1;                              jne   .Lx870_57
                        mov              r9, rax;                             jmp   .Lx870_42
.Lx870_57:              cmp              esi, 2;                              jne   .Lx870_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx870_43
                        mov              r9, rax;                             jmp   .Lx870_42
.Lx870_58:              cmp              al, 72;                              jne   .Lx870_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx870_43
                        cmp              rax, r9;                             je    .Lx870_43
                        mov              r9, rax;                             jmp   .Lx870_42
.Lx870_43:              cmp              r8, r9;                              je    .Lx870_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx870_44
                        cmp              al, 104;                             je    .Lx870_44
                        cmp              al, 72;                              jne   .Lx870_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx870_44
                                                                              jmp   .Lx870_45
.Lx870_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx870_53
                        cmp              al, 104;                             je    .Lx870_53
                        cmp              al, 72;                              jne   .Lx870_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx870_53
                                                                              jmp   .Lx870_46
.Lx870_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx870_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx870_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx870_51
.Lx870_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx870_47
                        cmp              al, 104;                             je    .Lx870_47
                        cmp              al, 72;                              jne   .Lx870_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx870_47
                                                                              jmp   .Lx870_48
.Lx870_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx870_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx870_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx870_51
.Lx870_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx870_49
                        cmp              dl, 80;                              je    .Lx870_53
                                                                              jmp   .Lx870_52
.Lx870_49:              cmp              dl, 80;                              je    .Lx870_52
                        cmp              cl, 5;                               je    .Lx870_53
                        cmp              dl, 5;                               je    .Lx870_53
                        cmp              cl, 3;                               jne   .Lx870_50
                        cmp              dl, 3;                               jne   .Lx870_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx870_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx870_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx870_51
                                                                              jmp   .Lx870_52
.Lx870_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx870_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx870_53
.Lx870_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx870_54
.Lx870_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx870_54
.Lx870_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx870_54:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n464_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n456_var_ref_α
n455_call_builtin_prolog_β:
                                                                              jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n457_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8160]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n458_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n458_call_builtin_prolog_α:
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
.Lx875_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx875_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx875_41
                        cmp              esi, 1;                              jne   .Lx875_55
                        mov              r8, rax;                             jmp   .Lx875_40
.Lx875_55:              cmp              esi, 2;                              jne   .Lx875_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx875_41
                        mov              r8, rax;                             jmp   .Lx875_40
.Lx875_56:              cmp              al, 72;                              jne   .Lx875_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx875_41
                        cmp              rax, r8;                             je    .Lx875_41
                        mov              r8, rax;                             jmp   .Lx875_40
.Lx875_41:              lea              r9, [rsp + 544]
.Lx875_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx875_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx875_43
                        cmp              esi, 1;                              jne   .Lx875_57
                        mov              r9, rax;                             jmp   .Lx875_42
.Lx875_57:              cmp              esi, 2;                              jne   .Lx875_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx875_43
                        mov              r9, rax;                             jmp   .Lx875_42
.Lx875_58:              cmp              al, 72;                              jne   .Lx875_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx875_43
                        cmp              rax, r9;                             je    .Lx875_43
                        mov              r9, rax;                             jmp   .Lx875_42
.Lx875_43:              cmp              r8, r9;                              je    .Lx875_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx875_44
                        cmp              al, 104;                             je    .Lx875_44
                        cmp              al, 72;                              jne   .Lx875_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx875_44
                                                                              jmp   .Lx875_45
.Lx875_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx875_53
                        cmp              al, 104;                             je    .Lx875_53
                        cmp              al, 72;                              jne   .Lx875_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx875_53
                                                                              jmp   .Lx875_46
.Lx875_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx875_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx875_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx875_51
.Lx875_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx875_47
                        cmp              al, 104;                             je    .Lx875_47
                        cmp              al, 72;                              jne   .Lx875_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx875_47
                                                                              jmp   .Lx875_48
.Lx875_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx875_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx875_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx875_51
.Lx875_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx875_49
                        cmp              dl, 80;                              je    .Lx875_53
                                                                              jmp   .Lx875_52
.Lx875_49:              cmp              dl, 80;                              je    .Lx875_52
                        cmp              cl, 5;                               je    .Lx875_53
                        cmp              dl, 5;                               je    .Lx875_53
                        cmp              cl, 3;                               jne   .Lx875_50
                        cmp              dl, 3;                               jne   .Lx875_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx875_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx875_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx875_51
                                                                              jmp   .Lx875_52
.Lx875_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx875_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx875_53
.Lx875_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx875_54
.Lx875_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx875_54
.Lx875_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx875_54:              mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n464_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n459_var_ref_α
n458_call_builtin_prolog_β:
                                                                              jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n459_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n460_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_integer_α:     mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n461_call_builtin_prolog_α
.Lx878_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n461_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n464_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n462_cut_α
n461_call_builtin_prolog_β:
                                                                              jmp   n464_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n462_cut_α:                                                                   jmp   n463_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n463_move_label_α:      lea              rax, [rip + n464_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n464_call_builtin_prolog_α:
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n465_var_ref_α
n464_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n465_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n466_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n466_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8144]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n467_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n467_call_builtin_prolog_α:
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
.Lx888_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx888_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx888_41
                        cmp              esi, 1;                              jne   .Lx888_55
                        mov              r8, rax;                             jmp   .Lx888_40
.Lx888_55:              cmp              esi, 2;                              jne   .Lx888_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx888_41
                        mov              r8, rax;                             jmp   .Lx888_40
.Lx888_56:              cmp              al, 72;                              jne   .Lx888_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx888_41
                        cmp              rax, r8;                             je    .Lx888_41
                        mov              r8, rax;                             jmp   .Lx888_40
.Lx888_41:              lea              r9, [rsp + 352]
.Lx888_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx888_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx888_43
                        cmp              esi, 1;                              jne   .Lx888_57
                        mov              r9, rax;                             jmp   .Lx888_42
.Lx888_57:              cmp              esi, 2;                              jne   .Lx888_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx888_43
                        mov              r9, rax;                             jmp   .Lx888_42
.Lx888_58:              cmp              al, 72;                              jne   .Lx888_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx888_43
                        cmp              rax, r9;                             je    .Lx888_43
                        mov              r9, rax;                             jmp   .Lx888_42
.Lx888_43:              cmp              r8, r9;                              je    .Lx888_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx888_44
                        cmp              al, 104;                             je    .Lx888_44
                        cmp              al, 72;                              jne   .Lx888_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx888_44
                                                                              jmp   .Lx888_45
.Lx888_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx888_53
                        cmp              al, 104;                             je    .Lx888_53
                        cmp              al, 72;                              jne   .Lx888_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx888_53
                                                                              jmp   .Lx888_46
.Lx888_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx888_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx888_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx888_51
.Lx888_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx888_47
                        cmp              al, 104;                             je    .Lx888_47
                        cmp              al, 72;                              jne   .Lx888_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx888_47
                                                                              jmp   .Lx888_48
.Lx888_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx888_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx888_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx888_51
.Lx888_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx888_49
                        cmp              dl, 80;                              je    .Lx888_53
                                                                              jmp   .Lx888_52
.Lx888_49:              cmp              dl, 80;                              je    .Lx888_52
                        cmp              cl, 5;                               je    .Lx888_53
                        cmp              dl, 5;                               je    .Lx888_53
                        cmp              cl, 3;                               jne   .Lx888_50
                        cmp              dl, 3;                               jne   .Lx888_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx888_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx888_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx888_51
                                                                              jmp   .Lx888_52
.Lx888_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx888_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx888_53
.Lx888_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx888_54
.Lx888_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx888_54
.Lx888_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx888_54:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n468_var_ref_α
n467_call_builtin_prolog_β:
                                                                              jmp   n476_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n468_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n469_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n469_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 8128]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n470_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n470_call_builtin_prolog_α:
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
.Lx893_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx893_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx893_41
                        cmp              esi, 1;                              jne   .Lx893_55
                        mov              r8, rax;                             jmp   .Lx893_40
.Lx893_55:              cmp              esi, 2;                              jne   .Lx893_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx893_41
                        mov              r8, rax;                             jmp   .Lx893_40
.Lx893_56:              cmp              al, 72;                              jne   .Lx893_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx893_41
                        cmp              rax, r8;                             je    .Lx893_41
                        mov              r8, rax;                             jmp   .Lx893_40
.Lx893_41:              lea              r9, [rsp + 272]
.Lx893_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx893_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx893_43
                        cmp              esi, 1;                              jne   .Lx893_57
                        mov              r9, rax;                             jmp   .Lx893_42
.Lx893_57:              cmp              esi, 2;                              jne   .Lx893_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx893_43
                        mov              r9, rax;                             jmp   .Lx893_42
.Lx893_58:              cmp              al, 72;                              jne   .Lx893_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx893_43
                        cmp              rax, r9;                             je    .Lx893_43
                        mov              r9, rax;                             jmp   .Lx893_42
.Lx893_43:              cmp              r8, r9;                              je    .Lx893_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx893_44
                        cmp              al, 104;                             je    .Lx893_44
                        cmp              al, 72;                              jne   .Lx893_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx893_44
                                                                              jmp   .Lx893_45
.Lx893_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx893_53
                        cmp              al, 104;                             je    .Lx893_53
                        cmp              al, 72;                              jne   .Lx893_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx893_53
                                                                              jmp   .Lx893_46
.Lx893_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx893_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx893_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx893_51
.Lx893_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx893_47
                        cmp              al, 104;                             je    .Lx893_47
                        cmp              al, 72;                              jne   .Lx893_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx893_47
                                                                              jmp   .Lx893_48
.Lx893_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx893_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx893_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx893_51
.Lx893_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx893_49
                        cmp              dl, 80;                              je    .Lx893_53
                                                                              jmp   .Lx893_52
.Lx893_49:              cmp              dl, 80;                              je    .Lx893_52
                        cmp              cl, 5;                               je    .Lx893_53
                        cmp              dl, 5;                               je    .Lx893_53
                        cmp              cl, 3;                               jne   .Lx893_50
                        cmp              dl, 3;                               jne   .Lx893_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx893_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx893_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx893_51
                                                                              jmp   .Lx893_52
.Lx893_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx893_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx893_53
.Lx893_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx893_54
.Lx893_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx893_54
.Lx893_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx893_54:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n471_var_ref_α
n470_call_builtin_prolog_β:
                                                                              jmp   n476_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n471_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n472_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_integer_α:     mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx896_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n473_call_builtin_prolog_α
.Lx896_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n473_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n474_move_label_α
n473_call_builtin_prolog_β:
                                                                              jmp   n476_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n474_move_label_α:      lea              rax, [rip + n476_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n475_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    d$2F3_ω
                                                                              jmp   rax
n475_disjunction_β:                                                           jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n476_call_builtin_prolog_α:
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
n476_call_builtin_prolog_β:
                                                                              jmp   d$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_β:
                                                                              jmp   n475_disjunction_α
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
                        lea              rcx, [rip + .Lx903_2]
                        lea              rdx, [rip + .Lx903_3];               jmp   FN__d$2F3
.Lx903_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx903_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__top$2F0:
                        sub              rsp, 240
                        mov              qword ptr [rsp + 216], rcx
                        mov              qword ptr [rsp + 224], rdx
                        mov              qword ptr [rsp + 232], rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 208
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
top$2F0_α_body:
                        lea              rax, [rip + n908_suspend_β]
                        mov              qword ptr [rsp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n904_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx910_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx910_101
.Lx910_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx910_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx910_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx910_101
.Lx910_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx910_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    top$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n905_call_proc_staged_α
n904_call_builtin_prolog_β:
                                                                              jmp   top$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n905_call_proc_staged_α:
                        call             ops8$2F0_dcα;                        jmp   .Lx912_2
.Lx912_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx912_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
.Lx912_29:              mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n909_call_builtin_prolog_α
                                                                              jmp   n906_call_proc_staged_α
n905_call_proc_staged_β:
                                                                              jmp   n909_call_builtin_prolog_α
.Lx912_0:               .quad            .Lx912_0_s
.Lx912_0_s:             .string          "ops8/0"
#-----------------------------------------------------------------------------------------------------------------------
n906_call_proc_staged_α:
                        call             log10$2F0_dcα;                       jmp   .Lx914_2
.Lx914_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx914_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx914_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n905_call_proc_staged_β
                                                                              jmp   n907_call_proc_staged_α
n906_call_proc_staged_β:
                                                                              jmp   n905_call_proc_staged_β
.Lx914_0:               .quad            .Lx914_0_s
.Lx914_0_s:             .string          "log10/0"
#-----------------------------------------------------------------------------------------------------------------------
n907_call_proc_staged_α:
                        call             divide10$2F0_dcα;                    jmp   .Lx916_2
.Lx916_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx916_29
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
.Lx916_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n906_call_proc_staged_β
                                                                              jmp   n908_suspend_α
n907_call_proc_staged_β:
                                                                              jmp   n906_call_proc_staged_β
.Lx916_0:               .quad            .Lx916_0_s
.Lx916_0_s:             .string          "divide10/0"
#-----------------------------------------------------------------------------------------------------------------------
n908_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx918_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Lx918_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n908_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n908_suspend_β]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   top$2F0_γ
n908_suspend_β:                                                               jmp   n907_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n909_call_builtin_prolog_α:
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
n909_call_builtin_prolog_β:
                                                                              jmp   top$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_β:
                                                                              jmp   n908_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx919_50
                        mov              qword ptr [rsp + 176], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Lx919_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 216]
                        add              rsp, 240;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_ω:
                        mov              rcx, qword ptr [rsp + 224]
                        add              rsp, 240;                            jmp   rcx
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
n920_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx931_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx931_101
.Lx931_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx931_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx931_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx931_101
.Lx931_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx931_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n921_call_proc_staged_α
n920_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n921_call_proc_staged_α:
                        mov              qword ptr [rsp + 256], 0
                        lea              rax, [rip + .Lx933_7]
                        push             rax
                        mov              edi, 4
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx933_1
                        lea              rcx, [rip + .Lx933_3]
                        lea              rdx, [rip + .Lx933_4];               jmp   rax
.Lx933_3:               mov              qword ptr [rsp + 264], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lx933_5
                        mov              qword ptr [rsp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx933_2
.Lx933_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx933_2
.Lx933_4:               mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lx933_6
                        mov              qword ptr [rsp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx933_2
.Lx933_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx933_2
.Lx933_1:               call             rt_faildescr@PLT
.Lx933_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx933_29
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
.Lx933_29:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n924_lit_string_α
                                                                              jmp   n922_lit_string_α
n921_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 256], 0
                        lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n924_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              ecx, 16
                        mov              r8d, 176
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 4
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n924_lit_string_α
                        lea              r11, [rip + .Lx933_7]
                        push             r11
                        lea              rcx, [rip + .Lx933_3]
                        lea              rdx, [rip + .Lx933_4];               jmp   rax
.Lx933_7:               add              rsp, 8
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n924_lit_string_α
                                                                              jmp   n922_lit_string_α
.Lx933_0:               .quad            .Lx933_0_s
.Lx933_0_s:             .string          "top/0"
#-----------------------------------------------------------------------------------------------------------------------
n922_lit_string_α:      mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 2
                        mov              rax, qword ptr [rip + .Lx934_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n923_call_builtin_prolog_α
.Lx934_0:               .quad            .Lx934_0_s
.Lx934_0_s:             .string          "ok"
#-----------------------------------------------------------------------------------------------------------------------
n923_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn936:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn936]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n930_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n926_lit_string_α
n923_call_builtin_prolog_β:
                                                                              jmp   n930_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n924_lit_string_α:      mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 6
                        mov              rax, qword ptr [rip + .Lx937_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n925_call_builtin_prolog_α
.Lx937_0:               .quad            .Lx937_0_s
.Lx937_0_s:             .string          "failed"
#-----------------------------------------------------------------------------------------------------------------------
n925_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn939:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn939]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n930_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n926_lit_string_α
n925_call_builtin_prolog_β:
                                                                              jmp   n930_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n926_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx940_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n927_call_builtin_prolog_α
.Lx940_0:               .quad            .Lx940_0_s
.Lx940_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n927_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn942:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn942]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n930_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n928_move_label_α
n927_call_builtin_prolog_β:
                                                                              jmp   n930_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n928_move_label_α:      lea              rax, [rip + n930_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n929_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n929_disjunction_β:                                                           jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n930_call_builtin_prolog_α:
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
n930_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n929_disjunction_α
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
.Lstartup_pname0:       .string          "divide10/0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__divide10$2F0
                        .quad            divide10$2F0_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1248
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "log10/0"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
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
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "ops8/0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
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
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "d/3"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
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
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "top/0"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__top$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            192
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
